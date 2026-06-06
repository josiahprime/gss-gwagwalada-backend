import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function deleteUserByEmail() {
  const email = 'mosesogidi3@gmail.com';

  try {
    const deletedUser = await prisma.user.delete({
      where: {
        email,
      },
    });

    console.log('✅ User deleted:', deletedUser.email);
  } catch (error) {
    if (error.code === 'P2025') {
      console.error('❌ User not found');
    } else {
      console.error('❌ Failed to delete user:', error);
    }
  } finally {
    await prisma.$disconnect();
  }
}

deleteUserByEmail();
