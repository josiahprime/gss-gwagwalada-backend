import { Router } from "express";
import multer from "multer";
import { createBugReport, getBugReports, updateBugStatus } from "../controllers/bugReportController.js";
import { protectRoute } from "../middlewares/auth.middleware.js";
import { isAdmin } from "../middlewares/roles.middleware.js";

const router = Router();

// Multer setup (local temp storage for Cloudinary upload)
const storage = multer.memoryStorage();
const upload = multer({ storage });


router.post("/", protectRoute, isAdmin, upload.single("file"), createBugReport);
router.get("/", protectRoute, isAdmin, getBugReports);
router.patch("/:id", protectRoute, isAdmin, updateBugStatus)

export default router;
