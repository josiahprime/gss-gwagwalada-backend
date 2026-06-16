import { prisma } from "../lib/prisma.js";
import NodeCache from 'node-cache';
import { v2 as cloudinary } from 'cloudinary';
import streamifier from 'streamifier';
import sharp from 'sharp';

const cache = new NodeCache({ stdTTL: 3600 }); // 1 hour


const invalidateProductCache = () => {
  const keys = cache.keys();
  keys.forEach(key => {
    if (key.startsWith('products:')) cache.del(key);
  });
};



export const createProduct = async (req, res) => {
  try {
    const {
      productName,
      description,
      category,
      subCategory,
      priceInKobo,
      stock,
      rating = 0.0,
      unitType,
      isVariableWeight,
      displayLabel,
      minOrderQuantity,
      tags,
      discountId,      // 🆕 only this now
    } = req.body;

    // console.log(req.body)

    const createdById = req.user.id;

    // 🔍 Validate product name
    const existing = await prisma.product.findFirst({ where: { productName } });
    if (existing) {
      return res.status(400).json({ message: "Product already exists." });
    }

    // 🧩 Parse and normalize values
    const parsedTags = typeof tags === "string" ? JSON.parse(tags) : [];
    const parsedStock = parseInt(stock, 10);
    const parsedPrice = parseInt(priceInKobo, 10);
    const parsedRating = parseFloat(rating);
    const parsedIsVariableWeight = isVariableWeight === "true" || isVariableWeight === true;
    const parsedMinOrderQuantity = parsedIsVariableWeight
      ? parseFloat(minOrderQuantity) || 0.5
      : null;

    // 🖼 Upload images to Cloudinary
    const imageEntries = [];
    for (const [i, file] of req.files.entries()) {
      const compressed = await sharp(file.buffer)
        .resize({ width: 800 })
        .webp({ quality: 80 })
        .toBuffer();

      const uploadResult = await new Promise((resolve, reject) => {
        const stream = cloudinary.uploader.upload_stream(
          { folder: "products", format: "webp" },
          (err, result) => (err ? reject(err) : resolve(result))
        );
        streamifier.createReadStream(compressed).pipe(stream);
      });

      imageEntries.push({
        url: uploadResult.secure_url,
        index: i,
        publicId: uploadResult.public_id,
      });
    }

    // ✅ Create Product
    const newProduct = await prisma.product.create({
      data: {
        productName,
        description,
        category,
        subCategory,
        displayLabel,
        priceInKobo: parsedPrice,
        stock: parsedStock,
        rating: parsedRating,
        unitType: unitType?.toLowerCase() || "piece",
        isVariableWeight: parsedIsVariableWeight,
        minOrderQuantity: parsedMinOrderQuantity,
        tags: parsedTags,
        createdBy: { connect: { id: createdById } },
        images: { create: imageEntries },
        ...(discountId ? { discount: { connect: { id: discountId } } } : {}),
      },
      include: {
        images: true,
        discount: true,
      },
    });

    // ✅ Invalidate only product-related caches
    invalidateProductCache();

    // Clean response
    const minimalImages = newProduct.images.map((img) => ({
      id: img.id,
      url: img.url,
      index: img.index,
    }));

    res.status(201).json({
      success: true,
      message: "Product created successfully.",
      product: {
        ...newProduct,
        images: minimalImages,
      },
    });
  } catch (error) {
    console.error("❌ Error creating product:", error);
    res.status(500).json({ message: "Server error" });
  }
};

