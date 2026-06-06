import { fetchLogsService } from "../services/log.service.js";

export const getLogs = async (req, res) => {
  try {
    const {
      limit = 20,
      cursor,
      type,
      level,
      userId,
      referenceId,
      source,
    } = req.query;

    const result = await fetchLogsService({
      limit: Number(limit),
      cursor,
      filters: {
        type,
        level,
        userId,
        referenceId,
        source,
      },
    });

    res.status(200).json(result);
  } catch (err) {
    res.status(500).json({
      message: "Failed to fetch logs",
    });
  }
};
