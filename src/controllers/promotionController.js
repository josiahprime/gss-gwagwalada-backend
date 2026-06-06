import { prisma } from "../lib/prisma.js";

// Get all promotions
export const getPromotions = async (req, res) => {
  try {
    const promotions = await prisma.promotion.findMany({
      include: { selectedProducts: true },
      orderBy: { createdAt: "desc" },
    });

    // Map to frontend-friendly type
    const promotionsToSend = promotions.map((promo) => ({
      id: promo.id,
      badgeText: promo.badgeText,
      headline: promo.headline,
      description: promo.description,
      theme: promo.theme,
      startDate: promo.startDate.toISOString(),
      endDate: promo.endDate.toISOString(),
      isActive: promo.isActive,
      bannerImage: promo.bannerImage,
      featureOnHomepage: promo.featureOnHomepage,
      autoDeactivateOnExpire: promo.autoDeactivateOnExpire,
      selectedProductIds: promo.selectedProducts.map(sp => sp.productId),
      createdAt: promo.createdAt.toISOString(),
      updatedAt: promo.updatedAt.toISOString(),
    }));

    // console.log('promotion to send: ',promotionsToSend)

    res.json(promotionsToSend);
  } catch (err) {
    console.error("Failed to fetch promotions:", err);
    res.status(500).json({ error: "Failed to fetch promotions" });
  }
};


// Get promotion by ID
export const getPromotionById = async (req, res) => {
  try {
    let { id } = req.params;
    if (!id) return res.status(400).json({ error: "Promotion ID is required" });

    id = String(id);

    const promotion = await prisma.promotion.findUnique({
      where: { id },
      include: { selectedProducts: true },
    });

    if (!promotion) return res.status(404).json({ error: "Promotion not found" });

    res.json({ success: true, promotion });
  } catch (err) {
    console.error("Failed to fetch promotion:", err);
    res.status(500).json({ error: "Failed to fetch promotion" });
  }
};

// Create a new promotion
export const createPromotion = async (req, res) => {
    console.log('we reached create promotion')
  try {
    const {
      badgeText,
      headline,
      description,
      theme,
      startDate,
      endDate,
      isActive = false,
      bannerImage,
      featureOnHomepage = false,
      autoDeactivateOnExpire = false,
      selectedProductIds = [],
    } = req.body;

    // Required fields check
    if (!badgeText || !headline || !description || !theme || !startDate || !endDate) {
      return res.status(400).json({ error: "Missing required fields" });
    }

    // Ensure startDate < endDate
    if (new Date(startDate) >= new Date(endDate)) {
      return res.status(400).json({ error: "startDate must be before endDate" });
    }

    const promotion = await prisma.promotion.create({
        data: {
            badgeText,
            headline,
            description,
            theme,
            startDate: new Date(startDate),
            endDate: new Date(endDate),
            isActive,
            bannerImage,
            featureOnHomepage,
            autoDeactivateOnExpire,
            selectedProducts: {
            create: selectedProductIds.map((productId) => ({ productId })),
            },
        },
        include: { selectedProducts: true },
        });

        console.log('promotion after creation: ',promotion)


    res.status(201).json({ success: true, promotion });
  } catch (err) {
    console.error("Failed to create promotion:", err);
    res.status(500).json({ error: "Failed to create promotion" });
  }
};

// Update promotion
export const updatePromotion = async (req, res) => {
  try {
    let { id } = req.params;
    id = String(id);

    const {
      badgeText,
      headline,
      description,
      theme,
      startDate,
      endDate,
      isActive,
      bannerImage,
      featureOnHomepage,
      autoDeactivateOnExpire,
      selectedProductIds,
    } = req.body;

    const promotionExists = await prisma.promotion.findUnique({ where: { id } });
    if (!promotionExists) return res.status(404).json({ error: "Promotion not found" });

    // Ensure startDate < endDate if both provided
    if (startDate && endDate && new Date(startDate) >= new Date(endDate)) {
      return res.status(400).json({ error: "startDate must be before endDate" });
    }

    const promotion = await prisma.promotion.update({
      where: { id },
      data: {
        badgeText,
        headline,
        description,
        theme,
        startDate: startDate ? new Date(startDate) : undefined,
        endDate: endDate ? new Date(endDate) : undefined,
        isActive,
        bannerImage,
        featureOnHomepage,
        autoDeactivateOnExpire,
        selectedProducts: selectedProductIds
          ? { set: selectedProductIds.map((pid) => ({ id: pid })) }
          : undefined,
      },
      include: { selectedProducts: true },
    });

    res.json({ success: true, promotion });
  } catch (err) {
    console.error("Failed to update promotion:", err);
    res.status(500).json({ error: "Failed to update promotion" });
  }
};

// Delete promotion
export const deletePromotion = async (req, res) => {
  try {
    let { id } = req.params;
    if (!id) return res.status(400).json({ error: "Promotion ID is required" });

    id = String(id);

    await prisma.promotion.delete({ where: { id } });
    res.json({ success: true, message: "Promotion deleted successfully" });
  } catch (err) {
    console.error("Failed to delete promotion:", err);
    res.status(500).json({ error: "Failed to delete promotion" });
  }
};