/// ✅ Update Product
export const updateProduct = async (req, res) => {
  const id = req.body.id;
  const {
    productName,
    priceInKobo, // ✅ renamed for consistency
    stock,
    category,
    tags,
    description,
    newImageIndexes,
    displayLabel,
    unitType,
    isVariableWeight,
    minOrderQuantity,
    discountId, // ✅ added
    deletedImageIds: _deletedImageIds,
  } = req.body;

  // console.log(req.body)

  const deletedImageIds = _deletedImageIds
  ? Array.isArray(_deletedImageIds)
    ? _deletedImageIds
    : [_deletedImageIds]
  : [];

  // console.log(req.body)

  const ALLOWED_UNIT_TYPES = ["piece", "kg", "litre", "pack", "dozen", "crate"];
  const normalizedUnitType = unitType?.toLowerCase();

  if (unitType && !ALLOWED_UNIT_TYPES.includes(normalizedUnitType)) {
    return res.status(400).json({ message: "Invalid unit type" });
  }

  try {
    const product = await prisma.product.findUnique({
      where: { id },
      include: { images: true },
    });

    if (!product) return res.status(404).json({ message: "Product not found" });

    // 🧮 Parse image indexes
    const parsedIndexes = Array.isArray(newImageIndexes)
      ? newImageIndexes.map((i) => parseInt(i, 10))
      : newImageIndexes
      ? [parseInt(newImageIndexes, 10)]
      : [];

    const parsedIsVariableWeight =
      isVariableWeight === "true" || isVariableWeight === true;

    const parsedMinOrderQuantity = parsedIsVariableWeight
      ? parseFloat(minOrderQuantity) || 0.5
      : null;

    const newImageEntries = [];

    // 🖼️ Handle new uploaded images
    if (req.files && req.files.length > 0) {
      for (let i = 0; i < req.files.length; i++) {
        const file = req.files[i];
        const index = parsedIndexes[i] ?? i;

        const compressedImage = await sharp(file.buffer)
          .resize({ width: 800 })
          .webp({ quality: 80 })
          .toBuffer();

        const result = await new Promise((resolve, reject) => {
          const stream = cloudinary.uploader.upload_stream(
            { folder: "products", format: "webp" },
            (err, result) => (err ? reject(err) : resolve(result))
          );
          streamifier.createReadStream(compressedImage).pipe(stream);
        });

        newImageEntries.push({
          url: result.secure_url,
          publicId: result.public_id,
          index,
        });
      }
    }

    // 🔄 Replace or create new image entries
    for (const newImg of newImageEntries) {
      const existing = product.images.find((img) => img.index === newImg.index);
      if (existing) {
        // 🗑️ Delete old Cloudinary image
        if (existing.publicId) {
          try {
            await cloudinary.uploader.destroy(existing.publicId);
          } catch (cloudErr) {
            console.warn("Cloudinary deletion failed:", cloudErr);
          }
        }

        // 🔁 Update existing image
        await prisma.productImage.update({
          where: { id: existing.id },
          data: {
            url: newImg.url,
            publicId: newImg.publicId,
          },
        });
      } else {
        // ➕ Add a new image
        await prisma.productImage.create({
          data: {
            productId: product.id,
            url: newImg.url,
            index: newImg.index,
            publicId: newImg.publicId,
          },
        });
      }
    }

    // 🏷️ Parse tags
    let parsedTags = tags;
    if (typeof tags === "string" && tags.startsWith("[")) {
      parsedTags = JSON.parse(tags);
    }

    // ✅ Handle discount logic
    // If discountId is provided → connect it
    // If discountId is an empty string → disconnect
    // If undefined → leave it as-is
    let discountAction = {};
    if (discountId) {
      discountAction = { discount: { connect: { id: discountId } } };
    } else if (discountId === "") {
      discountAction = { discount: { disconnect: true } };
    }

    if (deletedImageIds.length > 0) {
      for (const imgId of deletedImageIds) {
        const img = await prisma.productImage.findUnique({ where: { id: imgId } });
        if (!img) continue;

        // Delete from Cloudinary if it has a publicId
        if (img.publicId) {
          try {
            await cloudinary.uploader.destroy(img.publicId);
          } catch (err) {
            console.warn("Failed to delete image from Cloudinary:", err);
          }
        }

        // Delete from database
        await prisma.productImage.delete({ where: { id: imgId } });
      }
    }


    // 🧩 Update product details
    const updatedProduct = await prisma.product.update({
      where: { id },
      data: {
        productName,
        description,
        category,
        displayLabel,
        unitType: normalizedUnitType || "piece",
        isVariableWeight: parsedIsVariableWeight,
        minOrderQuantity: parsedMinOrderQuantity,
        stock: stock ? parseInt(stock, 10) : undefined,
        priceInKobo: priceInKobo ? parseInt(priceInKobo, 10) : undefined,
        tags: parsedTags,
        ...discountAction, // ✅ dynamic discount update
      },
      include: { images: true, discount: true },
    });

    // ✅ Invalidate only product-related caches
    invalidateProductCache();

    // ✂️ Simplify images
    const minimalImages = updatedProduct.images
      .map((img) => ({
        id: img.id,
        url: img.url,
        index: img.index,
      }))
      .sort((a, b) => a.index - b.index);

    res.status(200).json({
      ...updatedProduct,
      images: minimalImages,
    });
  } catch (error) {
    console.error("Update error:", error);
    res.status(500).json({ message: "Server error" });
  }
};





