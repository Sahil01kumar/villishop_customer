// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      id: json['id'] as String,
      threadId: json['threadId'] as String,
      senderId: json['senderId'] as String,
      senderName: json['senderName'] as String,
      senderType: $enumDecode(_$ChatParticipantTypeEnumMap, json['senderType']),
      text: json['text'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: $enumDecodeNullable(_$MessageStatusEnumMap, json['status']) ??
          MessageStatus.sent,
      imageUrl: json['imageUrl'] as String?,
      voiceUrl: json['voiceUrl'] as String?,
      isQuickReply: json['isQuickReply'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'threadId': instance.threadId,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'senderType': _$ChatParticipantTypeEnumMap[instance.senderType]!,
      'text': instance.text,
      'timestamp': instance.timestamp.toIso8601String(),
      'status': _$MessageStatusEnumMap[instance.status]!,
      'imageUrl': instance.imageUrl,
      'voiceUrl': instance.voiceUrl,
      'isQuickReply': instance.isQuickReply,
    };

const _$ChatParticipantTypeEnumMap = {
  ChatParticipantType.customer: 'customer',
  ChatParticipantType.rider: 'rider',
  ChatParticipantType.shop: 'shop',
  ChatParticipantType.support: 'support',
};

const _$MessageStatusEnumMap = {
  MessageStatus.sending: 'sending',
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.read: 'read',
  MessageStatus.failed: 'failed',
};

_$ChatThreadModelImpl _$$ChatThreadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatThreadModelImpl(
      id: json['id'] as String,
      orderId: json['orderId'] as String,
      customerId: json['customerId'] as String,
      deliveryPartnerId: json['deliveryPartnerId'] as String,
      participantName: json['participantName'] as String,
      participantPhoto: json['participantPhoto'] as String,
      participantType:
          $enumDecode(_$ChatParticipantTypeEnumMap, json['participantType']),
      lastMessage: json['lastMessage'] == null
          ? null
          : ChatMessageModel.fromJson(
              json['lastMessage'] as Map<String, dynamic>),
      unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
      isTyping: json['isTyping'] as bool? ?? false,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$ChatThreadModelImplToJson(
        _$ChatThreadModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'customerId': instance.customerId,
      'deliveryPartnerId': instance.deliveryPartnerId,
      'participantName': instance.participantName,
      'participantPhoto': instance.participantPhoto,
      'participantType':
          _$ChatParticipantTypeEnumMap[instance.participantType]!,
      'lastMessage': instance.lastMessage,
      'unreadCount': instance.unreadCount,
      'isTyping': instance.isTyping,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'lastSeen': instance.lastSeen?.toIso8601String(),
      'isActive': instance.isActive,
    };
