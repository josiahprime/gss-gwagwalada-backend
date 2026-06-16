-- CreateEnum
CREATE TYPE "VisibilityStatus" AS ENUM ('VISIBLE', 'HIDDEN');

-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "visibility" "VisibilityStatus" NOT NULL DEFAULT 'VISIBLE';
