// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profilePicture'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      houseNumber: json['houseNumber'] as String?,
      apartment: json['apartment'] as String?,
      landmark: json['landmark'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
      preferredLanguage: json['preferredLanguage'] as String? ?? 'English',
      isProfileCompleted: json['isProfileCompleted'] as bool? ?? false,
      joinedAt: json['joinedAt'] == null
          ? null
          : DateTime.parse(json['joinedAt'] as String),
      membership: json['membership'] == null
          ? const MembershipInfo()
          : MembershipInfo.fromJson(json['membership'] as Map<String, dynamic>),
      referral: json['referral'] == null
          ? const ReferralInfo()
          : ReferralInfo.fromJson(json['referral'] as Map<String, dynamic>),
      rewards: json['rewards'] == null
          ? const RewardInfo()
          : RewardInfo.fromJson(json['rewards'] as Map<String, dynamic>),
      wallet: json['wallet'] == null
          ? const WalletInfo()
          : WalletInfo.fromJson(json['wallet'] as Map<String, dynamic>),
      payments: json['payments'] == null
          ? const PaymentInfo()
          : PaymentInfo.fromJson(json['payments'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? const DeliveryPreference()
          : DeliveryPreference.fromJson(
              json['delivery'] as Map<String, dynamic>),
      business: json['business'] == null
          ? const BusinessInfo()
          : BusinessInfo.fromJson(json['business'] as Map<String, dynamic>),
      settings: json['settings'] == null
          ? const PreferenceSettings()
          : PreferenceSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      aiProfile: json['aiProfile'] == null
          ? const AIProfile()
          : AIProfile.fromJson(json['aiProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
      'gender': _$GenderEnumMap[instance.gender],
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'houseNumber': instance.houseNumber,
      'apartment': instance.apartment,
      'landmark': instance.landmark,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'preferredLanguage': instance.preferredLanguage,
      'isProfileCompleted': instance.isProfileCompleted,
      'joinedAt': instance.joinedAt?.toIso8601String(),
      'membership': instance.membership,
      'referral': instance.referral,
      'rewards': instance.rewards,
      'wallet': instance.wallet,
      'payments': instance.payments,
      'delivery': instance.delivery,
      'business': instance.business,
      'settings': instance.settings,
      'aiProfile': instance.aiProfile,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

_$MembershipInfoImpl _$$MembershipInfoImplFromJson(Map<String, dynamic> json) =>
    _$MembershipInfoImpl(
      type: $enumDecodeNullable(_$MembershipTypeEnumMap, json['type']) ??
          MembershipType.normal,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      benefits: (json['benefits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MembershipInfoImplToJson(
        _$MembershipInfoImpl instance) =>
    <String, dynamic>{
      'type': _$MembershipTypeEnumMap[instance.type]!,
      'startDate': instance.startDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'benefits': instance.benefits,
    };

const _$MembershipTypeEnumMap = {
  MembershipType.normal: 'normal',
  MembershipType.premium: 'premium',
};

_$ReferralInfoImpl _$$ReferralInfoImplFromJson(Map<String, dynamic> json) =>
    _$ReferralInfoImpl(
      referralCode: json['referralCode'] as String?,
      referredBy: json['referredBy'] as String?,
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      totalEarnings: (json['totalEarnings'] as num?)?.toDouble() ?? 0.0,
      history: (json['history'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReferralInfoImplToJson(_$ReferralInfoImpl instance) =>
    <String, dynamic>{
      'referralCode': instance.referralCode,
      'referredBy': instance.referredBy,
      'balance': instance.balance,
      'totalEarnings': instance.totalEarnings,
      'history': instance.history,
    };

_$RewardInfoImpl _$$RewardInfoImplFromJson(Map<String, dynamic> json) =>
    _$RewardInfoImpl(
      points: (json['points'] as num?)?.toInt() ?? 0,
      lifetimePoints: (json['lifetimePoints'] as num?)?.toInt() ?? 0,
      cashbackBalance: (json['cashbackBalance'] as num?)?.toDouble() ?? 0.0,
      coins: (json['coins'] as num?)?.toInt() ?? 0,
      loyaltyLevel: json['loyaltyLevel'] as String? ?? 'Bronze',
    );

Map<String, dynamic> _$$RewardInfoImplToJson(_$RewardInfoImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
      'lifetimePoints': instance.lifetimePoints,
      'cashbackBalance': instance.cashbackBalance,
      'coins': instance.coins,
      'loyaltyLevel': instance.loyaltyLevel,
    };

_$WalletInfoImpl _$$WalletInfoImplFromJson(Map<String, dynamic> json) =>
    _$WalletInfoImpl(
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      cashbackAmount: (json['cashbackAmount'] as num?)?.toDouble() ?? 0.0,
      refundBalance: (json['refundBalance'] as num?)?.toDouble() ?? 0.0,
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WalletInfoImplToJson(_$WalletInfoImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'cashbackAmount': instance.cashbackAmount,
      'refundBalance': instance.refundBalance,
      'transactions': instance.transactions,
    };

_$PaymentInfoImpl _$$PaymentInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentInfoImpl(
      savedUpiIds: (json['savedUpiIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      savedCards: (json['savedCards'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      savedBankAccounts: (json['savedBankAccounts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      preferredPaymentMethod: json['preferredPaymentMethod'] as String?,
    );

Map<String, dynamic> _$$PaymentInfoImplToJson(_$PaymentInfoImpl instance) =>
    <String, dynamic>{
      'savedUpiIds': instance.savedUpiIds,
      'savedCards': instance.savedCards,
      'savedBankAccounts': instance.savedBankAccounts,
      'preferredPaymentMethod': instance.preferredPaymentMethod,
    };

_$DeliveryPreferenceImpl _$$DeliveryPreferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryPreferenceImpl(
      preferredTimeSlot: json['preferredTimeSlot'] as String?,
      contactlessDelivery: json['contactlessDelivery'] as bool? ?? false,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$$DeliveryPreferenceImplToJson(
        _$DeliveryPreferenceImpl instance) =>
    <String, dynamic>{
      'preferredTimeSlot': instance.preferredTimeSlot,
      'contactlessDelivery': instance.contactlessDelivery,
      'instructions': instance.instructions,
    };

_$BusinessInfoImpl _$$BusinessInfoImplFromJson(Map<String, dynamic> json) =>
    _$BusinessInfoImpl(
      gstNumber: json['gstNumber'] as String?,
      businessName: json['businessName'] as String?,
      isBusinessAccount: json['isBusinessAccount'] as bool? ?? false,
    );

Map<String, dynamic> _$$BusinessInfoImplToJson(_$BusinessInfoImpl instance) =>
    <String, dynamic>{
      'gstNumber': instance.gstNumber,
      'businessName': instance.businessName,
      'isBusinessAccount': instance.isBusinessAccount,
    };

_$PreferenceSettingsImpl _$$PreferenceSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferenceSettingsImpl(
      pushNotifications: json['pushNotifications'] as bool? ?? true,
      emailNotifications: json['emailNotifications'] as bool? ?? true,
      smsNotifications: json['smsNotifications'] as bool? ?? true,
      whatsappNotifications: json['whatsappNotifications'] as bool? ?? false,
      marketingCommunications: json['marketingCommunications'] as bool? ?? true,
    );

Map<String, dynamic> _$$PreferenceSettingsImplToJson(
        _$PreferenceSettingsImpl instance) =>
    <String, dynamic>{
      'pushNotifications': instance.pushNotifications,
      'emailNotifications': instance.emailNotifications,
      'smsNotifications': instance.smsNotifications,
      'whatsappNotifications': instance.whatsappNotifications,
      'marketingCommunications': instance.marketingCommunications,
    };

_$AIProfileImpl _$$AIProfileImplFromJson(Map<String, dynamic> json) =>
    _$AIProfileImpl(
      shoppingPreferences:
          json['shoppingPreferences'] as Map<String, dynamic>? ?? const {},
      recommendations: (json['recommendations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      nutritionProfile:
          json['nutritionProfile'] as Map<String, dynamic>? ?? const {},
      buyingBehaviour:
          json['buyingBehaviour'] as Map<String, dynamic>? ?? const {},
      loyaltyScore: (json['loyaltyScore'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$AIProfileImplToJson(_$AIProfileImpl instance) =>
    <String, dynamic>{
      'shoppingPreferences': instance.shoppingPreferences,
      'recommendations': instance.recommendations,
      'nutritionProfile': instance.nutritionProfile,
      'buyingBehaviour': instance.buyingBehaviour,
      'loyaltyScore': instance.loyaltyScore,
    };
