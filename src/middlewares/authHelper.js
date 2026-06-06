// middleware/authHelper.js
import jwt from "jsonwebtoken";
import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export const verifyUserFromToken = async (token) => {
  if (!token) throw new Error('No token provided');

  const decoded = jwt.verify(token, process.env.JWT_SECRET);
  if (!decoded?.userId) throw new Error('Invalid token');

  const user = await prisma.user.findUnique({
    where: { id: decoded.userId },
    select: {
        id: true,
        username: true,
        role: true,
        email: true,
        authProvider: true,
        profilePic: true,
        phone: true,
        verified: true,
        createdAt: true,
    },
});

  if (!user) throw new Error('User not found');
  return user;
};