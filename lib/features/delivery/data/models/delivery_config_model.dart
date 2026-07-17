import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_config_model.freezed.dart';
part 'delivery_config_model.g.dart';

@freezed
class DeliveryConfigModel with _$DeliveryConfigModel {
  const factory DeliveryConfigModel({
    @Default([]) List<DeliveryTier> tiers,
    @Default(0.0) double defaultBaseCharge,
    @Default(false) bool isPremiumMembershipFree,
    @Default(false) bool isFirstOrderFree,
    @Default(false) bool isFestivalCampaignActive,
    @Default(0.0) double distanceChargePerKm,
    @Default(0.0) double packagingFee,
    @Default(0.0) double handlingFee,

    // Admin Configuration
    @Default('07:00') String deliveryStartTime,
    @Default('23:00') String deliveryEndTime,
    @Default(60) int slotDurationMinutes,
    @Default(20) int maxOrdersPerSlot,
    @Default([]) List<DateTime> holidays,

    // Surge Multipliers & Rules
    @Default(false) bool isRainActive,
    @Default(1.0) double rainMultiplier,
    @Default(1.2) double peakHourMultiplier,
    @Default(1.5) double nightChargeMultiplier,

    // Revenue Ready (Internal)
    @Default(0.8) double deliveryPartnerPayoutRatio,
    @Default(0.2) double platformRetentionRatio,

    // AI Prediction Placeholders (Architecture Ready)
    @Default(false) bool enableAIRecommendations,
    @Default(false) bool enableAIEtaPrediction,
  }) = _DeliveryConfigModel;

  factory DeliveryConfigModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryConfigModelFromJson(json);
}

@freezed
class DeliveryTier with _$DeliveryTier {
  const factory DeliveryTier({
    required double minOrderValue,
    required double maxOrderValue,
    required double charge,
  }) = _DeliveryTier;

  factory DeliveryTier.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTierFromJson(json);
}
