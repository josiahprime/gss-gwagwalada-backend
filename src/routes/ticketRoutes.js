import { Router } from 'express';
import * as ticketController from '../controllers/ticketController.js';
import { protectRoute } from "../middlewares/auth.middleware.js";
import { isAdmin } from "../middlewares/roles.middleware.js";

const router = Router();

router.get('/', protectRoute, isAdmin, ticketController.fetchAllTickets);
router.get('/my', protectRoute, ticketController.fetchMyTickets);
router.post('/', protectRoute, ticketController.createTicket);
router.get('/:ticketId', protectRoute, ticketController.getTicket);
router.patch('/:ticketId/read', protectRoute, ticketController.markAsRead);
router.post('/:ticketId/reply', protectRoute, ticketController.sendReply);
router.post('/:ticketId/assign', protectRoute, isAdmin, ticketController.assignTicket);
router.post('/:ticketId/escalate', protectRoute, isAdmin, ticketController.escalateTicket);
router.post('/:ticketId/resolve', protectRoute, isAdmin, ticketController.resolveTicket);

export default router;
