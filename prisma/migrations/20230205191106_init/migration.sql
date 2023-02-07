/*
  Warnings:

  - Added the required column `director` to the `Movie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `genre` to the `Movie` table without a default value. This is not possible if the table is not empty.
  - Added the required column `released` to the `Movie` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Movie" ADD COLUMN     "director" TEXT NOT NULL,
ADD COLUMN     "genre" TEXT NOT NULL,
ADD COLUMN     "released" TIMESTAMP(3) NOT NULL;
