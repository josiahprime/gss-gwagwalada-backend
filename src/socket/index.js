

// let io;

// export const initSocket = (server) => {
//   io = new Server(server, {
//     cors: {
//       origin: process.env.FRONTEND_URL,
//       credentials: true,
//       methods: ['GET', 'POST'],
//     },
//   });

//   io.on('connection', (socket) => {
//     console.log('Socket connected:', socket.id);

//     // user-level room (notifications)
//     socket.on('join', (userId) => {
//       socket.join(`user:${userId}`);
//       console.log(`User joined room: user:${userId}`);
//     });

//     // ticket-level room (messages)
//     socket.on('joinTicket', (ticketId) => {
//       socket.join(`ticket:${ticketId}`);
//       console.log(`Joined ticket room: ticket:${ticketId}`);
//     });

//     socket.on('leaveTicket', (ticketId) => {
//       socket.leave(`ticket:${ticketId}`);
//       console.log(`Left ticket room: ticket:${ticketId}`);
//     });

//     socket.on('disconnect', () => {
//       console.log('Socket disconnected:', socket.id);
//     });
//   });

//   return io;
// };

// export const getIO = () => {
//   if (!io) throw new Error('Socket.io not initialized!');
//   return io;
// };

// socket.js
import { Server } from 'socket.io';
import cookie from 'cookie';
import { verifyUserFromToken } from '../middlewares/authHelper.js';
import { registerTicketHandlers } from './ticketHandlers.js';
let io;

export const initSocket = (server) => {
  io = new Server(server, {
    cors: { origin: process.env.FRONTEND_URL, credentials: true },

    // 💡 Explicitly allow websocket transport
    transports: ['websocket'], 
    pingTimeout: 60000,
    pingInterval: 25000,
  });

  // Auth Middleware (Keep this here as it's a gatekeeper)
  io.use(async (socket, next) => {
    try {
      const cookies = cookie.parse(socket.handshake.headers.cookie || '');
      const token = cookies.jwt;

      if (!token) {
        console.error("❌ [Socket Auth]: No token found in cookies");
        return next(new Error('Unauthorized'));
      }
      
      socket.user = await verifyUserFromToken(cookies.jwt);
      next();
    } catch (err) {
      next(new Error('Unauthorized'));
    }
  });

  io.on('connection', (socket) => {
    console.log(`📡 New Connection established: ${socket.id}`);
    // 1. Join personal room automatically
    socket.join(`user:${socket.user.id}`);

    // Add a log here to be 100% sure
    console.log("Socket User Role:", socket.user.role);

    // 2. JOIN GLOBAL ADMIN ROOM
    if (socket.user.role === 'admin') {
      socket.join('admin:all_tickets');
      console.log(`Admin ${socket.user.username} joined global support room`);
    }

    // 2. Register modular handlers
    // console.log('attempting to register ticket handler', io, socket)
    registerTicketHandlers(io, socket);
    // registerChatHandlers(io, socket); // You can add more easily!

    // socket.on('disconnect', () => console.log('Disconnected'));
    socket.on('disconnect', (reason) => {
      console.log(`🛑 User ${socket.id} disconnected. Reason: ${reason}`);
      
      if (reason === "ping timeout") {
        console.warn("⚠️ Server/Client was too slow to respond to heartbeat.");
      } else if (reason === "transport close") {
        console.warn("⚠️ The actual TCP connection was closed (usually network/VPN/server crash).");
      } else if (reason === "client namespace disconnect") {
        console.warn("⚠️ The client manually called .disconnect()");
      }
    });
  });

  return io;
};

export const getIO = () => io;