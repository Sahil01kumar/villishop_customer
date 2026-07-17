import '../../data/models/support_model.dart';

abstract class SupportRepository {
  Future<List<SupportTicketModel>> getTickets(String customerId);
  Future<SupportTicketModel> createTicket(SupportTicketModel ticket);
  Future<void> updateTicketStatus(String ticketId, SupportTicketStatus status);
  Future<void> addAttachment(String ticketId, String filePath);

  // Blinkit style workflow metadata
  List<IssueMetadata> getIssueCategories();
}
