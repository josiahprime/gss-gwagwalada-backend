-- DropForeignKey
ALTER TABLE "public"."UserView" DROP CONSTRAINT "UserView_userId_fkey";

-- AlterTable
ALTER TABLE "UserView" ALTER COLUMN "userId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "UserView" ADD CONSTRAINT "UserView_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE SET NULL ON UPDATE CASCADE;
