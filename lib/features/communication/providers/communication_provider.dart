import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/communication_repository.dart';
import '../data/repositories/communication_repository_impl.dart';
import '../data/models/chat_model.dart';
import '../data/models/call_model.dart';
import '../../../core/services/socket_service.dart';
import '../../../core/services/shared_pref_service.dart';

final communicationRepositoryProvider =
    Provider<CommunicationRepository>((ref) {
  return CommunicationRepositoryImpl(
    ref.watch(socketServiceProvider),
    ref.watch(sharedPreferencesServiceProvider),
  );
});

final chatMessagesProvider =
    StreamProvider.family<List<ChatMessageModel>, String>((ref, threadId) {
  return ref.watch(communicationRepositoryProvider).getMessages(threadId);
});

final chatThreadProvider =
    StreamProvider.family<ChatThreadModel, String>((ref, threadId) {
  return ref.watch(communicationRepositoryProvider).getThreadStream(threadId);
});

final smartRepliesProvider =
    FutureProvider.family<List<String>, String>((ref, lastMessage) {
  return ref
      .watch(communicationRepositoryProvider)
      .getAISmartReplies(lastMessage);
});

final activeCallProvider = StateProvider<CallModel?>((ref) => null);
