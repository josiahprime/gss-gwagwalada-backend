import { prisma } from "../lib/prisma.js";
import dayjs from "dayjs";

export const getMonthlyRevenue = async (req, res) => {
    console.log('we hit get monthly revenue code')
  try {
    // Query existing months only
    const raw = await prisma.$queryRaw`
      SELECT 
        DATE_TRUNC('month', "createdAt") AS month,
        SUM(amount) AS revenue
      FROM "Order"
      WHERE status = 'paid'
      GROUP BY month
      ORDER BY month ASC;
    `;

    console.log(raw)

    // Convert DB rows into a dictionary
    const revenueMap = {};
    raw.forEach(r => {
      const key = dayjs(r.month).format("YYYY-MM");
      revenueMap[key] = Number(r.revenue);
    });

    // Build last 12 months including empty ones
    const final = [];
    for (let i = 11; i >= 0; i--) {
      const m = dayjs().subtract(i, "month").format("YYYY-MM");
      final.push({
        month: m,
        revenue: revenueMap[m] || 0
      });
    }

    res.json({ success: true, data: final });

  } catch (err) {
    console.error(err);
    res.status(500).json({ success: false });
  }
};
