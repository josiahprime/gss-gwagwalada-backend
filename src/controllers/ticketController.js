// controllers/ticketController.js
import * as ticketService from '../services/ticketService.js';
import * as socketService from '../services/socketService.js';
import { mapTicketsToDTO } from '../utils/ticketMapper.js';



/**
 * Helper for standardized error response
 */
const handleError = (res, message = 'Server error', status = 500) => {
  return res.status(status).json({ success: false, error: message });
};

export const fetchAllTickets = async (req, res) => {
  const userRole = req.user.role;
  try {
    const tickets = await ticketService.fetchTickets();

    res.json({ success: true, data: mapTicketsToDTO(tickets, userRole) });
  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to fetch tickets');
  }
};


export const getTicket = async (req, res) => {
  const { ticketId } = req.params;
  const userRole = req.user.role; // 🛡️ Pulled from verified JWT, not frontend

  try {
    // 1. Fetch the ticket and update lastReadAt in one service call
    const ticket = await ticketService.getTicketById(ticketId, userRole);

    if (!ticket) {
      return res.status(404).json({ success: false, message: 'Ticket not found' });
    }

    // 2. Map the single ticket through your DTO mapper
    // We wrap it in an array [ticket] because your mapper uses .map()
    // Pass the role to the mapper so it knows which "green dot" logic to use
    const mappedTicket = mapTicketsToDTO([ticket], userRole)[0];

    // LOG THIS: Check if isUnread is true or false here
    console.log(`[DTO SEND] Ticket: ${ticketId} | isUnread: ${mappedTicket.isUnread}`);

    res.json({ success: true, data: mappedTicket });
  } catch (err) {
    console.error("Error in getTicket controller:", err);
    res.status(500).json({ success: false, message: 'Failed to fetch ticket details' });
  }
};


export const fetchMyTickets = async (req, res) => {
  if (!req.user) return handleError(res, 'Unauthorized', 401);

  try {
    const tickets = await ticketService.fetchTicketsByUser(req.user.id);
    // console.log(`tickets for user${ req.user.username}`,tickets)

    res.json({ success: true, data: mapTicketsToDTO(tickets) });
  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to fetch tickets');
  }
};



export const createTicket = async (req, res) => {
  if (!req.user) return handleError(res, 'Unauthorized', 401);
  const userRole = req.user.role;

  const { subject, category, priority, message } = req.body;
  // console.log("📦 BODY RECEIVED BY BACKEND:", req.body);
  
  // Create an array to catch everything that might be missing
  const missingFields = [];
  if (!subject) missingFields.push('subject');
  if (!category) missingFields.push('category');
  if (!priority) missingFields.push('priority');
  if (!message) missingFields.push('message');

  // If anything is missing, tell the frontend exactly what it is
  if (missingFields.length > 0) {
    return res.status(400).json({
      success: false,
      message: `Missing required fields: ${missingFields.join(', ')}`,
      missingFields: missingFields // The frontend can map over this array!
    });
  }

  try {
    const ticket = await ticketService.createTicket({
      customerId: req.user.id,
      subject,
      category,
      priority,
      customerLastReadAt: new Date(),
      adminLastReadAt: new Date(0),
    });

    // await ticketService.addTicketMessage({
    //   ticketId: ticket.id,
    //   senderId: req.user.id,
    //   content: message,
    //   userRole: 'customer'
    // });

    await ticketService.addTicketMessage({
      ticketId: ticket.id,
       senderId: req.user.id,
      content: message,
      userRole, 
    });

    const fullTicket = await ticketService.getTicketById(ticket.id, 'customer');

    res.json({ success: true, data: mapTicketsToDTO([fullTicket], 'customer')[0] });
  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to create ticket');
  }
};

export const markAsRead = async (req, res) => {
  const { ticketId } = req.params;

  try {
    const updatedTicket = await prisma.ticket.update({
      where: { id: ticketId },
      data: { lastReadAt: new Date() },
      // Important: Include the customer so the DTO mapper doesn't return "Unknown"
      include: { customer: true } 
    });

    // Use your mapper here so the frontend gets exactly what it expects
    const mappedData = mapTicketsToDTO([updatedTicket])[0];

    res.json({ success: true, data: mappedData });
  } catch (err) {
    console.error("Error marking ticket as read:", err);
    res.status(500).json({ success: false, message: "Failed to mark as read" });
  }
};

