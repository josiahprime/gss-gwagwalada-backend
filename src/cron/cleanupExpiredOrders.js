import { prisma } from "../lib/prisma.js";
import cron from "node-cron";

export const cleanupExpiredOrders = async () => {
  console.log("🧹 Running expired order cleanup...");

  try {
    const now = new Date();

    // Find expired pending orders
    const expiredOrders = await prisma.order.findMany({
      where: {
        status: "pending",
        expiresAt: { lt: now }
      },
      // include: { items: true }
    });

    if (!expiredOrders.length) {
      console.log("⭐ No expired orders found.");
      return;
    }

    console.log(`⚠️ Found ${expiredOrders.length} expired orders.`);

    for (const order of expiredOrders) {
      await prisma.$transaction(async trx => {
        // Release reserved products
        for (const item of order.items) {
          await trx.product.update({
            where: { id: item.productId },
            data: {
              reserved: { decrement: item.quantity }
            }
          });
        }

        // Mark order as expired
        await trx.order.update({
          where: { id: order.id },
          data: { status: "expired" }
        });
      });

      console.log(`🗑️ Cleaned expired order: ${order.tx_ref}`);
    }

    console.log("🎉 Cleanup completed successfully.");
  } catch (err) {
    console.error("💥 Cleanup job failed:", err);
  }
};

// 🔥 Run once immediately (manual test)
cleanupExpiredOrders();




// Run every 6 hours
cron.schedule("0 */6 * * *", () => {
  cleanupExpiredOrders();
});