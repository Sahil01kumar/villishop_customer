// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_tracking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderTrackingModelImpl _$$OrderTrackingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderTrackingModelImpl(
      trackingId: json['trackingId'] as String,
      orderId: json['orderId'] as String,
      status: $enumDecode(_$TrackingStatusEnumMap, json['status']),
      timeline: (json['timeline'] as List<dynamic>)
          .map((e) => TrackingTimelineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceLocation:
          GeoPoint.fromJson(json['sourceLocation'] as Map<String, dynamic>),
      destinationLocation: GeoPoint.fromJson(
          json['destinationLocation'] as Map<String, dynamic>),
      deliveryAddress: json['deliveryAddress'] as String,
      currentRiderLocation: json['currentRiderLocation'] == null
          ? null
          : GeoPoint.fromJson(
              json['currentRiderLocation'] as Map<String, dynamic>),
      estimatedDistanceKm:
          (json['estimatedDistanceKm'] as num?)?.toDouble() ?? 0.0,
      estimatedEtaMinutes: (json['estimatedEtaMinutes'] as num?)?.toInt() ?? 0,
      riderName: json['riderName'] as String?,
      riderPhone: json['riderPhone'] as String?,
      riderPhoto: json['riderPhoto'] as String?,
      riderRating: (json['riderRating'] as num?)?.toDouble() ?? 4.8,
      vehicleNumber: json['vehicleNumber'] as String?,
      polylinePoints: json['polylinePoints'] as String?,
      otp: json['otp'] as String?,
      health: $enumDecodeNullable(_$DeliveryHealthEnumMap, json['health']) ??
          DeliveryHealth.excellent,
      isReroutingActive: json['isReroutingActive'] as bool? ?? false,
      inCustomerRadius: json['inCustomerRadius'] as bool? ?? false,
    );

Map<String, dynamic> _$$OrderTrackingModelImplToJson(
        _$OrderTrackingModelImpl instance) =>
    <String, dynamic>{
      'trackingId': instance.trackingId,
      'orderId': instance.orderId,
      'status': _$TrackingStatusEnumMap[instance.status]!,
      'timeline': instance.timeline,
      'sourceLocation': instance.sourceLocation,
      'destinationLocation': instance.destinationLocation,
      'deliveryAddress': instance.deliveryAddress,
      'currentRiderLocation': instance.currentRiderLocation,
      'estimatedDistanceKm': instance.estimatedDistanceKm,
      'estimatedEtaMinutes': instance.estimatedEtaMinutes,
      'riderName': instance.riderName,
      'riderPhone': instance.riderPhone,
      'riderPhoto': instance.riderPhoto,
      'riderRating': instance.riderRating,
      'vehicleNumber': instance.vehicleNumber,
      'polylinePoints': instance.polylinePoints,
      'otp': instance.otp,
      'health': _$DeliveryHealthEnumMap[instance.health]!,
      'isReroutingActive': instance.isReroutingActive,
      'inCustomerRadius': instance.inCustomerRadius,
    };

const _$TrackingStatusEnumMap = {
  TrackingStatus.orderPlaced: 'order_placed',
  TrackingStatus.partnerAssigned: 'partner_assigned',
  TrackingStatus.liveTracking: 'live_tracking',
  TrackingStatus.delivered: 'delivered',
};

const _$DeliveryHealthEnumMap = {
  DeliveryHealth.excellent: 'excellent',
  DeliveryHealth.moderate: 'moderate',
  DeliveryHealth.delayed: 'delayed',
};

_$TrackingTimelineItemImpl _$$TrackingTimelineItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TrackingTimelineItemImpl(
      status: $enumDecode(_$TrackingStatusEnumMap, json['status']),
      title: json['title'] as String,
      description: json['description'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isCompleted: json['isCompleted'] as bool? ?? false,
      isCurrent: json['isCurrent'] as bool? ?? false,
    );

Map<String, dynamic> _$$TrackingTimelineItemImplToJson(
        _$TrackingTimelineItemImpl instance) =>
    <String, dynamic>{
      'status': _$TrackingStatusEnumMap[instance.status]!,
      'title': instance.title,
      'description': instance.description,
      'timestamp': instance.timestamp.toIso8601String(),
      'isCompleted': instance.isCompleted,
      'isCurrent': instance.isCurrent,
    };

_$GeoPointImpl _$$GeoPointImplFromJson(Map<String, dynamic> json) =>
    _$GeoPointImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$GeoPointImplToJson(_$GeoPointImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
