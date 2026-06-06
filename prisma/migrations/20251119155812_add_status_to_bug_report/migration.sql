-- CreateEnum
CREATE TYPE "BugStatus" AS ENUM ('UNRESOLVED', 'IN_PROGRESS', 'RESOLVED');

-- AlterTable
ALTER TABLE "BugReport" ADD COLUMN     "filePublicId" TEXT,
ADD COLUMN     "status" "BugStatus" NOT NULL DEFAULT 'UNRESOLVED';
