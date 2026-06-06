import { prisma } from "./prisma.js";

// type AdminAlertInput = {
//   type: string;
//   title: string;
//   message: string;
//   entityId?: string;
// };

// export const createAdminAlert = async ({
//   type,
//   title,
//   message,
//   entityId,
// }: AdminAlertInput) => {
//   return prisma.adminAlert.create({
//     data: {
//       type,
//       title,
//       message,
//       entityId,
//     },
//   });
// };

export const createAdminAlert = async ({ type, title, message, entityId }) => {
  return prisma.adminAlert.create({
    data: {
      type,
      title,
      message,
      entityId,
    },
  });
};
