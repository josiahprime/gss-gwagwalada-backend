-- AlterTable
ALTER TABLE "CartItem" ADD COLUMN     "discountAppliedId" TEXT,
ADD COLUMN     "discountAppliedType" TEXT,
ADD COLUMN     "discountAppliedValue" DOUBLE PRECISION;
