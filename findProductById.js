// import { prisma } from "./lib/prisma.js";
import { prisma } from "./src/lib/prisma.js";

async function logAllProductIds() {
  try {
    const products = await prisma.product.findMany({
      select: {
        id: true,
      },
    });

    if (products.length === 0) {
      console.log("No products found in the database");
      return;
    }

    console.log("Product IDs in database:");
    products.forEach((product) => {
      console.log(product.id);
    });
  } catch (error) {
    console.error("Error fetching product IDs:", error);
  }
}

// Run it
logAllProductIds();