// DELETE PRODUCT
export const deleteProduct = async (req, res) => {
  console.log('delete route triggered');
  const { id } = req.params;

  if (!id) {
    return res.status(400).json({ message: "Product ID is required" });
  }

  try {
    const existing = await prisma.product.findFirst({ where: { id } });
    if (!existing) return res.status(400).json({ message: 'Item not found' });

    // Delete associated Cloudinary images
    if (existing.images && Array.isArray(existing.images)) {
      for (const image of existing.images) {
        if (image.public_id) {
          try {
            await cloudinary.uploader.destroy(image.public_id);
            console.log(`Deleted Cloudinary image: ${image.public_id}`);
          } catch (cloudErr) {
            console.warn(`Failed to delete image ${image.public_id}:`, cloudErr);
          }
        }
      }
    }

    // Delete product from DB
    await prisma.product.delete({ where: { id } });

    // ✅ Invalidate only product-related caches
    invalidateProductCache();
    console.log('Product cache cleared');

    res.status(200).json({ message: 'Product deleted successfully' });
  } catch (error) {
    console.error('Error deleting product', error);
    res.status(500).json({ message: 'Server error' });
  }
};



export const getAllProducts = async (req, res) => {
  try {
    const {
      category,
      userId,
      minPrice,
      maxPrice,
      limit,
      cursor
    } = req.query;

    

    // 🧠 Backend-enforced limits
    const DEFAULT_LIMIT = 16;
    const MAX_LIMIT = 50;

    const take = Math.min(
      Math.max(Number(limit) || DEFAULT_LIMIT, 1),
      MAX_LIMIT
    );

    // ✅ Cache key includes limit
    const cacheKey = `products:${userId || 'guest'}:${category || 'all'}:${minPrice || '0'}:${maxPrice || '∞'}:${cursor || 'start'}:${take}`;
    const cachedProducts = cache.get(cacheKey);
    if (cachedProducts) {
      return res.json(cachedProducts);
    }




    // Build filters dynamically
    const filters = {};
    if (category) filters.category = category;

    if (minPrice || maxPrice) {
      filters.priceInKobo = {};
      if (minPrice) filters.priceInKobo.gte = Number(minPrice);
      if (maxPrice) filters.priceInKobo.lte = Number(maxPrice);
    }

    filters.visibility = "VISIBLE";

    // Add a log in your backend to verify what it sees
    console.log("Backend Limit received:", req.query.limit, "Calculated Take:", take);



    const products = await prisma.product.findMany({
      where: filters,
      take,
      // orderBy: { createdAt: "desc" },
      // cursor: cursor ? { id: cursor } : undefined,
      orderBy: [{ createdAt: "desc" }, { id: "desc" }],
      cursor: cursor ? { id: cursor } : undefined,
      skip: cursor ? 1 : 0,
      select: {
        id: true,
        productName: true,
        description: true,
        priceInKobo: true,
        discount: true,
        displayLabel: true,
        stock: true,
        unitType: true,
        isVariableWeight: true,
        minOrderQuantity: true,
        category: true,
        tags: true,
        images: { select: { id: true, url: true, index: true } },
      },
    });





    if (!products.length) {
      return res.status(200).json({
        products: [],
        message: "No products found for this filter"
      });
    }

    const nextCursor =
      products.length === take
        ? products[products.length - 1].id
        : null;

    if (!cursor) {
      cache.set(cacheKey, { products, nextCursor });
    }




    res.status(200).json({
      products,
      nextCursor
    });

  } catch (err) {
    console.error("Error fetching products:", err);
    res.status(500).json({ error: "Failed to fetch products" });
  }
};

