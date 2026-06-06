import { prisma } from "../lib/prisma.js";

export const fetchLogsService = async ({ limit, cursor, filters }) => {
  const where = {
    ...(filters.type && { type: filters.type }),
    ...(filters.level && { level: filters.level }),
    ...(filters.userId && { userId: filters.userId }),
    ...(filters.referenceId && { referenceId: filters.referenceId }),
    ...(filters.source && { source: filters.source }),
  };

  const logs = await prisma.log.findMany({
    where,
    orderBy: {
      createdAt: "desc",
    },
    take: limit,
    ...(cursor && {
      cursor: { createdAt: new Date(cursor) },
      skip: 1,
    }),
  });

  return {
    data: logs,
    nextCursor: logs.length ? logs[logs.length - 1].createdAt : null,
    hasMore: logs.length === limit,
  };
};
