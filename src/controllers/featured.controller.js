import { getFeaturedStatsService } from "../services/featured.service.js";

export const getFeaturedStats = async (req, res) => {
  try {
    const data = await getFeaturedStatsService();

    res.json({
      success: true,
      data
    });

  } catch (err) {
    console.error("FEATURED STATS ERROR:", err);
    res.status(500).json({
      success: false,
      message: "Failed to load featured stats"
    });
  }
};
