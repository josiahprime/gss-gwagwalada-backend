/*
  Warnings:

  - You are about to drop the column `relatedItem` on the `AdminAlert` table. All the data in the column will be lost.
  - Added the required column `title` to the `AdminAlert` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "AdminAlert" DROP COLUMN "relatedItem",
ADD COLUMN     "entityId" TEXT,
ADD COLUMN     "seen" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "title" TEXT NOT NULL;
