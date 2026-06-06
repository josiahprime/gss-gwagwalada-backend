import cron from "node-cron";
import { prisma } from "../lib/prisma.js";

const cleanExpiredDiscounts = async () => {
  try {
    console.log("🔁 Running expired discount cleanup...");

    const now = new Date();

    /**
     * STEP 1
     * Detach expired discounts from products
     */
    const productsWithExpiredDiscounts = await prisma.product.findMany({
      where: {
        discount: {
          endDate: { lt: now },
        },
      },
      include: { discount: true },
    });

    for (const product of productsWithExpiredDiscounts) {
      await prisma.product.update({
        where: { id: product.id },
        data: { discountId: null },
      });

      if (product.discount?.id) {
        await prisma.discount.update({
          where: { id: product.discount.id },
          data: { isActive: false },
        });
      }

      console.log(`✅ Detached expired discount from product: ${product.productName}`);
    }

    /**
     * STEP 2
     * Delete expired discounts that are NOT tied to any products
     * These discounts are safe to remove completely.
     */
    const deleted = await prisma.discount.deleteMany({
      where: {
        endDate: {
          not: null,
          lt: now,
        },
        products: {
          none: {}, // <-- important: ensures no product references exist
        },
      },
    });

    console.log(`🧹 Deleted ${deleted.count} expired, unused discounts`);
  } catch (err) {
    console.error("❌ Error cleaning expired discounts:", err);
  }
};

// Run once on server start
cleanExpiredDiscounts();

// Schedule to run every hour
cron.schedule("0 * * * *", cleanExpiredDiscounts);
