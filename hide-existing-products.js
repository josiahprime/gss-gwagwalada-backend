import { prisma } from "./src/lib/prisma.js";
// 💡 Make sure to import your exact cache instance here if needed, e.g.:
// import { cache } from "../src/utils/cache.js"; 

async function main() {
  try {
    console.log("🚀 Starting script to temporarily hide all existing products...");

    // 1. Update all existing items in the database to be invisible
    const updateResult = await prisma.product.updateMany({
      data: {
        visibility: 'HIDDEN', // 🎛️ Switched from isVisible to visibility
      },
    });

    console.log(`✅ Successfully hid ${updateResult.count} products in the database.`);

    // 2. Clear the server cache completely so changes reflect instantly
    // (If your cache is handled inside your express app context, restarting 
    // the backend server after running this script will also wipe an in-memory cache!)
    if (typeof cache !== 'undefined' && cache.flushAll) {
      cache.flushAll();
      console.log("🧼 Backend cache flushed completely.");
    }

    console.log("🎉 Bulk hide execution finished successfully.");
  } catch (err) {
    console.error("❌ Error running the bulk hide script:", err);
  } finally {
    // Clean up connection
    await prisma.$disconnect();
  }
}

main();