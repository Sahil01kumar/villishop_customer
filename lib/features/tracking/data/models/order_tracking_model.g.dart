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
      completedDeliveries: (json['completedDeliveries'] as num?)?.toInt() ?? 0,
      vehicleType: json['vehicleType'] as String?,
      vehicleNumber: json['vehicleNumber'] as String?,
      currentSpeedKmph: (json['currentSpeedKmph'] as num?)?.toDouble() ?? 0.0,
      polylinePoints: json['polylinePoints'] as String?,
      otp: json['otp'] as String?,
      health: $enumDecodeNullable(_$DeliveryHealthEnumMap, json['health']) ??
          DeliveryHealth.excellent,
      delayReason:
          $enumDecodeNullable(_$DelayReasonEnumMap, json['delayReason']) ??
              DelayReason.none,
      isReroutingActive: json['isReroutingActive'] as bool? ?? false,
      inCustomerRadius: json['inCustomerRadius'] as bool? ?? false,
      isNearbyZoneDelivery: json['isNearbyZoneDelivery'] as bool? ?? false,
      nearbyZoneName: json['nearbyZoneName'] as String?,
      isExpress: json['isExpress'] as bool? ?? false,
      isPriority: json['isPriority'] as bool? ?? false,
      isColdChain: json['isColdChain'] as bool? ?? false,
      isFragile: json['isFragile'] as bool? ?? false,
      isCOD: json['isCOD'] as bool? ?? false,
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
      'completedDeliveries': instance.completedDeliveries,
      'vehicleType': instance.vehicleType,
      'vehicleNumber': instance.vehicleNumber,
      'currentSpeedKmph': instance.currentSpeedKmph,
      'polylinePoints': instance.polylinePoints,
      'otp': instance.otp,
      'health': _$DeliveryHealthEnumMap[instance.health]!,
      'delayReason': _$DelayReasonEnumMap[instance.delayReason]!,
      'isReroutingActive': instance.isReroutingActive,
      'inCustomerRadius': instance.inCustomerRadius,
      'isNearbyZoneDelivery': instance.isNearbyZoneDelivery,
      'nearbyZoneName': instance.nearbyZoneName,
      'isExpress': instance.isExpress,
      'isPriority': instance.isPriority,
      'isColdChain': instance.isColdChain,
      'isFragile': instance.isFragile,
      'isCOD': instance.isCOD,
    };

const _$TrackingStatusEnumMap = {
  TrackingStatus.orderConfirmed: 'order_confirmed',
  TrackingStatus.preparing: 'preparing',
  TrackingStatus.riderAssigned: 'rider_assigned',
  TrackingStatus.onTheWay: 'on_the_way',
  TrackingStatus.nearby: 'nearby',
  TrackingStatus.delivered: 'delivered',
};

const _$DeliveryHealthEnumMap = {
  DeliveryHealth.excellent: 'excellent',
  DeliveryHealth.moderate: 'moderate',
  DeliveryHealth.delayed: 'delayed',
};

const _$DelayReasonEnumMap = {
  DelayReason.none: 'none',
  DelayReason.traffic: 'traffic',
  DelayReason.heavyRain: 'rain',
  DelayReason.festivalRush: 'festival',
  DelayReason.highDemand: 'high_demand',
  DelayReason.storeDelay: 'store_delay',
  DelayReason.vehicleIssue: 'vehicle_issue',
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
