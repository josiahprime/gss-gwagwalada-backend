import express from "express";
import {
  getRecommendations,
  getTrendingProducts,
  getSimilarProducts,
} from "../controllers/recommendationController.js";

const router = express.Router();

// Main recommendation for a user
router.get("/", getRecommendations);

// Trending products
router.get("/trending", getTrendingProducts);

// Products similar to a given product
router.get("/similar/:productId", getSimilarProducts);

export default router;
