-- AlterTable
ALTER TABLE "Order" ADD COLUMN     "estimatedDeliveryEnd" TIMESTAMP(3),
ADD COLUMN     "estimatedDeliveryStart" TIMESTAMP(3);
