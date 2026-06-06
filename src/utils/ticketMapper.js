export const mapTicketsToDTO = (tickets, currentUserRole) => tickets.map(ticket => {
  const updatedAt = new Date(ticket.updatedAt).getTime();
  

  // Select the correct "Last Read" for the current user
  const lastRead = currentUserRole === 'admin' 
    ? new Date(ticket.adminLastReadAt).getTime() 
    : new Date(ticket.customerLastReadAt).getTime();

  
  // Get the last message to see who sent it
  const lastMessage = ticket.messages?.length > 0 
    ? ticket.messages[ticket.messages.length - 1] 
    : null;

  // RULE: Show "New" ONLY if the last message was NOT sent by you (your role)
  // AND it's newer than your specific last read time.
  let isUnread = false;
  
  if (lastMessage) {
    const lastSenderRole = lastMessage.sender?.role;
    
    // If I am admin, I care if the last sender was a customer
    if (currentUserRole === 'admin') {
      isUnread = lastSenderRole === 'customer' && updatedAt > (lastRead + 1000);
    } 
    // If I am customer, I care if the last sender was an admin
    else {
      isUnread = (lastSenderRole === 'admin' || lastSenderRole === 'agent') && updatedAt > (lastRead + 1000);
    }
  }

  
  // 2. Return the object
  return {
    id: ticket.id,
    customerId: ticket.customerId,
    customerName: ticket.customer?.username ?? 'Unknown',
    customerEmail: ticket.customer?.email ?? 'Unknown',
    isUnread, // Now this is available for the frontend
    subject: ticket.subject,
    category: ticket.category,
    priority: ticket.priority,
    status: ticket.status,
    messages: ticket.messages?.map((m) => ({
      id: m.id,
      senderId: m.senderId,
      // Added safety check here to prevent the 'id' crash
      sender: m.sender ? {
        id: m.sender.id,
        username: m.sender.username,
        role: m.sender.role,
      } : null,
      senderName: m.sender?.username ?? 'Support',
      content: m.content,
      createdAt: m.createdAt,
    })) ?? [],
    createdAt: ticket.createdAt,
    updatedAt: ticket.updatedAt,
    assignedTo: ticket.assignedTo ?? null,
  };
});