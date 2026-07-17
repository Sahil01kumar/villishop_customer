// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      category: $enumDecode(_$NotificationCategoryEnumMap, json['category']),
      priority: $enumDecodeNullable(
              _$NotificationPriorityEnumMap, json['priority']) ??
          NotificationPriority.normal,
      isRead: json['isRead'] as bool? ?? false,
      orderId: json['orderId'] as String?,
      imageUrl: json['imageUrl'] as String?,
      deepLink: json['deepLink'] as String?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => NotificationAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      progress: (json['progress'] as num?)?.toDouble(),
      eta: json['eta'] as String?,
      relevanceScore: (json['relevanceScore'] as num?)?.toDouble() ?? 1.0,
      scheduledTime: json['scheduledTime'] == null
          ? null
          : DateTime.parse(json['scheduledTime'] as String),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'timestamp': instance.timestamp.toIso8601String(),
      'category': _$NotificationCategoryEnumMap[instance.category]!,
      'priority': _$NotificationPriorityEnumMap[instance.priority]!,
      'isRead': instance.isRead,
      'orderId': instance.orderId,
      'imageUrl': instance.imageUrl,
      'deepLink': instance.deepLink,
      'actions': instance.actions,
      'progress': instance.progress,
      'eta': instance.eta,
      'relevanceScore': instance.relevanceScore,
      'scheduledTime': instance.scheduledTime?.toIso8601String(),
    };

const _$NotificationCategoryEnumMap = {
  NotificationCategory.orders: 'orders',
  NotificationCategory.offers: 'offers',
  NotificationCategory.payments: 'payments',
  NotificationCategory.wallet: 'wallet',
  NotificationCategory.support: 'support',
  NotificationCategory.announcements: 'announcements',
  NotificationCategory.general: 'general',
};

const _$NotificationPriorityEnumMap = {
  NotificationPriority.critical: 'critical',
  NotificationPriority.high: 'high',
  NotificationPriority.normal: 'normal',
  NotificationPriority.low: 'low',
};

_$NotificationActionImpl _$$NotificationActionImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationActionImpl(
      label: json['label'] as String,
      actionType:
          $enumDecode(_$NotificationActionTypeEnumMap, json['actionType']),
      payload: json['payload'] as String?,
    );

Map<String, dynamic> _$$NotificationActionImplToJson(
        _$NotificationActionImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'actionType': _$NotificationActionTypeEnumMap[instance.actionType]!,
      'payload': instance.payload,
    };

const _$NotificationActionTypeEnumMap = {
  NotificationActionType.trackOrder: 'track_order',
  NotificationActionType.callRider: 'call_rider',
  NotificationActionType.chatRider: 'chat_rider',
  NotificationActionType.viewOffers: 'view_offer',
  NotificationActionType.openWallet: 'open_wallet',
};
