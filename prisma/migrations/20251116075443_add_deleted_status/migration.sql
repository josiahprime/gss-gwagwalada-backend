-- CreateEnum
CREATE TYPE "ProductStatus" AS ENUM ('active', 'inactive', 'deleted');

-- AlterEnum
ALTER TYPE "Status" ADD VALUE 'deleted';

-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "status" "ProductStatus" NOT NULL DEFAULT 'active';
