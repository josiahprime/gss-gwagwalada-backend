import { prisma } from "../lib/prisma.js";

// Get all reviews for a product
export const getReviews = async (req, res) => {
  const userId = req.user?.id;
  try {
    let { productId } = req.params;

    if (!productId) {
      return res.status(400).json({ error: "Product ID is required" });
    }

    // Ensure productId is a string
    productId = String(productId);

    // ✅ Fetch reviews with optional profilePic
    const reviews = await prisma.review.findMany({
      where: { productId },
      include: {
        user: {
          select: {
            id: true,
            username: true,
            profilePic: true, // optional — may be null
          },
        },
      },
      orderBy: { createdAt: "desc" },
    });

    // ✅ Map to frontend format (user.name & optional profilePic)
    const formattedReviews = reviews.map((review) => ({
      ...review,
      user: {
        id: userId,
        name: review.user.username,
        profilePic: review.user.profilePic || null,
      },
    }));

    res.json({ success: true, reviews: formattedReviews });
  } catch (err) {
    console.error("Failed to fetch reviews:", err);
    res.status(500).json({ error: "Failed to fetch reviews" });
  }
};


// Add or update a review
export const addOrUpdateReview = async (req, res) => {
  try {
    const userId = req.user?.id;
    let { productId, rating, text } = req.body;

    if (!productId || !rating) {
      return res.status(400).json({ error: "Product and rating are required" });
    }

    rating = Number(rating);
    if (rating < 1 || rating > 5) {
      return res.status(400).json({ error: "Rating must be between 1 and 5" });
    }

    text = text?.trim() || "";

    // Ensure product exists
    const product = await prisma.product.findUnique({ where: { id: productId } });
    if (!product) return res.status(404).json({ error: "Product not found" });

    // Check if review exists
    const existingReview = await prisma.review.findUnique({
      where: { userId_productId: { userId, productId } },
    });

    if (existingReview) {
      // Update existing review
      const updatedReview = await prisma.review.update({
        where: { id: existingReview.id },
        data: { rating, text },
      });

      // Update product stats
      const newRatingSum = product.ratingSum - existingReview.rating + rating;
      const weightedRating = calculateBayesianRating(product.ratingCount, newRatingSum);
      
      await prisma.product.update({
        where: { id: productId },
        data: { ratingSum: newRatingSum, rating: weightedRating },
      });

      return res.json({ success: true, review: updatedReview, message: "Review updated" });
    }

    // Create new review
    const review = await prisma.review.create({
      data: { userId, productId, rating, text },
    });

    const newRatingCount = product.ratingCount + 1;
    const newRatingSum = product.ratingSum + rating;
    const weightedRating = calculateBayesianRating(newRatingCount, newRatingSum);

    await prisma.product.update({
      where: { id: productId },
      data: { ratingCount: newRatingCount, ratingSum: newRatingSum, rating: weightedRating },
    });

    return res.status(201).json({ success: true, review });
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Failed to add/update review" });
  }
};



// Update a review
export const updateReview = async (req, res) => {
  try {
    const { id } = req.params;
    const { rating, text } = req.body;

    const existingReview = await prisma.review.findUnique({
      where: { id: String(id) },
    });

    if (!existingReview) {
      return res.status(404).json({ error: "Review not found" });
    }

    if (existingReview.userId !== req.user.id && req.user.role !== "ADMIN") {
      return res.status(403).json({ error: "Unauthorized" });
    }

    // Update review
    const updated = await prisma.review.update({
      where: { id: String(id) },
      data: { rating, text },
    });

    // Update product rating stats
    const product = await prisma.product.findUnique({
      where: { id: existingReview.productId },
    });

    const newRatingSum = product.ratingSum - existingReview.rating + Number(rating);
    const newRatingCount = product.ratingCount;

    const R = newRatingSum / newRatingCount;
    const v = newRatingCount;
    const m = 20;

    // global average
    const globalStats = await prisma.product.aggregate({
      _sum: { ratingSum: true, ratingCount: true }
    });

    const globalSum = globalStats._sum.ratingSum;
    const globalCount = globalStats._sum.ratingCount || 1;
    const C = globalSum / globalCount;

    const weighted = (v / (v + m)) * R + (m / (v + m)) * C;

    await prisma.product.update({
      where: { id: existingReview.productId },
      data: {
        ratingSum: newRatingSum,
        rating: weighted,
      },
    });

    res.json({ success: true, review: updated });
  } catch (err) {
    console.error("Failed to update review:", err);
    res.status(500).json({ error: "Failed to update review" });
  }
};


// Delete a review
export const deleteReview = async (req, res) => {
  try {
    const { id } = req.params;

    const review = await prisma.review.findUnique({
      where: { id: String(id) },
    });

    if (!review) {
      return res.status(404).json({ error: "Review not found" });
    }

    // Only owner or admin can delete
    if (review.userId !== req.user.id && req.user.role !== "ADMIN") {
      return res.status(403).json({ error: "Unauthorized" });
    }

    await prisma.review.delete({ where: { id: String(id) } });

    res.json({ success: true, message: "Review deleted successfully" });
  } catch (err) {
    console.error("Failed to delete review:", err);
    res.status(500).json({ error: "Failed to delete review" });
  }
};
