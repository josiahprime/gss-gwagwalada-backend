import { prisma } from "../src/lib/prisma";

const seedRatings = async () => {
  const products = await prisma.product.findMany();

  for (const product of products) {
    const randomRating = parseFloat((Math.random() * 2 + 3).toFixed(1)); // 3.0 - 5.0
    await prisma.product.update({
      where: { id: product.id },
      data: { rating: randomRating }
    });
  }

  console.log('Seeded product ratings!');
};

seedRatings()
  .catch(console.error)
  .finally(() => prisma.$disconnect());
