// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderCreatedEventImpl _$$OrderCreatedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderCreatedEventImpl(
      orderId: json['orderId'] as String,
      data: json['data'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderCreatedEventImplToJson(
        _$OrderCreatedEventImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'data': instance.data,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$OrderUpdatedEventImpl _$$OrderUpdatedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderUpdatedEventImpl(
      orderId: json['orderId'] as String,
      status: json['status'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderUpdatedEventImplToJson(
        _$OrderUpdatedEventImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'status': instance.status,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$PartnerAssignedEventImpl _$$PartnerAssignedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$PartnerAssignedEventImpl(
      orderId: json['orderId'] as String,
      partnerId: json['partnerId'] as String,
      partnerData: json['partnerData'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartnerAssignedEventImplToJson(
        _$PartnerAssignedEventImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'partnerId': instance.partnerId,
      'partnerData': instance.partnerData,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$PartnerLocationChangedEventImpl _$$PartnerLocationChangedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$PartnerLocationChangedEventImpl(
      orderId: json['orderId'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      heading: (json['heading'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartnerLocationChangedEventImplToJson(
        _$PartnerLocationChangedEventImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'heading': instance.heading,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$OrderDeliveredEventImpl _$$OrderDeliveredEventImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDeliveredEventImpl(
      orderId: json['orderId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderDeliveredEventImplToJson(
        _$OrderDeliveredEventImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$OrderCancelledEventImpl _$$OrderCancelledEventImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderCancelledEventImpl(
      orderId: json['orderId'] as String,
      reason: json['reason'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderCancelledEventImplToJson(
        _$OrderCancelledEventImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'reason': instance.reason,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$ShopStatusChangedEventImpl _$$ShopStatusChangedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopStatusChangedEventImpl(
      shopId: json['shopId'] as String,
      isOpen: json['isOpen'] as bool,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShopStatusChangedEventImplToJson(
        _$ShopStatusChangedEventImpl instance) =>
    <String, dynamic>{
      'shopId': instance.shopId,
      'isOpen': instance.isOpen,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$NotificationReceivedEventImpl _$$NotificationReceivedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationReceivedEventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      payload: json['payload'] as Map<String, dynamic>,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotificationReceivedEventImplToJson(
        _$NotificationReceivedEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'payload': instance.payload,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$SupportMessageReceivedEventImpl _$$SupportMessageReceivedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportMessageReceivedEventImpl(
      threadId: json['threadId'] as String,
      messageId: json['messageId'] as String,
      text: json['text'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SupportMessageReceivedEventImplToJson(
        _$SupportMessageReceivedEventImpl instance) =>
    <String, dynamic>{
      'threadId': instance.threadId,
      'messageId': instance.messageId,
      'text': instance.text,
      'timestamp': instance.timestamp.toIso8601String(),
      'runtimeType': instance.$type,
    };
