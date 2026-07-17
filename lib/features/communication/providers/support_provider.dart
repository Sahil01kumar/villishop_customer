import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/support_model.dart';
import '../domain/repositories/support_repository.dart';
import '../data/repositories/support_repository_impl.dart';

final supportRepositoryProvider = Provider<SupportRepository>((ref) {
  return SupportRepositoryImpl();
});

final supportTicketsProvider =
    FutureProvider.family<List<SupportTicketModel>, String>(
        (ref, customerId) async {
  final repository = ref.watch(supportRepositoryProvider);
  return await repository.getTickets(customerId);
});

final issueCategoriesProvider = Provider<List<IssueMetadata>>((ref) {
  final repository = ref.watch(supportRepositoryProvider);
  return repository.getIssueCategories();
});

class TicketFormNotifier
    extends StateNotifier<AsyncValue<SupportTicketModel?>> {
  final SupportRepository _repository;

  TicketFormNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<void> submitTicket(SupportTicketModel ticket) async {
    state = const AsyncValue.loading();
    try {
      final result = await _repository.createTicket(ticket);
      state = AsyncValue.data(result);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  void reset() => state = const AsyncValue.data(null);
}

final ticketFormProvider =
    StateNotifierProvider<TicketFormNotifier, AsyncValue<SupportTicketModel?>>(
        (ref) {
  return TicketFormNotifier(ref.watch(supportRepositoryProvider));
});
