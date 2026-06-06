import { prisma } from '../lib/prisma.js';
import { LogLevel, LogType } from '@prisma/client';

export async function logEvent({
  type,
  level,
  message,
  userId,
  referenceId,
  source,
  metadata,
}) {
  try {
    if (!LogType[type]) {
      throw new Error(`Invalid log type: ${type}`);
    }

    if (!LogLevel[level]) {
      throw new Error(`Invalid log level: ${level}`);
    }

    await prisma.log.create({
      data: {
        type,
        level,
        message,
        userId: userId || null,
        referenceId: referenceId || null,
        source: source || null,
        metadata: metadata || null,
      },
    });
  } catch (err) {
    console.error("Failed to write log:", err);
  }
}
