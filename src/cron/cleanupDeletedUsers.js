import cron from "node-cron";
import { prisma } from "../lib/prisma";
// Runs every day at midnight
cron.schedule("0 0 * * *", async () => {
  console.log("Running soft-deleted user cleanup job...");

  try {
    const now = new Date();

    // Retention period in months (6 or 12)
    const retentionMonths = 6;
    const retentionDate = new Date();
    retentionDate.setMonth(now.getMonth() - retentionMonths);

    // Find users soft-deleted before retentionDate
    const usersToDelete = await prisma.user.findMany({
      where: {
        status: "deleted",
        updatedAt: { lt: retentionDate }, // last updated = deletion time
      },
      select: { id: true, email: true },
    });

    for (const user of usersToDelete) {
      // Delete related non-critical data
      await prisma.$transaction([
        prisma.cartItem.deleteMany({ where: { userId: user.id } }),
        prisma.refreshToken.deleteMany({ where: { userId: user.id } }),
        prisma.notification.deleteMany({ where: { userId: user.id } }),
        prisma.message.deleteMany({ where: { OR: [{ senderId: user.id }, { receiverId: user.id }] } }),
      ]);

      // Finally, hard-delete the user
      await prisma.user.delete({ where: { id: user.id } });
      console.log(`Permanently deleted user: ${user.email} (ID: ${user.id})`);
    }

    console.log("User cleanup job completed successfully.");
  } catch (err) {
    console.error("Error running cleanup job:", err);
  }
});
