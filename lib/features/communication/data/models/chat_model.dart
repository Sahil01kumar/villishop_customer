import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

enum MessageStatus {
  @JsonValue('sending')
  sending,
  @JsonValue('sent')
  sent,
  @JsonValue('delivered')
  delivered,
  @JsonValue('read')
  read,
  @JsonValue('failed')
  failed,
}

enum ChatParticipantType {
  @JsonValue('customer')
  customer,
  @JsonValue('rider')
  rider,
  @JsonValue('shop')
  shop,
  @JsonValue('support')
  support,
}

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    required String id,
    required String threadId,
    required String senderId,
    required String senderName,
    required ChatParticipantType senderType,
    required String text,
    required DateTime timestamp,
    @Default(MessageStatus.sent) MessageStatus status,
    String? imageUrl,
    String? voiceUrl,
    @Default(false) bool isQuickReply,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

@freezed
class ChatThreadModel with _$ChatThreadModel {
  const factory ChatThreadModel({
    required String id,
    required String orderId,
    required String customerId,
    required String deliveryPartnerId,
    required String participantName,
    required String participantPhoto,
    required ChatParticipantType participantType,
    ChatMessageModel? lastMessage,
    @Default(0) int unreadCount,
    @Default(false) bool isTyping,
    required DateTime updatedAt,
    DateTime? lastSeen,
    @Default(true) bool isActive, // false if order is completed + timeout
  }) = _ChatThreadModel;

  factory ChatThreadModel.fromJson(Map<String, dynamic> json) =>
      _$ChatThreadModelFromJson(json);
}