export const sendReply = async (req, res) => {
  // console.log("Current User from Request:", req.user);
  if (!req.user) return handleError(res, 'Unauthorized', 401);

  const { ticketId } = req.params;
  const { content } = req.body;
  const userRole = req.user.role
  
  if (!content) return handleError(res, 'Message content is required', 400);

  try {
    const ticket = await ticketService.getTicketById(ticketId, userRole);
    if (!ticket) return handleError(res, 'Ticket not found', 404);

    if (ticket.customerId !== req.user.id && req.user.role !== 'admin') {
      return handleError(res, 'Forbidden', 403);
    }

    // 1. Save the new message
    await ticketService.addTicketMessage({
      ticketId,
      senderId: req.user.id,
      content,
      userRole,
    });

    // 2. Fetch the fully updated ticket
    const updatedTicket = await ticketService.getTicketById(ticketId, userRole);

    // 3. UI UPDATE: Map the ticket to a DTO so it matches the fetchAllTickets format
    // We wrap it in [updatedTicket] because mapTicketsToDTO usually expects an array
    // 3. IMPORTANT: Pass userRole to the mapper!
    const mappedForSender = mapTicketsToDTO([updatedTicket], userRole)[0];

    // Send the consistent DTO structure to the socket
    // socketService.emitTicketUpdate(ticketId, mappedData);
    socketService.emitTicketUpdate(ticketId, {
      ...mappedForSender, // Includes messages, subject, etc.
      adminLastReadAt: updatedTicket.adminLastReadAt,
      customerLastReadAt: updatedTicket.customerLastReadAt,
      updatedAt: updatedTicket.updatedAt,
    },
      updatedTicket.customerId
    );

    // Also return the consistent DTO in the API response
    res.json({ success: true, data: mappedForSender });
  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to send reply');
  }
};


export const assignTicket = async (req, res) => {
  if (!req.user) return handleError(res, 'Unauthorized', 401);
  if (req.user.role !== 'admin') return handleError(res, 'Forbidden', 403);

  const { ticketId } = req.params;

  try {
    const ticket = await ticketService.getTicketById(ticketId);
    if (!ticket) return handleError(res, 'Ticket not found', 404);

    if (ticket.status !== 'open') {
      return handleError(res, 'Ticket cannot be assigned unless it is open', 400);
    }

    const updatedTicket = await ticketService.updateTicket(ticketId, {
      assignedTo: req.user.username,
      status: 'pending',
    });

    res.json({ success: true, data: updatedTicket });

  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to assign ticket');
  }
};


export const escalateTicket = async (req, res) => {
  if (!req.user) return handleError(res, 'Unauthorized', 401);
  if (req.user.role !== 'admin') return handleError(res, 'Forbidden', 403);

  const { ticketId } = req.params;

  try {
    const ticket = await ticketService.getTicketById(ticketId);
    if (!ticket) return handleError(res, 'Ticket not found', 404);

    if (ticket.priority === 'high') {
      return handleError(res, 'Ticket is already high priority', 400);
    }

    const updatedTicket = await ticketService.updateTicket(ticketId, { priority: 'high' });
    res.json({ success: true, data: updatedTicket });
  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to escalate ticket');
  }
};

export const resolveTicket = async (req, res) => {
  if (!req.user) return handleError(res, 'Unauthorized', 401);
  if (req.user.role !== 'admin') return handleError(res, 'Forbidden', 403);

  const { ticketId } = req.params;

  try {
    const ticket = await ticketService.getTicketById(ticketId);
    if (!ticket) return handleError(res, 'Ticket not found', 404);

    const updatedTicket = await ticketService.updateTicket(ticketId, { status: 'resolved' });
    res.json({ success: true, data: updatedTicket });
  } catch (err) {
    console.error(err);
    handleError(res, 'Failed to resolve ticket');
  }
};
