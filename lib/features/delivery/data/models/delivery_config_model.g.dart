// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryConfigModelImpl _$$DeliveryConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryConfigModelImpl(
      tiers: (json['tiers'] as List<dynamic>?)
              ?.map((e) => DeliveryTier.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      defaultBaseCharge: (json['defaultBaseCharge'] as num?)?.toDouble() ?? 0.0,
      isPremiumMembershipFree:
          json['isPremiumMembershipFree'] as bool? ?? false,
      isFirstOrderFree: json['isFirstOrderFree'] as bool? ?? false,
      isFestivalCampaignActive:
          json['isFestivalCampaignActive'] as bool? ?? false,
      distanceChargePerKm:
          (json['distanceChargePerKm'] as num?)?.toDouble() ?? 0.0,
      packagingFee: (json['packagingFee'] as num?)?.toDouble() ?? 0.0,
      handlingFee: (json['handlingFee'] as num?)?.toDouble() ?? 0.0,
      deliveryStartTime: json['deliveryStartTime'] as String? ?? '07:00',
      deliveryEndTime: json['deliveryEndTime'] as String? ?? '23:00',
      slotDurationMinutes: (json['slotDurationMinutes'] as num?)?.toInt() ?? 60,
      maxOrdersPerSlot: (json['maxOrdersPerSlot'] as num?)?.toInt() ?? 20,
      holidays: (json['holidays'] as List<dynamic>?)
              ?.map((e) => DateTime.parse(e as String))
              .toList() ??
          const [],
      isRainActive: json['isRainActive'] as bool? ?? false,
      rainMultiplier: (json['rainMultiplier'] as num?)?.toDouble() ?? 1.0,
      peakHourMultiplier:
          (json['peakHourMultiplier'] as num?)?.toDouble() ?? 1.2,
      nightChargeMultiplier:
          (json['nightChargeMultiplier'] as num?)?.toDouble() ?? 1.5,
      deliveryPartnerPayoutRatio:
          (json['deliveryPartnerPayoutRatio'] as num?)?.toDouble() ?? 0.8,
      platformRetentionRatio:
          (json['platformRetentionRatio'] as num?)?.toDouble() ?? 0.2,
      enableAIRecommendations:
          json['enableAIRecommendations'] as bool? ?? false,
      enableAIEtaPrediction: json['enableAIEtaPrediction'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeliveryConfigModelImplToJson(
        _$DeliveryConfigModelImpl instance) =>
    <String, dynamic>{
      'tiers': instance.tiers,
      'defaultBaseCharge': instance.defaultBaseCharge,
      'isPremiumMembershipFree': instance.isPremiumMembershipFree,
      'isFirstOrderFree': instance.isFirstOrderFree,
      'isFestivalCampaignActive': instance.isFestivalCampaignActive,
      'distanceChargePerKm': instance.distanceChargePerKm,
      'packagingFee': instance.packagingFee,
      'handlingFee': instance.handlingFee,
      'deliveryStartTime': instance.deliveryStartTime,
      'deliveryEndTime': instance.deliveryEndTime,
      'slotDurationMinutes': instance.slotDurationMinutes,
      'maxOrdersPerSlot': instance.maxOrdersPerSlot,
      'holidays': instance.holidays.map((e) => e.toIso8601String()).toList(),
      'isRainActive': instance.isRainActive,
      'rainMultiplier': instance.rainMultiplier,
      'peakHourMultiplier': instance.peakHourMultiplier,
      'nightChargeMultiplier': instance.nightChargeMultiplier,
      'deliveryPartnerPayoutRatio': instance.deliveryPartnerPayoutRatio,
      'platformRetentionRatio': instance.platformRetentionRatio,
      'enableAIRecommendations': instance.enableAIRecommendations,
      'enableAIEtaPrediction': instance.enableAIEtaPrediction,
    };

_$DeliveryTierImpl _$$DeliveryTierImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryTierImpl(
      minOrderValue: (json['minOrderValue'] as num).toDouble(),
      maxOrderValue: (json['maxOrderValue'] as num).toDouble(),
      charge: (json['charge'] as num).toDouble(),
    );

Map<String, dynamic> _$$DeliveryTierImplToJson(_$DeliveryTierImpl instance) =>
    <String, dynamic>{
      'minOrderValue': instance.minOrderValue,
      'maxOrderValue': instance.maxOrderValue,
      'charge': instance.charge,
    };
