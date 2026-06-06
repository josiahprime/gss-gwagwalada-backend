import jwt from "jsonwebtoken";
import { PrismaClient } from "@prisma/client";
import { v4 as uuidv4 } from "uuid";

const prisma = new PrismaClient();

export const softAuth = (req, res, next) => {
  try {
    const token = req.cookies.jwt;
    if (token) {
      const decoded = jwt.verify(token, process.env.JWT_SECRET);
      if (decoded?.userId) {
        req.userId = decoded.userId; // attach logged-in user ID
      }
    }
  } catch (err) {
    console.error("SoftAuth error:", err.message);
  }

  // Ensure anonId exists for anonymous users
  if (!req.userId) {
    if (!req.cookies.anonId) {
      const anonId = uuidv4();
      res.cookie("anonId", anonId, {
        httpOnly: true,
        sameSite: "lax",
        maxAge: 1000 * 60 * 60 * 24 * 365, // 1 year
      });
      req.anonId = anonId;
    } else {
      req.anonId = req.cookies.anonId;
    }
  }

  next();
};
