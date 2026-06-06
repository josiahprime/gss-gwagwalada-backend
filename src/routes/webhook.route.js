import express from 'express';
import { webhook } from '../controllers/pay.controllers.js';

const router = express.Router();

// Only webhook route uses raw body
router.post(
  '/paystack/webhook',
  express.raw({ type: '*/*' }),
  (req, res, next) => {
    console.log('🔔 Paystack webhook route was hit:', new Date().toISOString());
    next();
  },
  webhook
);

export default router;
