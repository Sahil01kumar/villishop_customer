import '../../data/models/chat_model.dart';
import '../../data/models/call_model.dart';
import '../../data/models/delivery_note_model.dart';

abstract class CommunicationRepository {
  /// Stream of messages for a specific chat thread
  Stream<List<ChatMessageModel>> getMessages(String threadId);

  /// Fetch or create a chat thread for an order
  Future<ChatThreadModel> getOrCreateThread({
    required String orderId,
    required String participantId,
    required String participantName,
    required String participantPhoto,
    required ChatParticipantType participantType,
  });

  /// Sends a message to a participant
  Future<void> sendMessage(ChatMessageModel message);

  /// Marks messages in a thread as read
  Future<void> markMessagesAsRead(String threadId);

  /// Updates typing status
  Future<void> setTypingStatus(String threadId, bool isTyping);

  /// Stream of thread updates (typing, last message, etc.)
  Stream<ChatThreadModel> getThreadStream(String threadId);

  /// Initiates a masked or VoIP call
  Future<CallModel> initiateCall({
    required String orderId,
    required String receiverId,
    required CallType type,
  });

  /// Ends an active call
  Future<void> endCall(String callId);

  /// Fetches saved delivery notes
  Future<List<DeliveryNoteModel>> getDeliveryNotes();

  /// Saves a new delivery note
  Future<void> saveDeliveryNote(DeliveryNoteModel note);

  /// Architecture ready for AI smart replies
  Future<List<String>> getAISmartReplies(String lastMessageText);
}
