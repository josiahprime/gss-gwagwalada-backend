import express from "express";
import { getMonthlyRevenue } from "../controllers/revenueController.js";
import { protectRoute } from "../middlewares/auth.middleware.js";
import { isAdmin } from "../middlewares/roles.middleware.js";

const router = express.Router();

// GET /api/revenue/monthly
router.get("/monthly", protectRoute, isAdmin, getMonthlyRevenue);

export default router;
