import { prisma } from "../lib/prisma.js";

export const fetchStats = async () => {
  const [completedOrders, earningsAgg, newUsers, totalOrders] =
    await Promise.all([
      prisma.order.count({
        where: { fulfillmentStatus: 'Delivered' }
      }),

      prisma.order.aggregate({
        _sum: { total: true },
        where: { fulfillmentStatus: 'Delivered' }
      }),

      prisma.user.count({
        where: {
          createdAt: {
            gte: new Date(Date.now() - 30 * 24 * 60 * 60 * 1000) // last 30 days
          }
        }
      }),

      prisma.order.count()
    ]);

  return {
    completedOrdersCount: completedOrders,
    earnings: earningsAgg._sum.total ?? 0,

    // earnings: earningsAgg._sum.totalAmount ?? 0,
    newUsers,
    totalOrders
  };
};
