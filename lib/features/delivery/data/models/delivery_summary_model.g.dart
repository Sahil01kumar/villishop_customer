// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliverySummaryModelImpl _$$DeliverySummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliverySummaryModelImpl(
      shopId: json['shopId'] as String,
      shopName: json['shopName'] as String,
      charges:
          DeliveryChargeModel.fromJson(json['charges'] as Map<String, dynamic>),
      selectedSlot: json['selectedSlot'] == null
          ? null
          : DeliverySlotModel.fromJson(
              json['selectedSlot'] as Map<String, dynamic>),
      estimatedEta: json['estimatedEta'] as String? ?? '10-15 mins',
      discountApplied: (json['discountApplied'] as num?)?.toDouble() ?? 0.0,
      isFreeDelivery: json['isFreeDelivery'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeliverySummaryModelImplToJson(
        _$DeliverySummaryModelImpl instance) =>
    <String, dynamic>{
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'charges': instance.charges,
      'selectedSlot': instance.selectedSlot,
      'estimatedEta': instance.estimatedEta,
      'discountApplied': instance.discountApplied,
      'isFreeDelivery': instance.isFreeDelivery,
    };
