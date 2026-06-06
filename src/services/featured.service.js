import { prisma } from "../lib/prisma.js";
import dayjs from "dayjs";

export const getFeaturedStatsService = async () => {
  console.log('we hit get featured stats service ')
  // Today
  const startOfToday = dayjs().startOf("day").toDate();
  const endOfToday = dayjs().endOf("day").toDate();

  const todayRevenue = await prisma.order.aggregate({
    _sum: { amount: true },
    where: {
      status: "paid",
      createdAt: {
        gte: startOfToday,
        lte: endOfToday,
      },
    },
  });

  // Last week
  const startOfLastWeek = dayjs().subtract(7, "day").startOf("day").toDate();

  const lastWeekRevenue = await prisma.order.aggregate({
    _sum: { amount: true },
    where: {
      status: "paid",
      createdAt: {
        gte: startOfLastWeek,
      },
    },
  });

  // Last month
  const startOfLastMonth = dayjs().subtract(30, "day").startOf("day").toDate();

  const lastMonthRevenue = await prisma.order.aggregate({
    _sum: { amount: true },
    where: {
      status: "paid",
      createdAt: {
        gte: startOfLastMonth,
      },
    },
  });

  // Target is just made-up unless you want dynamic logic
  const target = 100000;  
  const todayAmount = todayRevenue._sum.amount || 0;
  const percentage = target > 0 ? Math.floor((todayAmount / target) * 100) : 0;

  return {
    todayRevenue: todayAmount,
    lastWeek: lastWeekRevenue._sum.amount || 0,
    lastMonth: lastMonthRevenue._sum.amount || 0,
    target,
    percentage
  };
};
