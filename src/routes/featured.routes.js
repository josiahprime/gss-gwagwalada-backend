import express from "express";
import { getFeaturedStats } from "../controllers/featured.controller.js";

const router = express.Router();

router.get("/featured", getFeaturedStats);

export default router;
