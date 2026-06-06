import { prisma } from "./src/lib/prisma.js";



async function backfillBasePrice() {
  try {
    // Fetch all cart items where basePriceInKobo is null
    const cartItems = await prisma.cartItem.findMany({
      where: { basePriceInKobo: null },
    });

    console.log(`Found ${cartItems.length} cart items to backfill.`);

    for (const item of cartItems) {
      await prisma.cartItem.update({
        where: { id: item.id },
        data: {
          basePriceInKobo: item.priceInKobo,
        },
      });
    }

    console.log(`Backfilled ${cartItems.length} cart items.`);
  } catch (err) {
    console.error("Error backfilling basePriceInKobo:", err);
  } finally {
    await prisma.$disconnect();
  }
}

backfillBasePrice();
