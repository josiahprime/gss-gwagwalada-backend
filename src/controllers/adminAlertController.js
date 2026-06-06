import { prisma } from "../lib/prisma.js";

export const getAllAdminAlerts = async (req, res) => {
  try {
    const alerts = await prisma.adminAlert.findMany({
      orderBy: { createdAt: "desc" } // newest first
    });

    return res.json({ success: true, data: alerts });
  } catch (err) {
    console.error("Error fetching admin alerts:", err);
    return res.status(500).json({ success: false, message: "Internal server error" });
  }
};
