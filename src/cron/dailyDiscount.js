// import cron from "node-cron";
// import { prisma } from "../lib/prisma.js";

// const assignDailyDiscounts = async () => {
//   try {
//     console.log("🔁 Running daily discount assignment...");

//     const today = new Date().toISOString().slice(0, 10);

//     // Check last run
//     // const tracker = await prisma.dailyTaskTracker.findFirst(); 
//     const tracker = await prisma.dailyTaskTracker.findUnique({
//       where: { id: 1 }
//     });

//     if (!tracker) {
//       await prisma.dailyTaskTracker.create({
//         data: { id: 1, lastDiscountRun: new Date(0) },
//       });
//     }


//     if (tracker?.lastDiscountRun?.toISOString().slice(0, 10) === today) {
//       console.log("✅ Daily discounts already assigned today. Skipping.");
//       return;
//     }

//     // Pick 5–6 random products that currently don't have a discount
//     const products = await prisma.product.findMany({
//       where: { discountId: null },
//       orderBy: { createdAt: "desc" },
//       take: 6,
//     });

//     if (!products.length) {
//       console.log("⚠️ No eligible products found for discounts today.");
//       return;
//     }

//     for (const product of products) {
//       const label = `DAILY_${today}_${product.id.slice(0, 6)}`;
//       const discountValue = Math.floor(Math.random() * 21) + 5;

//       const discount = await prisma.discount.create({
//         data: {
//           label,
//           type: "PERCENTAGE",
//           value: discountValue,
//           startDate: new Date(),
//           endDate: new Date(Date.now() + 24 * 60 * 60 * 1000),
//           isActive: true,
//           products: { connect: { id: product.id } },
//         },
//       });

//       await prisma.product.update({
//         where: { id: product.id },
//         data: { discountId: discount.id },
//       });

//       console.log(`✅ Discount ${discount.label} applied to ${product.productName}`);
//     }

//     // Update task tracker
//     await prisma.dailyTaskTracker.update({
//       where: { id: tracker.id },
//       data: { lastDiscountRun: new Date() },
//     });

//   } catch (err) {
//     console.error("❌ Error assigning daily discounts:", err);
//   }
// };


// // Run once on server start
// assignDailyDiscounts();

// // Schedule to run every day at midnight
// cron.schedule("0 0 * * *", assignDailyDiscounts);


import cron from "node-cron";
import { prisma } from "../lib/prisma.js";

const cleanExpiredDiscounts = async () => {
  // 1. Find all expired discounts first
  const expiredDiscounts = await prisma.discount.findMany({
    where: { 
      endDate: { lt: new Date() },
      isActive: true 
    },
    select: { id: true }
  });

  if (!expiredDiscounts.length) return;

  const discountIds = expiredDiscounts.map(d => d.id);

  // 2. Unlink all products associated with these discounts in one hit
  await prisma.product.updateMany({
    where: { discountId: { in: discountIds } },
    data: { discountId: null }
  });

  // 3. Mark the discounts as inactive in one hit
  await prisma.discount.updateMany({
    where: { id: { in: discountIds } },
    data: { isActive: false }
  });

  console.log(`✅ Cleaned up ${discountIds.length} expired discounts.`);
};

const assignDailyDiscounts = async () => {
  const today = new Date().toISOString().slice(0, 10);

  let tracker = await prisma.dailyTaskTracker.findUnique({ where: { id: 1 } });
  if (!tracker) {
    tracker = await prisma.dailyTaskTracker.create({ data: { id: 1, lastDiscountRun: new Date(0) } });
  }

  if (tracker.lastDiscountRun?.toISOString().slice(0, 10) === today) {
    console.log("✅ Daily discounts already assigned today. Skipping.");
    return;
  }

  const products = await prisma.product.findMany({
    where: {
      discountId: null,
      stock: { gt: 0 }, // only include products with stock
    },
    take: 6,
    orderBy: { createdAt: "desc" },
  });

  if (!products.length) {
    console.log("⚠️ No eligible products found for discounts today.");
    return;
  }

  await Promise.all(
    products.map(async (product) => {
      const label = `DAILY_${today}_${product.id.slice(0, 6)}`;
      const discountValue = Math.floor(Math.random() * 21) + 5;

      const discount = await prisma.discount.create({
        data: {
          label,
          type: "PERCENTAGE",
          value: discountValue,
          startDate: new Date(),
          endDate: new Date(Date.now() + 24 * 60 * 60 * 1000),
          isActive: true,
          products: { connect: { id: product.id } },
        },
      });

      await prisma.product.update({ where: { id: product.id }, data: { discountId: discount.id } });
      console.log(`✅ Discount ${discount.label} applied to ${product.productName}`);
    })
  );

  await prisma.dailyTaskTracker.update({ where: { id: tracker.id }, data: { lastDiscountRun: new Date() } });
};


const runDailyDiscounts = async () => {
  console.log("🔁 Running daily discount workflow...");
  await cleanExpiredDiscounts();   // 1️⃣ Cleanup first
  await assignDailyDiscounts();    // 2️⃣ Then assign new discounts
  console.log("✅ Daily discount workflow complete");
};

// ✅ Run once on server start
runDailyDiscounts();

// ✅ Schedule once per day at midnight
cron.schedule("0 0 * * *", runDailyDiscounts);
