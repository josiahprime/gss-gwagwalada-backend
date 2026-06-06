import express from 'express';
import {
  getPromotions,
  getPromotionById,
  createPromotion,
  updatePromotion,
  deletePromotion,
} from '../controllers/promotionController.js';

import { promotionSchema } from '../validations/promotionValidators.js';
import { validateBody } from '../middlewares/validateBody.middleware.js';
import { protectRoute } from '../middlewares/auth.middleware.js';
import { isAdmin } from '../middlewares/roles.middleware.js';



const router = express.Router();

router.get('/', protectRoute, isAdmin,  getPromotions,);
router.get('/:id', protectRoute, isAdmin, getPromotionById);

router.post(
  '/', protectRoute, isAdmin,
  (req, res, next) => {
    console.log('Incoming createPromotion request body:', req.body);
    next(); // pass control to the next middleware (the validator)
  },
  validateBody(promotionSchema),
  createPromotion
);

router.put(
  '/:id', protectRoute, isAdmin,
  (req, res, next) => {
    console.log('Incoming updatePromotion request body:', req.body);
    next();
  },
  validateBody(promotionSchema),
  updatePromotion
);

router.delete('/:id', protectRoute, isAdmin, deletePromotion);

export default router;
