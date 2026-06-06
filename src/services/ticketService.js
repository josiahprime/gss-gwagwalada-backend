// services/ticketService.js
import { prisma } from "../lib/prisma.js";

export const createTicket = async ({ customerId, subject, category, priority }) => {
  return prisma.ticket.create({
    data: {
      customerId,
      subject,
      category,
      priority,
      status: 'open',
    },
  });
};

export const fetchTickets = async () => {
  return prisma.ticket.findMany({
    include: {
      customer: true,
      messages: {
        include: {
          sender: {
            select: {
              id: true,
              username: true,
              role: true,
            },
          },
        },
      },
    },
    orderBy: {
      createdAt: 'desc',
    },
  });
};


export const fetchTicketsByUser = async (userId) => {
  return prisma.ticket.findMany({
    where: {
      customerId: userId,
    },
    include: {
      customer: true,
      messages: {
        include: {
          sender: {
            select: {
              id: true,
              username: true,
              role: true,
            },
          },
        },
      },
    },
    orderBy: {
      createdAt: 'desc',
    },
  });
};

export const getTicketById = async (id, userRole) => {
  // Determine which column to update
  const updateData = {};
  if (userRole === 'admin') {
    updateData.adminLastReadAt = new Date();
  } else {
    updateData.customerLastReadAt = new Date();
  }
  // 1. ADD 'await' HERE
  const ticket = await prisma.ticket.update({
    where: { id: id },
    data: updateData,
    include: {
      customer: true,
      messages: {
        include: {
          sender: {
            select: {
              id: true,
              username: true,
              role: true,
            },
          },
        },
      },
    },
  });

  // 2. Now 'ticket' is the actual object, and this will work:
  // Change your log to this:
  console.log(
    `[DB RAW] Ticket: ${id} | ` +
    `updatedAt: ${ticket?.updatedAt?.toISOString()} | ` +
    `adminRead: ${ticket?.adminLastReadAt?.toISOString()} | ` +
    `customerRead: ${ticket?.customerLastReadAt?.toISOString()}`
  );
  // console.log(`[DB RAW] Ticket: ${id} | updatedAt: ${ticket.updatedAt.toISOString()} | lastReadAt: ${ticket.lastReadAt.toISOString()}`);
  
  return ticket;
};

export const addTicketMessage = async ({ ticketId, senderId, content, userRole }) => {
  const now = new Date();
  
  // 1. Determine which clock on the TICKET table to update
  const clockToUpdate = userRole === 'admin' 
    ? { adminLastReadAt: now } 
    : { customerLastReadAt: now };

  // 2. Run both operations so the message is saved AND the ticket is updated
  return await prisma.$transaction([
    // Create the message
    prisma.ticketMessage.create({
      data: {
        ticketId,
        senderId,
        content,
      },
    }),
    // Update the Ticket timestamps
    prisma.ticket.update({
      where: { id: ticketId },
      data: {
        updatedAt: now,      // This triggers the "Unread" for the other person
        ...clockToUpdate,    // This clears the "Unread" for the sender
      },
    }),
  ]);
};

export const updateTicket = async (id, data) => {
  return prisma.ticket.update({
    where: { id },
    data,
  });
};
