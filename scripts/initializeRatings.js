import { prisma } from "../src/lib/prisma.js";

async function initializeRatings() {
  await prisma.product.updateMany({
    data: {
      ratingCount: 0,
      ratingSum: 0,
    },
  });
  console.log("Initialized ratingCount and ratingSum for all products.");
}

initializeRatings();
