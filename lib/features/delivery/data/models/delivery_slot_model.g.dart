// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliverySlotModelImpl _$$DeliverySlotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliverySlotModelImpl(
      id: json['id'] as String,
      type: $enumDecode(_$SlotTypeEnumMap, json['type']),
      label: json['label'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      isAvailable: json['isAvailable'] as bool? ?? true,
      additionalCharge: (json['additionalCharge'] as num?)?.toDouble() ?? 0.0,
      eta: json['eta'] as String?,
    );

Map<String, dynamic> _$$DeliverySlotModelImplToJson(
        _$DeliverySlotModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SlotTypeEnumMap[instance.type]!,
      'label': instance.label,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'isAvailable': instance.isAvailable,
      'additionalCharge': instance.additionalCharge,
      'eta': instance.eta,
    };

const _$SlotTypeEnumMap = {
  SlotType.instant: 'instant',
  SlotType.morning: 'morning',
  SlotType.afternoon: 'afternoon',
  SlotType.evening: 'evening',
  SlotType.night: 'night',
  SlotType.scheduled: 'scheduled',
};
