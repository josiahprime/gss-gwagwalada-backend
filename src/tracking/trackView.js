import { prisma } from "../lib/prisma.js";

export const trackView = async (req, res) => {
  try {
    const { id: productId } = req.params;

    // Use IDs set by softAuth middleware
    const userId = req.userId;
    const anonId = req.anonId;

    if (!userId && !anonId) {
      return res.status(400).json({ error: "Missing user identifier." });
    }

    // Check if this user-product view already exists
    const existingView = await prisma.userView.findFirst({
      where: {
        productId,
        OR: [
          { userId },
          { anonId },
        ],
      },
    });

    if (!existingView) {
      await prisma.userView.create({
        data: {
          productId,
          ...(userId ? { userId } : { anonId }),
        },
      });

      console.log(
        `Tracked view for product ${productId} by ${userId ? "user " + userId : "anon " + anonId}`
      );
    } else {
      console.log(
        `View already tracked for product ${productId} by ${userId ? "user " + userId : "anon " + anonId}`
      );
    }

    return res.json({ message: "View tracked" });
  } catch (err) {
    console.error("Track View Error:", err);
    return res.status(500).json({ error: "Failed to track view." });
  }
};
