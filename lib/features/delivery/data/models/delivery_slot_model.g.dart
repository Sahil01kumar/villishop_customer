// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliverySlotModelImpl _$$DeliverySlotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliverySlotModelImpl(
      slotId: json['slotId'] as String,
      deliveryType: $enumDecode(_$DeliveryTypeEnumMap, json['deliveryType']),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      estimatedMinutes: (json['estimatedMinutes'] as num?)?.toInt() ?? 0,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      originalCharge: (json['originalCharge'] as num?)?.toDouble() ?? 0.0,
      isFree: json['isFree'] as bool? ?? false,
      isAvailable: json['isAvailable'] as bool? ?? true,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      capacity: (json['capacity'] as num?)?.toInt() ?? 0,
      remainingCapacity: (json['remainingCapacity'] as num?)?.toInt() ?? 0,
      offerTag: json['offerTag'] as String?,
      badge: json['badge'] as String?,
      unavailableReason: json['unavailableReason'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$DeliverySlotModelImplToJson(
        _$DeliverySlotModelImpl instance) =>
    <String, dynamic>{
      'slotId': instance.slotId,
      'deliveryType': _$DeliveryTypeEnumMap[instance.deliveryType]!,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'estimatedMinutes': instance.estimatedMinutes,
      'deliveryCharge': instance.deliveryCharge,
      'originalCharge': instance.originalCharge,
      'isFree': instance.isFree,
      'isAvailable': instance.isAvailable,
      'priority': instance.priority,
      'capacity': instance.capacity,
      'remainingCapacity': instance.remainingCapacity,
      'offerTag': instance.offerTag,
      'badge': instance.badge,
      'unavailableReason': instance.unavailableReason,
      'label': instance.label,
    };

const _$DeliveryTypeEnumMap = {
  DeliveryType.instant: 'instant',
  DeliveryType.express: 'express',
  DeliveryType.scheduled: 'scheduled',
  DeliveryType.standard: 'standard',
};
