import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum Gender { male, female, other }
enum MembershipType { normal, premium }

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    String? phoneNumber,
    String? name,
    String? email,
    String? profilePicture,
    Gender? gender,
    DateTime? dateOfBirth,
    String? houseNumber,
    String? apartment,
    String? landmark,
    String? city,
    String? state,
    String? pincode,
    @Default('English') String preferredLanguage,
    @Default(false) bool isProfileCompleted,
    DateTime? joinedAt,
    
    // Enterprise Enhancements
    @Default(MembershipInfo()) MembershipInfo membership,
    @Default(ReferralInfo()) ReferralInfo referral,
    @Default(RewardInfo()) RewardInfo rewards,
    @Default(WalletInfo()) WalletInfo wallet,
    @Default(PaymentInfo()) PaymentInfo payments,
    @Default(DeliveryPreference()) DeliveryPreference delivery,
    @Default(BusinessInfo()) BusinessInfo business,
    @Default(PreferenceSettings()) PreferenceSettings settings,
    @Default(AIProfile()) AIProfile aiProfile,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class MembershipInfo with _$MembershipInfo {
  const factory MembershipInfo({
    @Default(MembershipType.normal) MembershipType type,
    DateTime? startDate,
    DateTime? expiryDate,
    @Default([]) List<String> benefits,
  }) = _MembershipInfo;

  factory MembershipInfo.fromJson(Map<String, dynamic> json) => _$MembershipInfoFromJson(json);
}

@freezed
class ReferralInfo with _$ReferralInfo {
  const factory ReferralInfo({
    String? referralCode,
    String? referredBy,
    @Default(0.0) double balance,
    @Default(0.0) double totalEarnings,
    @Default([]) List<String> history, // Transaction IDs
  }) = _ReferralInfo;

  factory ReferralInfo.fromJson(Map<String, dynamic> json) => _$ReferralInfoFromJson(json);
}

@freezed
class RewardInfo with _$RewardInfo {
  const factory RewardInfo({
    @Default(0) int points,
    @Default(0) int lifetimePoints,
    @Default(0.0) double cashbackBalance,
    @Default(0) int coins,
    @Default('Bronze') String loyaltyLevel,
  }) = _RewardInfo;

  factory RewardInfo.fromJson(Map<String, dynamic> json) => _$RewardInfoFromJson(json);
}

@freezed
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    @Default(0.0) double balance,
    @Default(0.0) double cashbackAmount,
    @Default(0.0) double refundBalance,
    @Default([]) List<String> transactions,
  }) = _WalletInfo;

  factory WalletInfo.fromJson(Map<String, dynamic> json) => _$WalletInfoFromJson(json);
}

@freezed
class PaymentInfo with _$PaymentInfo {
  const factory PaymentInfo({
    @Default([]) List<String> savedUpiIds,
    @Default([]) List<String> savedCards,
    @Default([]) List<String> savedBankAccounts,
    String? preferredPaymentMethod,
  }) = _PaymentInfo;

  factory PaymentInfo.fromJson(Map<String, dynamic> json) => _$PaymentInfoFromJson(json);
}

@freezed
class DeliveryPreference with _$DeliveryPreference {
  const factory DeliveryPreference({
    String? preferredTimeSlot,
    @Default(false) bool contactlessDelivery,
    String? instructions,
  }) = _DeliveryPreference;

  factory DeliveryPreference.fromJson(Map<String, dynamic> json) => _$DeliveryPreferenceFromJson(json);
}

@freezed
class BusinessInfo with _$BusinessInfo {
  const factory BusinessInfo({
    String? gstNumber,
    String? businessName,
    @Default(false) bool isBusinessAccount,
  }) = _BusinessInfo;

  factory BusinessInfo.fromJson(Map<String, dynamic> json) => _$BusinessInfoFromJson(json);
}

@freezed
class PreferenceSettings with _$PreferenceSettings {
  const factory PreferenceSettings({
    @Default(true) bool pushNotifications,
    @Default(true) bool emailNotifications,
    @Default(true) bool smsNotifications,
    @Default(false) bool whatsappNotifications,
    @Default(true) bool marketingCommunications,
  }) = _PreferenceSettings;

  factory PreferenceSettings.fromJson(Map<String, dynamic> json) => _$PreferenceSettingsFromJson(json);
}

@freezed
class AIProfile with _$AIProfile {
  const factory AIProfile({
    @Default({}) Map<String, dynamic> shoppingPreferences,
    @Default([]) List<String> recommendations,
    @Default({}) Map<String, dynamic> nutritionProfile,
    @Default({}) Map<String, dynamic> buyingBehaviour,
    @Default(0.0) double loyaltyScore,
  }) = _AIProfile;

  factory AIProfile.fromJson(Map<String, dynamic> json) => _$AIProfileFromJson(json);
}