export const searchProducts = async (req, res) => {
  try {
    const { q, limit } = req.query;

    if (!q || typeof q !== "string") {
      return res.status(400).json({ products: [] });
    }

    const take = Math.min(Number(limit) || 10, 20);

    const products = await prisma.product.findMany({
      where: {
        OR: [
          { productName: { contains: q, mode: "insensitive" } },
          { tags: { has: q } }
        ]
      },
      take,
      orderBy: { createdAt: "desc" },
      select: {
        id: true,
        productName: true,
        description: true,
        priceInKobo: true,
        discount: true,
        displayLabel: true,
        stock: true,
        unitType: true,
        isVariableWeight: true,
        minOrderQuantity: true,
        category: true,
        tags: true,
        images: { select: { id: true, url: true, index: true } },
      },
    });

    res.json({ products });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Search failed" });
  }
};





export const getUserFavorites = async (req, res) => {
  try {
    const { userId } = req.params;
    const favorites = await prisma.favorite.findMany({
      where: { userId },
      select: { productId: true },
    });

    // Return an array of product IDs
    const favoriteIds = favorites.map(f => f.productId);
    // console.log(favoriteIds)

    res.status(200).json({ favoriteIds });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Failed to fetch favorites' });
  }
};




// GET SINGLE PRODUCT
export const getProduct = async (req, res) => {
  try {
    const { id } = req.params;
    const { userId } = req.query;

    // console.log('id and userId from get product',id, userId)

    // Validate ID
    if (!id) {
      return res.status(400).json({ error: "Invalid product ID" });
    }

    const cacheKey = `product:${id}:${userId || 'guest'}`;
    const cachedProduct = cache.get(cacheKey);
    if (cachedProduct) return res.json({ product: cachedProduct });

    // Fetch product with relations
    const product = await prisma.product.findUnique({
      where: { id },
      select: {
        id: true,
        productName: true,
        description: true,
        priceInKobo: true,
        discount: true,
        displayLabel: true,
        stock: true,
        unitType: true,
        isVariableWeight: true,
        minOrderQuantity: true,
        category: true,
        tags: true,
        images: { select: { id: true, url: true, index: true } },
        favorites: userId
          ? { where: { userId }, select: { id: true } }
          : false,
      },
    });

    if (!product) {
      return res.status(404).json({ error: "Product not found" });
    }

    // Add isFavorite field
    const enrichedProduct = {
      ...product,
      isFavorite: product.favorites && product.favorites.length > 0,
    };

    cache.set(cacheKey, enrichedProduct);

    res.status(200).json({ product: enrichedProduct });
  } catch (error) {
    console.error("Error fetching product:", error);
    res.status(500).json({ error: "Failed to fetch product" });
  }
};


export const fetchFavorites = async (req, res) => {
  try {
    const { userId } = req.params;

    const favorites = await prisma.favorite.findMany({
      where: { userId },
      include: {
        product: {
          include: {
            images: true, // ✅ include product images
          },
        },
      },
      orderBy: { createdAt: 'desc' },
    });

    res.json(favorites.map((fav) => fav.product));
  } catch (err) {
    console.error("Error fetching favorites:", err);
    res.status(500).json({ error: "Failed to fetch favorites" });
  }
};



export const toggleFavorites = async (req, res) => {
  try {
    const { userId, productId } = req.body;


    const existing = await prisma.favorite.findUnique({
      where: { user_product_unique: { userId, productId } },
      include: {
        product: {
          include: { images: true }, // ✅ include images here too
        },
      },
    });

    if (existing) {
      await prisma.favorite.delete({
        where: { user_product_unique: { userId, productId } },
      });
      console.log('favorite removed for', existing)

      return res.json({
        status: "removed",
        product: { ...existing.product, isFavorite: false },
      });
    } else {
      const favorite = await prisma.favorite.create({
        data: { userId, productId },
        include: {
          product: {
            include: { images: true }, // ✅ include images here too
          },
        },
      });

      // console.log('favorite', favorite)

      return res.json({
        status: "added",
        product: { ...favorite.product, isFavorite: true },
      });
    }
  } catch (err) {
    console.error("Error toggling favorite:", err);
    res.status(500).json({ error: "Failed to toggle favorite" });
  }
};



