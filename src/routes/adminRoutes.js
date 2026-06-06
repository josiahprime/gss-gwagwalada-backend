import express from 'express';
import { getAdminStats } from '../controllers/adminController.js';
import { getFeaturedStats } from '../controllers/featured.controller.js';
import { protectRoute } from '../middlewares/auth.middleware.js';
import { isAdmin } from '../middlewares/roles.middleware.js';

const router = express.Router();

router.get('/stats', protectRoute, isAdmin, getAdminStats);

router.get('/stats/featured-stats', protectRoute, isAdmin, getFeaturedStats);

export default router;
