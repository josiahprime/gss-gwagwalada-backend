import { prisma } from "../lib/prisma.js";


export const getRecommendations = async (req, res) => {
  try {
    const userId = req.user?.id || req.cookies.anonId;

    // Fetch the last viewed product
    const lastView = await prisma.userView.findFirst({
      where: { userId },
      orderBy: { createdAt: "desc" },
      include: { product: true },
    });

    // Helper to include only relevant fields
    const productInclude = {
      images: true,
      discount: true,
    };

    // Fallback for anonymous users or no view history
    if (!lastView) {
        const fallback = await prisma.product.findMany({
            orderBy: [{ soldCount: 'desc' }, { createdAt: 'desc' }],
            take: 10,
            include: {
                images: true,
                discount: true,
            },
            where: { stock: { gt: 0 } },
        });

      return res.json(fallback);
    }

    const product = lastView.product;
    const results = [];

    // Deduplication & limit helper
    const addToResults = (items) => {
      for (const item of items) {
        if (results.length >= 10) break;
        if (!results.some(r => r.id === item.id)) {
          results.push(item);
        }
      }
    };

    // 1️⃣ Category-based
    if (product.category) {
      const categoryMatches = await prisma.product.findMany({
        where: { category: product.category, stock: { gt: 0 }, id: { not: product.id } },
        take: 10,
        include: productInclude,
      });
      addToResults(categoryMatches);
    }

    // 2️⃣ Tag-based
    if (results.length < 10 && product.tags.length > 0) {
      const tagMatches = await prisma.product.findMany({
        where: { tags: { hasSome: product.tags }, stock: { gt: 0 }, id: { not: product.id } },
        take: 10,
        include: productInclude,
      });
      addToResults(tagMatches);
    }

    // 3️⃣ Price similarity
    if (results.length < 10) {
      const priceMatches = await prisma.product.findMany({
        where: {
          priceInKobo: {
            gte: Math.floor(product.priceInKobo * 0.7),
            lte: Math.ceil(product.priceInKobo * 1.3),
          },
          stock: { gt: 0 },
          id: { not: product.id },
        },
        take: 10,
        include: productInclude,
      });
      addToResults(priceMatches);
    }

    // 4️⃣ Trending fallback
    if (results.length < 10) {
      const trending = await prisma.product.findMany({
        where: { stock: { gt: 0 }, id: { not: product.id } },
        orderBy: { soldCount: "desc" },
        take: 10,
        include: productInclude,
      });
      addToResults(trending);
    }

    return res.json(results.slice(0, 10));
  } catch (err) {
    console.error("Recommendations error:", err);
    return res.status(500).json({ error: "Failed to load recommendations." });
  }
};


// ====== Chill endpoints for later ======

// Trending products
export const getTrendingProducts = async (req, res) => {
  try {
    const products = await prisma.product.findMany({
      orderBy: { soldCount: "desc" },
      take: 10,
      include: {
        images: true, 
    },
    });
    res.json(products);
  } catch (err) {
    console.error("Trending products error:", err);
    res.status(500).json({ error: "Failed to load trending products." });
  }
};

// Products similar to a given product
export const getSimilarProducts = async (req, res) => {
  try {
    const { productId } = req.params;

    const product = await prisma.product.findUnique({ where: { id: productId } });
    if (!product) return res.status(404).json({ error: "Product not found" });

    const similar = await prisma.product.findMany({
      where: { category: product.category, id: { not: product.id } },
      take: 10,
      include: {
        images: true, 
    },
    });

    res.json(similar);
  } catch (err) {
    console.error("Similar products error:", err);
    res.status(500).json({ error: "Failed to load similar products." });
  }
};