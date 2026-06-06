// import { getIO } from "../socket/index.js";

// /**
//  * Sends an update to everyone in a specific ticket room
//  */
// export const emitTicketUpdate = (ticketId, updatedTicket) => {
//   const io = getIO();
//   io.to(`ticket:${ticketId}`).emit('ticketUpdated', updatedTicket);

//   // B. Send to the global Admin room
//   // (This reaches all logged-in Admins so their table shows the green dot)
//   io.to('admin:all_tickets').emit('ticketUpdated', updatedTicket);
// };

// /**
//  * Sends a private notification to a specific user
//  */
// export const emitNotification = (userId, message) => {
//   const io = getIO();
//   io.to(`user:${userId}`).emit('notification', {
//     message,
//     timestamp: new Date(),
//   });
// };

import { getIO } from "../socket/index.js";

/**
 * Sends an update to relevant parties when a ticket changes
 */
export const emitTicketUpdate = (ticketId, updatedTicket, customerId) => {
  const io = getIO();

  // 1. Send to the specific ticket room 
  // (For whoever is currently inside the chat window)
  io.to(`ticket:${ticketId}`).emit('ticketUpdated', updatedTicket);

  // 2. Send to the global Admin room
  // (For the Admin Table/Dashboard green dots)
  io.to('admin:all_tickets').emit('ticketUpdated', updatedTicket);

  // 3. Send to the Customer's personal room 
  // We explicitly set isUnread: true here because if an admin just replied,
  // we want the customer's dashboard to show the notification immediately.
  if (customerId) {
    const customerVersion = { 
      ...updatedTicket, 
      isUnread: true 
    };
    io.to(`user:${customerId}`).emit('ticketUpdated', customerVersion);
  }
};

/**
 * Sends a private notification to a specific user (General notifications)
 */
export const emitNotification = (userId, message) => {
  const io = getIO();
  io.to(`user:${userId}`).emit('notification', {
    message,
    timestamp: new Date(),
  });
};