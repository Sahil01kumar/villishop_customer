import 'dart:async';
import 'dart:convert';
import 'package:villishop_customer/core/services/socket_service.dart';
import 'package:villishop_customer/core/services/shared_pref_service.dart';
import '../../domain/repositories/communication_repository.dart';
import '../models/chat_model.dart';
import '../models/call_model.dart';
import '../models/delivery_note_model.dart';

class CommunicationRepositoryImpl implements CommunicationRepository {
  final SocketService _socketService;
  final SharedPreferenceService? _prefs;
  static const String _chatCachePrefix = 'chat_cache_v2_';

  CommunicationRepositoryImpl(this._socketService, [this._prefs]);

  @override
  Stream<List<ChatMessageModel>> getMessages(String threadId) {
    final controller = StreamController<List<ChatMessageModel>>();
    final List<ChatMessageModel> messages = _loadCachedMessages(threadId);

    if (messages.isNotEmpty) {
      controller.add(List.from(messages));
    }

    _socketService.on('new_message_$threadId', (data) {
      final msg = ChatMessageModel.fromJson(data);
      messages.insert(0, msg);
      _cacheMessages(threadId, messages);
      if (!controller.isClosed) controller.add(List.from(messages));
    });

    return controller.stream;
  }

  List<ChatMessageModel> _loadCachedMessages(String threadId) {
    final jsonStr = _prefs?.getString('$_chatCachePrefix$threadId');
    if (jsonStr == null) return [];
    try {
      final List<dynamic> list = jsonDecode(jsonStr);
      return list.map((item) => ChatMessageModel.fromJson(item)).toList();
    } catch (_) {
      return [];
    }
  }

  void _cacheMessages(String threadId, List<ChatMessageModel> messages) {
    _prefs?.setString('$_chatCachePrefix$threadId',
        jsonEncode(messages.map((m) => m.toJson()).toList()));
  }

  @override
  Future<ChatThreadModel> getOrCreateThread({
    required String orderId,
    required String participantId,
    required String participantName,
    required String participantPhoto,
    required ChatParticipantType participantType,
  }) async {
    return ChatThreadModel(
      id: 'thread_$orderId',
      orderId: orderId,
      customerId: 'cust_1',
      deliveryPartnerId: participantId,
      participantName: participantName,
      participantPhoto: participantPhoto,
      participantType: participantType,
      updatedAt: DateTime.now(),
    );
  }

  @override
  Future<void> sendMessage(ChatMessageModel message) async {
    _socketService.emit('send_message', message.toJson());
    // Opt-optimistically cache?
    // Usually, we wait for server confirmation or socket echo.
  }

  @override
  Future<void> markMessagesAsRead(String threadId) async {
    _socketService.emit('mark_read', {'threadId': threadId});
  }

  @override
  Future<void> setTypingStatus(String threadId, bool isTyping) async {
    _socketService
        .emit('typing_status', {'threadId': threadId, 'isTyping': isTyping});
  }

  @override
  Stream<ChatThreadModel> getThreadStream(String threadId) {
    final controller = StreamController<ChatThreadModel>();
    _socketService.on('thread_update_$threadId', (data) {
      if (!controller.isClosed) controller.add(ChatThreadModel.fromJson(data));
    });
    return controller.stream;
  }

  @override
  Future<CallModel> initiateCall({
    required String orderId,
    required String receiverId,
    required CallType type,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<void> endCall(String callId) async {}

  @override
  Future<List<DeliveryNoteModel>> getDeliveryNotes() async => [];

  @override
  Future<void> saveDeliveryNote(DeliveryNoteModel note) async {}

  @override
  Future<List<String>> getAISmartReplies(String lastMessageText) async =>
      ['I am coming', 'Call me', 'Okay'];
}
