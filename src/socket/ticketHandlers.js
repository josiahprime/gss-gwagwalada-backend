import * as ticketService from '../services/ticketService.js';

export const registerTicketHandlers = (io, socket) => {
    console.log('we reached register ticket handlers')
  
  socket.on('joinTicket', async (ticketId) => {
    try {
      const ticket = await ticketService.getTicketById(ticketId);
      if (!ticket) return;

      const isOwner = ticket.customerId === socket.user.id;
      const isAdmin = socket.user.role === 'admin';

      if (isOwner || isAdmin) {
        socket.join(`ticket:${ticketId}`);
        console.log("Admin joined ticket room:", ticketId);
        console.log(`User ${socket.user.id} authorized for ticket: ${ticketId}`);
      }
    } catch (err) {
      console.error("Socket Join Error:", err);
    }
  });

  socket.on('leaveTicket', (ticketId) => {
    socket.leave(`ticket:${ticketId}`);
  });

  // Add this inside your registerTicketHandlers
  socket.on('typing', ({ ticketId, username }) => {
    // Broadcast to everyone else in the room
    socket.to(`ticket:${ticketId}`).emit('userTyping', { username });
  });

  socket.on('stopTyping', ({ ticketId }) => {
    socket.to(`ticket:${ticketId}`).emit('userStoppedTyping');
  });
};