// GET /api/daily-deals
export const fetchDailyDeals = async (req, res) => {
  console.log("Fetching daily deals...");

  try {
    const now = new Date();
    const tomorrow = new Date(now.getTime() + 24 * 60 * 60 * 1000); // +24h

    // Fetch products with active discounts expiring within 24 hours
    const products = await prisma.product.findMany({
      where: {
        visibility: 'VISIBLE',
        discount: {
          is: {
            startDate: { lte: now },
            endDate: { gte: now, lte: tomorrow },
            isActive: true,
          },
        },
      },
      include: {
        discount: true,
        images: {
          select: { url: true },
        },
        // removed favorites
      },
      orderBy: {
        discount: {
          endDate: "asc",
        },
      },
      take: 10,
    });

    console.log(`Daily deals fetched: ${products.length}`);

    // Transform data for frontend
    const deals = products.map((p) => ({
      id: p.id,
      productName: p.productName,
      description: p.description,
      priceInKobo: p.priceInKobo,
      unitType: p.unitType,
      discount: {
        value: p.discount.value,
        type: p.discount.type,
        label: p.discount.label,
        startDate: p.discount.startDate,
        endDate: p.discount.endDate,
      },
      images: p.images.map((img) => ({ url: img.url })),
      // no isFavorite
    }));

    res.status(200).json({ dailyDeals: deals });
  } catch (err) {
    console.error("❌ Error fetching daily deals:", err);
    res.status(500).json({ error: "Internal server error" });
  }
};


// GET /api/holiday-deals
export const fetchHolidayDeals = async (req, res) => {
  console.log("Fetching holiday deals...");
  const userId = req.user?.id;

  try {
    const now = new Date();
    const endOfYear = new Date(now.getFullYear(), 11, 31, 23, 59, 59); // Dec 31st

    // Fetch products with active HOLIDAY_SALE discount until Dec 31
    const includeFavorites = userId
    ? { favorites: { where: { userId }, select: { id: true } } }
    : {};

    const products = await prisma.product.findMany({
      where: {
        discount: {
          is: {
            startDate: { lte: now },
            endDate: { gte: now, lte: endOfYear },
            isActive: true,
            label: "HOLIDAY_SALE_2025", // Or match the label used in your script
          },
        },
      },
      include: {
        discount: true,
        images: {
          select: { url: true },
        },
        ...includeFavorites,
      },
      orderBy: {
        discount: {
          endDate: "asc",
        },
      },
      take: 10, // optional, limit to 10
    });

    console.log(`Holiday deals fetched: ${products.length}`);

    // Transform to frontend-friendly format
    const deals = products.map((p) => ({
      id: p.id,
      productName: p.productName,
      description: p.description,
      priceInKobo: p.priceInKobo,
      unitType: p.unitType,
      isFavorite: p.favorites?.length > 0 ? true : false,
      discount: {
        value: p.discount.value,
        type: p.discount.type,
        label: p.discount.label,
        startDate: p.discount.startDate,
        endDate: p.discount.endDate,
      },
      images: p.images.map((img) => ({ url: img.url })),
    }));

    res.status(200).json({ HolidayDeals: deals });
  } catch (err) {
    console.error("❌ Error fetching holiday deals:", err);
    res.status(500).json({ success: false, error: "Internal server error" });
  }
};



export const popularProducts = async (req, res) => {
  console.log('🔍 Fetching popular products...');
  const userId = req.user?.id;
  try {
    const includeFavorites = userId
    ? { favorites: { where: { userId }, select: { id: true } } }
    : {};

    const products = await prisma.product.findMany({
      where: {
        visibility: 'VISIBLE',
        isPopular: true
      },
      take: 10,
      orderBy: {
        popularAt: 'desc',
      },
      include: {
        images: true, // ✅ include product images directly
        ...includeFavorites,
      },
    });

    

    // console.log('✅ Popular products:', products);
    const popularProductsResponse = products.map(p => ({
      ...p,
      isFavorite: p.favorites && p.favorites.length > 0,
    }));

    return res.status(200).json({ popularProducts: popularProductsResponse });
  } catch (error) {
    console.error("❌ Error fetching popular products:", error);
    return res.status(500).json({ message: "Server error" });
  }
};


