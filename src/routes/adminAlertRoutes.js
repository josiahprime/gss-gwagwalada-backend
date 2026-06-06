import express from "express";
import { getAllAdminAlerts } from "../controllers/adminAlertController.js";
import { protectRoute } from '../middlewares/auth.middleware.js';
import { isAdmin } from '../middlewares/roles.middleware.js';

const router = express.Router();

// GET /api/admin-alerts
router.get("/", protectRoute, isAdmin, getAllAdminAlerts);

export default router;
