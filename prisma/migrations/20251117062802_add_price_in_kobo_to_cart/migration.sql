-- AlterTable
ALTER TABLE "CartItem" ADD COLUMN     "priceInKobo" INTEGER NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE "UserArchive" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "phone" TEXT,
    "profilePic" TEXT,
    "googleId" TEXT,
    "verified" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "deletedAt" TIMESTAMP(3) NOT NULL,
    "deletedBy" TEXT,

    CONSTRAINT "UserArchive_pkey" PRIMARY KEY ("id")
);
