// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_charge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryChargeModelImpl _$$DeliveryChargeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryChargeModelImpl(
      baseCharge: (json['baseCharge'] as num?)?.toDouble() ?? 0.0,
      distanceCharge: (json['distanceCharge'] as num?)?.toDouble() ?? 0.0,
      weightCharge: (json['weightCharge'] as num?)?.toDouble() ?? 0.0,
      volumeCharge: (json['volumeCharge'] as num?)?.toDouble() ?? 0.0,
      surgeCharge: (json['surgeCharge'] as num?)?.toDouble() ?? 0.0,
      packagingCharge: (json['packagingCharge'] as num?)?.toDouble() ?? 0.0,
      handlingCharge: (json['handlingCharge'] as num?)?.toDouble() ?? 0.0,
      fragileItemCharge: (json['fragileItemCharge'] as num?)?.toDouble() ?? 0.0,
      coldStorageCharge: (json['coldStorageCharge'] as num?)?.toDouble() ?? 0.0,
      expressCharge: (json['expressCharge'] as num?)?.toDouble() ?? 0.0,
      totalCharge: (json['totalCharge'] as num?)?.toDouble() ?? 0.0,
      deliveryPartnerEarning:
          (json['deliveryPartnerEarning'] as num?)?.toDouble() ?? 0.0,
      platformMargin: (json['platformMargin'] as num?)?.toDouble() ?? 0.0,
      shopContribution: (json['shopContribution'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$DeliveryChargeModelImplToJson(
        _$DeliveryChargeModelImpl instance) =>
    <String, dynamic>{
      'baseCharge': instance.baseCharge,
      'distanceCharge': instance.distanceCharge,
      'weightCharge': instance.weightCharge,
      'volumeCharge': instance.volumeCharge,
      'surgeCharge': instance.surgeCharge,
      'packagingCharge': instance.packagingCharge,
      'handlingCharge': instance.handlingCharge,
      'fragileItemCharge': instance.fragileItemCharge,
      'coldStorageCharge': instance.coldStorageCharge,
      'expressCharge': instance.expressCharge,
      'totalCharge': instance.totalCharge,
      'deliveryPartnerEarning': instance.deliveryPartnerEarning,
      'platformMargin': instance.platformMargin,
      'shopContribution': instance.shopContribution,
    };
