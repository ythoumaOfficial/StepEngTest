/*
  Warnings:

  - You are about to drop the column `userid` on the `Movie` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Movie" DROP CONSTRAINT "Movie_userid_fkey";

-- AlterTable
ALTER TABLE "Movie" DROP COLUMN "userid",
ALTER COLUMN "released" SET DATA TYPE TEXT;
