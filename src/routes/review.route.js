import express from "express";
import { protectRoute } from "../middlewares/auth.middleware.js";
import {
  getReviews,
  updateReview,
  deleteReview,
  addOrUpdateReview,
} from "../controllers/review.controller.js";

const router = express.Router();

router.get("/:productId", protectRoute, getReviews); // public
router.post("/", protectRoute, addOrUpdateReview);
router.put("/:id", protectRoute, updateReview);
router.delete("/:id", protectRoute, deleteReview);

export default router;
