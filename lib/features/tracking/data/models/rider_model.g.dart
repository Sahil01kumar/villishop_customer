// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RiderModelImpl _$$RiderModelImplFromJson(Map<String, dynamic> json) =>
    _$RiderModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
      rating: (json['rating'] as num).toDouble(),
      completedDeliveries: (json['completedDeliveries'] as num).toInt(),
      vehicleNumber: json['vehicleNumber'] as String,
      vehicleType: json['vehicleType'] as String,
      currentLocation:
          GeoPoint.fromJson(json['currentLocation'] as Map<String, dynamic>),
      heading: (json['heading'] as num).toDouble(),
      currentSpeedKmph: (json['currentSpeedKmph'] as num).toDouble(),
      status: $enumDecode(_$RiderActivityStatusEnumMap, json['status']),
      batteryPercentage: (json['batteryPercentage'] as num?)?.toInt() ?? 100,
      networkQuality: json['networkQuality'] as String? ?? 'Excellent',
      distanceToDestinationKm:
          (json['distanceToDestinationKm'] as num?)?.toDouble() ?? 0.0,
      etaToDestinationMinutes:
          (json['etaToDestinationMinutes'] as num?)?.toInt() ?? 0,
      experienceYears: (json['experienceYears'] as num?)?.toDouble() ?? 2.5,
      isHelmetVerified: json['isHelmetVerified'] as bool? ?? true,
      isIdentityVerified: json['isIdentityVerified'] as bool? ?? true,
      isPoliceVerified: json['isPoliceVerified'] as bool? ?? true,
      isBackgroundVerified: json['isBackgroundVerified'] as bool? ?? true,
      partnerId: json['partnerId'] as String? ?? 'VS-PARTNER-1024',
      todayDeliveries: (json['todayDeliveries'] as num?)?.toInt() ?? 14,
      acceptanceRate: (json['acceptanceRate'] as num?)?.toDouble() ?? 98.5,
      avgDeliveryTimeMinutes:
          (json['avgDeliveryTimeMinutes'] as num?)?.toInt() ?? 18,
      lastActive: json['lastActive'] == null
          ? null
          : DateTime.parse(json['lastActive'] as String),
      currentShift: json['currentShift'] as String? ?? 'Day Shift',
      vehicleFuelType: json['vehicleFuelType'] as String? ?? 'Electric',
      isEV: json['isEV'] as bool? ?? true,
      safetyMessage: json['safetyMessage'] as String?,
      handleWithCare: json['handleWithCare'] as bool? ?? true,
      temperatureControlled: json['temperatureControlled'] as bool? ?? false,
      averageSpeedKmph: (json['averageSpeedKmph'] as num?)?.toDouble() ?? 22.5,
      idleTimeSeconds: (json['idleTimeSeconds'] as num?)?.toInt() ?? 0,
      movingTimeSeconds: (json['movingTimeSeconds'] as num?)?.toInt() ?? 1200,
      pausedTimeSeconds: (json['pausedTimeSeconds'] as num?)?.toInt() ?? 0,
      gpsAccuracyMeters: (json['gpsAccuracyMeters'] as num?)?.toDouble() ?? 5.0,
      internetQuality: json['internetQuality'] as String? ?? '4G+',
      locationFreshnessMs: (json['locationFreshnessMs'] as num?)?.toInt() ?? 0,
      trafficScore: (json['trafficScore'] as num?)?.toDouble() ?? 1.0,
      roadQuality: json['roadQuality'] as String? ?? 'Good',
      weatherStatus: json['weatherStatus'] as String? ?? 'Clear',
      isDelayed: json['isDelayed'] as bool? ?? false,
      aiRiderScore: (json['aiRiderScore'] as num?)?.toDouble() ?? 9.8,
      aiSafetyScore: (json['aiSafetyScore'] as num?)?.toDouble() ?? 9.9,
      aiDrivingBehaviour:
          json['aiDrivingBehaviour'] as String? ?? 'Professional',
      aiFatigueDetected: json['aiFatigueDetected'] as bool? ?? false,
      aiDeliveryConfidence:
          (json['aiDeliveryConfidence'] as num?)?.toDouble() ?? 0.98,
    );

Map<String, dynamic> _$$RiderModelImplToJson(_$RiderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'rating': instance.rating,
      'completedDeliveries': instance.completedDeliveries,
      'vehicleNumber': instance.vehicleNumber,
      'vehicleType': instance.vehicleType,
      'currentLocation': instance.currentLocation,
      'heading': instance.heading,
      'currentSpeedKmph': instance.currentSpeedKmph,
      'status': _$RiderActivityStatusEnumMap[instance.status]!,
      'batteryPercentage': instance.batteryPercentage,
      'networkQuality': instance.networkQuality,
      'distanceToDestinationKm': instance.distanceToDestinationKm,
      'etaToDestinationMinutes': instance.etaToDestinationMinutes,
      'experienceYears': instance.experienceYears,
      'isHelmetVerified': instance.isHelmetVerified,
      'isIdentityVerified': instance.isIdentityVerified,
      'isPoliceVerified': instance.isPoliceVerified,
      'isBackgroundVerified': instance.isBackgroundVerified,
      'partnerId': instance.partnerId,
      'todayDeliveries': instance.todayDeliveries,
      'acceptanceRate': instance.acceptanceRate,
      'avgDeliveryTimeMinutes': instance.avgDeliveryTimeMinutes,
      'lastActive': instance.lastActive?.toIso8601String(),
      'currentShift': instance.currentShift,
      'vehicleFuelType': instance.vehicleFuelType,
      'isEV': instance.isEV,
      'safetyMessage': instance.safetyMessage,
      'handleWithCare': instance.handleWithCare,
      'temperatureControlled': instance.temperatureControlled,
      'averageSpeedKmph': instance.averageSpeedKmph,
      'idleTimeSeconds': instance.idleTimeSeconds,
      'movingTimeSeconds': instance.movingTimeSeconds,
      'pausedTimeSeconds': instance.pausedTimeSeconds,
      'gpsAccuracyMeters': instance.gpsAccuracyMeters,
      'internetQuality': instance.internetQuality,
      'locationFreshnessMs': instance.locationFreshnessMs,
      'trafficScore': instance.trafficScore,
      'roadQuality': instance.roadQuality,
      'weatherStatus': instance.weatherStatus,
      'isDelayed': instance.isDelayed,
      'aiRiderScore': instance.aiRiderScore,
      'aiSafetyScore': instance.aiSafetyScore,
      'aiDrivingBehaviour': instance.aiDrivingBehaviour,
      'aiFatigueDetected': instance.aiFatigueDetected,
      'aiDeliveryConfidence': instance.aiDeliveryConfidence,
    };

const _$RiderActivityStatusEnumMap = {
  RiderActivityStatus.assigned: 'assigned',
  RiderActivityStatus.headingToStore: 'heading_to_store',
  RiderActivityStatus.waitingAtStore: 'waiting_at_store',
  RiderActivityStatus.pickingItems: 'picking_items',
  RiderActivityStatus.leavingStore: 'leaving_store',
  RiderActivityStatus.onTheWay: 'on_the_way',
  RiderActivityStatus.nearYou: 'near_you',
  RiderActivityStatus.arrived: 'arrived',
  RiderActivityStatus.delivered: 'delivered',
};
