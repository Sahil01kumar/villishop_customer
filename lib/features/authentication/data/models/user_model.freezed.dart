// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get houseNumber => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;
  String get preferredLanguage => throw _privateConstructorUsedError;
  bool get isProfileCompleted => throw _privateConstructorUsedError;
  DateTime? get joinedAt =>
      throw _privateConstructorUsedError; // Enterprise Enhancements
  MembershipInfo get membership => throw _privateConstructorUsedError;
  ReferralInfo get referral => throw _privateConstructorUsedError;
  RewardInfo get rewards => throw _privateConstructorUsedError;
  WalletInfo get wallet => throw _privateConstructorUsedError;
  PaymentInfo get payments => throw _privateConstructorUsedError;
  DeliveryPreference get delivery => throw _privateConstructorUsedError;
  BusinessInfo get business => throw _privateConstructorUsedError;
  PreferenceSettings get settings => throw _privateConstructorUsedError;
  AIProfile get aiProfile => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
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
      String preferredLanguage,
      bool isProfileCompleted,
      DateTime? joinedAt,
      MembershipInfo membership,
      ReferralInfo referral,
      RewardInfo rewards,
      WalletInfo wallet,
      PaymentInfo payments,
      DeliveryPreference delivery,
      BusinessInfo business,
      PreferenceSettings settings,
      AIProfile aiProfile});

  $MembershipInfoCopyWith<$Res> get membership;
  $ReferralInfoCopyWith<$Res> get referral;
  $RewardInfoCopyWith<$Res> get rewards;
  $WalletInfoCopyWith<$Res> get wallet;
  $PaymentInfoCopyWith<$Res> get payments;
  $DeliveryPreferenceCopyWith<$Res> get delivery;
  $BusinessInfoCopyWith<$Res> get business;
  $PreferenceSettingsCopyWith<$Res> get settings;
  $AIProfileCopyWith<$Res> get aiProfile;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? houseNumber = freezed,
    Object? apartment = freezed,
    Object? landmark = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? preferredLanguage = null,
    Object? isProfileCompleted = null,
    Object? joinedAt = freezed,
    Object? membership = null,
    Object? referral = null,
    Object? rewards = null,
    Object? wallet = null,
    Object? payments = null,
    Object? delivery = null,
    Object? business = null,
    Object? settings = null,
    Object? aiProfile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      houseNumber: freezed == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: null == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isProfileCompleted: null == isProfileCompleted
          ? _value.isProfileCompleted
          : isProfileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as MembershipInfo,
      referral: null == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as ReferralInfo,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as RewardInfo,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as PaymentInfo,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryPreference,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessInfo,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as PreferenceSettings,
      aiProfile: null == aiProfile
          ? _value.aiProfile
          : aiProfile // ignore: cast_nullable_to_non_nullable
              as AIProfile,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MembershipInfoCopyWith<$Res> get membership {
    return $MembershipInfoCopyWith<$Res>(_value.membership, (value) {
      return _then(_value.copyWith(membership: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferralInfoCopyWith<$Res> get referral {
    return $ReferralInfoCopyWith<$Res>(_value.referral, (value) {
      return _then(_value.copyWith(referral: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardInfoCopyWith<$Res> get rewards {
    return $RewardInfoCopyWith<$Res>(_value.rewards, (value) {
      return _then(_value.copyWith(rewards: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletInfoCopyWith<$Res> get wallet {
    return $WalletInfoCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentInfoCopyWith<$Res> get payments {
    return $PaymentInfoCopyWith<$Res>(_value.payments, (value) {
      return _then(_value.copyWith(payments: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryPreferenceCopyWith<$Res> get delivery {
    return $DeliveryPreferenceCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessInfoCopyWith<$Res> get business {
    return $BusinessInfoCopyWith<$Res>(_value.business, (value) {
      return _then(_value.copyWith(business: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreferenceSettingsCopyWith<$Res> get settings {
    return $PreferenceSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AIProfileCopyWith<$Res> get aiProfile {
    return $AIProfileCopyWith<$Res>(_value.aiProfile, (value) {
      return _then(_value.copyWith(aiProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
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
      String preferredLanguage,
      bool isProfileCompleted,
      DateTime? joinedAt,
      MembershipInfo membership,
      ReferralInfo referral,
      RewardInfo rewards,
      WalletInfo wallet,
      PaymentInfo payments,
      DeliveryPreference delivery,
      BusinessInfo business,
      PreferenceSettings settings,
      AIProfile aiProfile});

  @override
  $MembershipInfoCopyWith<$Res> get membership;
  @override
  $ReferralInfoCopyWith<$Res> get referral;
  @override
  $RewardInfoCopyWith<$Res> get rewards;
  @override
  $WalletInfoCopyWith<$Res> get wallet;
  @override
  $PaymentInfoCopyWith<$Res> get payments;
  @override
  $DeliveryPreferenceCopyWith<$Res> get delivery;
  @override
  $BusinessInfoCopyWith<$Res> get business;
  @override
  $PreferenceSettingsCopyWith<$Res> get settings;
  @override
  $AIProfileCopyWith<$Res> get aiProfile;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? houseNumber = freezed,
    Object? apartment = freezed,
    Object? landmark = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
    Object? preferredLanguage = null,
    Object? isProfileCompleted = null,
    Object? joinedAt = freezed,
    Object? membership = null,
    Object? referral = null,
    Object? rewards = null,
    Object? wallet = null,
    Object? payments = null,
    Object? delivery = null,
    Object? business = null,
    Object? settings = null,
    Object? aiProfile = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      houseNumber: freezed == houseNumber
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
      preferredLanguage: null == preferredLanguage
          ? _value.preferredLanguage
          : preferredLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      isProfileCompleted: null == isProfileCompleted
          ? _value.isProfileCompleted
          : isProfileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as MembershipInfo,
      referral: null == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as ReferralInfo,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as RewardInfo,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletInfo,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as PaymentInfo,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryPreference,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessInfo,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as PreferenceSettings,
      aiProfile: null == aiProfile
          ? _value.aiProfile
          : aiProfile // ignore: cast_nullable_to_non_nullable
              as AIProfile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      this.phoneNumber,
      this.name,
      this.email,
      this.profilePicture,
      this.gender,
      this.dateOfBirth,
      this.houseNumber,
      this.apartment,
      this.landmark,
      this.city,
      this.state,
      this.pincode,
      this.preferredLanguage = 'English',
      this.isProfileCompleted = false,
      this.joinedAt,
      this.membership = const MembershipInfo(),
      this.referral = const ReferralInfo(),
      this.rewards = const RewardInfo(),
      this.wallet = const WalletInfo(),
      this.payments = const PaymentInfo(),
      this.delivery = const DeliveryPreference(),
      this.business = const BusinessInfo(),
      this.settings = const PreferenceSettings(),
      this.aiProfile = const AIProfile()});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? profilePicture;
  @override
  final Gender? gender;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? houseNumber;
  @override
  final String? apartment;
  @override
  final String? landmark;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? pincode;
  @override
  @JsonKey()
  final String preferredLanguage;
  @override
  @JsonKey()
  final bool isProfileCompleted;
  @override
  final DateTime? joinedAt;
// Enterprise Enhancements
  @override
  @JsonKey()
  final MembershipInfo membership;
  @override
  @JsonKey()
  final ReferralInfo referral;
  @override
  @JsonKey()
  final RewardInfo rewards;
  @override
  @JsonKey()
  final WalletInfo wallet;
  @override
  @JsonKey()
  final PaymentInfo payments;
  @override
  @JsonKey()
  final DeliveryPreference delivery;
  @override
  @JsonKey()
  final BusinessInfo business;
  @override
  @JsonKey()
  final PreferenceSettings settings;
  @override
  @JsonKey()
  final AIProfile aiProfile;

  @override
  String toString() {
    return 'UserModel(id: $id, phoneNumber: $phoneNumber, name: $name, email: $email, profilePicture: $profilePicture, gender: $gender, dateOfBirth: $dateOfBirth, houseNumber: $houseNumber, apartment: $apartment, landmark: $landmark, city: $city, state: $state, pincode: $pincode, preferredLanguage: $preferredLanguage, isProfileCompleted: $isProfileCompleted, joinedAt: $joinedAt, membership: $membership, referral: $referral, rewards: $rewards, wallet: $wallet, payments: $payments, delivery: $delivery, business: $business, settings: $settings, aiProfile: $aiProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.preferredLanguage, preferredLanguage) ||
                other.preferredLanguage == preferredLanguage) &&
            (identical(other.isProfileCompleted, isProfileCompleted) ||
                other.isProfileCompleted == isProfileCompleted) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.membership, membership) ||
                other.membership == membership) &&
            (identical(other.referral, referral) ||
                other.referral == referral) &&
            (identical(other.rewards, rewards) || other.rewards == rewards) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.payments, payments) ||
                other.payments == payments) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.business, business) ||
                other.business == business) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.aiProfile, aiProfile) ||
                other.aiProfile == aiProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        phoneNumber,
        name,
        email,
        profilePicture,
        gender,
        dateOfBirth,
        houseNumber,
        apartment,
        landmark,
        city,
        state,
        pincode,
        preferredLanguage,
        isProfileCompleted,
        joinedAt,
        membership,
        referral,
        rewards,
        wallet,
        payments,
        delivery,
        business,
        settings,
        aiProfile
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      final String? phoneNumber,
      final String? name,
      final String? email,
      final String? profilePicture,
      final Gender? gender,
      final DateTime? dateOfBirth,
      final String? houseNumber,
      final String? apartment,
      final String? landmark,
      final String? city,
      final String? state,
      final String? pincode,
      final String preferredLanguage,
      final bool isProfileCompleted,
      final DateTime? joinedAt,
      final MembershipInfo membership,
      final ReferralInfo referral,
      final RewardInfo rewards,
      final WalletInfo wallet,
      final PaymentInfo payments,
      final DeliveryPreference delivery,
      final BusinessInfo business,
      final PreferenceSettings settings,
      final AIProfile aiProfile}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get profilePicture;
  @override
  Gender? get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get houseNumber;
  @override
  String? get apartment;
  @override
  String? get landmark;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get pincode;
  @override
  String get preferredLanguage;
  @override
  bool get isProfileCompleted;
  @override
  DateTime? get joinedAt; // Enterprise Enhancements
  @override
  MembershipInfo get membership;
  @override
  ReferralInfo get referral;
  @override
  RewardInfo get rewards;
  @override
  WalletInfo get wallet;
  @override
  PaymentInfo get payments;
  @override
  DeliveryPreference get delivery;
  @override
  BusinessInfo get business;
  @override
  PreferenceSettings get settings;
  @override
  AIProfile get aiProfile;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MembershipInfo _$MembershipInfoFromJson(Map<String, dynamic> json) {
  return _MembershipInfo.fromJson(json);
}

/// @nodoc
mixin _$MembershipInfo {
  MembershipType get type => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  List<String> get benefits => throw _privateConstructorUsedError;

  /// Serializes this MembershipInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MembershipInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembershipInfoCopyWith<MembershipInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipInfoCopyWith<$Res> {
  factory $MembershipInfoCopyWith(
          MembershipInfo value, $Res Function(MembershipInfo) then) =
      _$MembershipInfoCopyWithImpl<$Res, MembershipInfo>;
  @useResult
  $Res call(
      {MembershipType type,
      DateTime? startDate,
      DateTime? expiryDate,
      List<String> benefits});
}

/// @nodoc
class _$MembershipInfoCopyWithImpl<$Res, $Val extends MembershipInfo>
    implements $MembershipInfoCopyWith<$Res> {
  _$MembershipInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MembershipInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? startDate = freezed,
    Object? expiryDate = freezed,
    Object? benefits = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MembershipType,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      benefits: null == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembershipInfoImplCopyWith<$Res>
    implements $MembershipInfoCopyWith<$Res> {
  factory _$$MembershipInfoImplCopyWith(_$MembershipInfoImpl value,
          $Res Function(_$MembershipInfoImpl) then) =
      __$$MembershipInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MembershipType type,
      DateTime? startDate,
      DateTime? expiryDate,
      List<String> benefits});
}

/// @nodoc
class __$$MembershipInfoImplCopyWithImpl<$Res>
    extends _$MembershipInfoCopyWithImpl<$Res, _$MembershipInfoImpl>
    implements _$$MembershipInfoImplCopyWith<$Res> {
  __$$MembershipInfoImplCopyWithImpl(
      _$MembershipInfoImpl _value, $Res Function(_$MembershipInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MembershipInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? startDate = freezed,
    Object? expiryDate = freezed,
    Object? benefits = null,
  }) {
    return _then(_$MembershipInfoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MembershipType,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      benefits: null == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembershipInfoImpl implements _MembershipInfo {
  const _$MembershipInfoImpl(
      {this.type = MembershipType.normal,
      this.startDate,
      this.expiryDate,
      final List<String> benefits = const []})
      : _benefits = benefits;

  factory _$MembershipInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembershipInfoImplFromJson(json);

  @override
  @JsonKey()
  final MembershipType type;
  @override
  final DateTime? startDate;
  @override
  final DateTime? expiryDate;
  final List<String> _benefits;
  @override
  @JsonKey()
  List<String> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  @override
  String toString() {
    return 'MembershipInfo(type: $type, startDate: $startDate, expiryDate: $expiryDate, benefits: $benefits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembershipInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, startDate, expiryDate,
      const DeepCollectionEquality().hash(_benefits));

  /// Create a copy of MembershipInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembershipInfoImplCopyWith<_$MembershipInfoImpl> get copyWith =>
      __$$MembershipInfoImplCopyWithImpl<_$MembershipInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MembershipInfoImplToJson(
      this,
    );
  }
}

abstract class _MembershipInfo implements MembershipInfo {
  const factory _MembershipInfo(
      {final MembershipType type,
      final DateTime? startDate,
      final DateTime? expiryDate,
      final List<String> benefits}) = _$MembershipInfoImpl;

  factory _MembershipInfo.fromJson(Map<String, dynamic> json) =
      _$MembershipInfoImpl.fromJson;

  @override
  MembershipType get type;
  @override
  DateTime? get startDate;
  @override
  DateTime? get expiryDate;
  @override
  List<String> get benefits;

  /// Create a copy of MembershipInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembershipInfoImplCopyWith<_$MembershipInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralInfo _$ReferralInfoFromJson(Map<String, dynamic> json) {
  return _ReferralInfo.fromJson(json);
}

/// @nodoc
mixin _$ReferralInfo {
  String? get referralCode => throw _privateConstructorUsedError;
  String? get referredBy => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get totalEarnings => throw _privateConstructorUsedError;
  List<String> get history => throw _privateConstructorUsedError;

  /// Serializes this ReferralInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReferralInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralInfoCopyWith<ReferralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralInfoCopyWith<$Res> {
  factory $ReferralInfoCopyWith(
          ReferralInfo value, $Res Function(ReferralInfo) then) =
      _$ReferralInfoCopyWithImpl<$Res, ReferralInfo>;
  @useResult
  $Res call(
      {String? referralCode,
      String? referredBy,
      double balance,
      double totalEarnings,
      List<String> history});
}

/// @nodoc
class _$ReferralInfoCopyWithImpl<$Res, $Val extends ReferralInfo>
    implements $ReferralInfoCopyWith<$Res> {
  _$ReferralInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referredBy = freezed,
    Object? balance = null,
    Object? totalEarnings = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralInfoImplCopyWith<$Res>
    implements $ReferralInfoCopyWith<$Res> {
  factory _$$ReferralInfoImplCopyWith(
          _$ReferralInfoImpl value, $Res Function(_$ReferralInfoImpl) then) =
      __$$ReferralInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? referralCode,
      String? referredBy,
      double balance,
      double totalEarnings,
      List<String> history});
}

/// @nodoc
class __$$ReferralInfoImplCopyWithImpl<$Res>
    extends _$ReferralInfoCopyWithImpl<$Res, _$ReferralInfoImpl>
    implements _$$ReferralInfoImplCopyWith<$Res> {
  __$$ReferralInfoImplCopyWithImpl(
      _$ReferralInfoImpl _value, $Res Function(_$ReferralInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referredBy = freezed,
    Object? balance = null,
    Object? totalEarnings = null,
    Object? history = null,
  }) {
    return _then(_$ReferralInfoImpl(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      totalEarnings: null == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralInfoImpl implements _ReferralInfo {
  const _$ReferralInfoImpl(
      {this.referralCode,
      this.referredBy,
      this.balance = 0.0,
      this.totalEarnings = 0.0,
      final List<String> history = const []})
      : _history = history;

  factory _$ReferralInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralInfoImplFromJson(json);

  @override
  final String? referralCode;
  @override
  final String? referredBy;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double totalEarnings;
  final List<String> _history;
  @override
  @JsonKey()
  List<String> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'ReferralInfo(referralCode: $referralCode, referredBy: $referredBy, balance: $balance, totalEarnings: $totalEarnings, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralInfoImpl &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, referralCode, referredBy,
      balance, totalEarnings, const DeepCollectionEquality().hash(_history));

  /// Create a copy of ReferralInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralInfoImplCopyWith<_$ReferralInfoImpl> get copyWith =>
      __$$ReferralInfoImplCopyWithImpl<_$ReferralInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralInfoImplToJson(
      this,
    );
  }
}

abstract class _ReferralInfo implements ReferralInfo {
  const factory _ReferralInfo(
      {final String? referralCode,
      final String? referredBy,
      final double balance,
      final double totalEarnings,
      final List<String> history}) = _$ReferralInfoImpl;

  factory _ReferralInfo.fromJson(Map<String, dynamic> json) =
      _$ReferralInfoImpl.fromJson;

  @override
  String? get referralCode;
  @override
  String? get referredBy;
  @override
  double get balance;
  @override
  double get totalEarnings;
  @override
  List<String> get history;

  /// Create a copy of ReferralInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralInfoImplCopyWith<_$ReferralInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardInfo _$RewardInfoFromJson(Map<String, dynamic> json) {
  return _RewardInfo.fromJson(json);
}

/// @nodoc
mixin _$RewardInfo {
  int get points => throw _privateConstructorUsedError;
  int get lifetimePoints => throw _privateConstructorUsedError;
  double get cashbackBalance => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;
  String get loyaltyLevel => throw _privateConstructorUsedError;

  /// Serializes this RewardInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardInfoCopyWith<RewardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardInfoCopyWith<$Res> {
  factory $RewardInfoCopyWith(
          RewardInfo value, $Res Function(RewardInfo) then) =
      _$RewardInfoCopyWithImpl<$Res, RewardInfo>;
  @useResult
  $Res call(
      {int points,
      int lifetimePoints,
      double cashbackBalance,
      int coins,
      String loyaltyLevel});
}

/// @nodoc
class _$RewardInfoCopyWithImpl<$Res, $Val extends RewardInfo>
    implements $RewardInfoCopyWith<$Res> {
  _$RewardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? lifetimePoints = null,
    Object? cashbackBalance = null,
    Object? coins = null,
    Object? loyaltyLevel = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      lifetimePoints: null == lifetimePoints
          ? _value.lifetimePoints
          : lifetimePoints // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackBalance: null == cashbackBalance
          ? _value.cashbackBalance
          : cashbackBalance // ignore: cast_nullable_to_non_nullable
              as double,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      loyaltyLevel: null == loyaltyLevel
          ? _value.loyaltyLevel
          : loyaltyLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardInfoImplCopyWith<$Res>
    implements $RewardInfoCopyWith<$Res> {
  factory _$$RewardInfoImplCopyWith(
          _$RewardInfoImpl value, $Res Function(_$RewardInfoImpl) then) =
      __$$RewardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int points,
      int lifetimePoints,
      double cashbackBalance,
      int coins,
      String loyaltyLevel});
}

/// @nodoc
class __$$RewardInfoImplCopyWithImpl<$Res>
    extends _$RewardInfoCopyWithImpl<$Res, _$RewardInfoImpl>
    implements _$$RewardInfoImplCopyWith<$Res> {
  __$$RewardInfoImplCopyWithImpl(
      _$RewardInfoImpl _value, $Res Function(_$RewardInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? lifetimePoints = null,
    Object? cashbackBalance = null,
    Object? coins = null,
    Object? loyaltyLevel = null,
  }) {
    return _then(_$RewardInfoImpl(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      lifetimePoints: null == lifetimePoints
          ? _value.lifetimePoints
          : lifetimePoints // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackBalance: null == cashbackBalance
          ? _value.cashbackBalance
          : cashbackBalance // ignore: cast_nullable_to_non_nullable
              as double,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      loyaltyLevel: null == loyaltyLevel
          ? _value.loyaltyLevel
          : loyaltyLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardInfoImpl implements _RewardInfo {
  const _$RewardInfoImpl(
      {this.points = 0,
      this.lifetimePoints = 0,
      this.cashbackBalance = 0.0,
      this.coins = 0,
      this.loyaltyLevel = 'Bronze'});

  factory _$RewardInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardInfoImplFromJson(json);

  @override
  @JsonKey()
  final int points;
  @override
  @JsonKey()
  final int lifetimePoints;
  @override
  @JsonKey()
  final double cashbackBalance;
  @override
  @JsonKey()
  final int coins;
  @override
  @JsonKey()
  final String loyaltyLevel;

  @override
  String toString() {
    return 'RewardInfo(points: $points, lifetimePoints: $lifetimePoints, cashbackBalance: $cashbackBalance, coins: $coins, loyaltyLevel: $loyaltyLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardInfoImpl &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.lifetimePoints, lifetimePoints) ||
                other.lifetimePoints == lifetimePoints) &&
            (identical(other.cashbackBalance, cashbackBalance) ||
                other.cashbackBalance == cashbackBalance) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.loyaltyLevel, loyaltyLevel) ||
                other.loyaltyLevel == loyaltyLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, points, lifetimePoints,
      cashbackBalance, coins, loyaltyLevel);

  /// Create a copy of RewardInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardInfoImplCopyWith<_$RewardInfoImpl> get copyWith =>
      __$$RewardInfoImplCopyWithImpl<_$RewardInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardInfoImplToJson(
      this,
    );
  }
}

abstract class _RewardInfo implements RewardInfo {
  const factory _RewardInfo(
      {final int points,
      final int lifetimePoints,
      final double cashbackBalance,
      final int coins,
      final String loyaltyLevel}) = _$RewardInfoImpl;

  factory _RewardInfo.fromJson(Map<String, dynamic> json) =
      _$RewardInfoImpl.fromJson;

  @override
  int get points;
  @override
  int get lifetimePoints;
  @override
  double get cashbackBalance;
  @override
  int get coins;
  @override
  String get loyaltyLevel;

  /// Create a copy of RewardInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardInfoImplCopyWith<_$RewardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletInfo _$WalletInfoFromJson(Map<String, dynamic> json) {
  return _WalletInfo.fromJson(json);
}

/// @nodoc
mixin _$WalletInfo {
  double get balance => throw _privateConstructorUsedError;
  double get cashbackAmount => throw _privateConstructorUsedError;
  double get refundBalance => throw _privateConstructorUsedError;
  List<String> get transactions => throw _privateConstructorUsedError;

  /// Serializes this WalletInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletInfoCopyWith<WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(
          WalletInfo value, $Res Function(WalletInfo) then) =
      _$WalletInfoCopyWithImpl<$Res, WalletInfo>;
  @useResult
  $Res call(
      {double balance,
      double cashbackAmount,
      double refundBalance,
      List<String> transactions});
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res, $Val extends WalletInfo>
    implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? cashbackAmount = null,
    Object? refundBalance = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackAmount: null == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundBalance: null == refundBalance
          ? _value.refundBalance
          : refundBalance // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletInfoImplCopyWith<$Res>
    implements $WalletInfoCopyWith<$Res> {
  factory _$$WalletInfoImplCopyWith(
          _$WalletInfoImpl value, $Res Function(_$WalletInfoImpl) then) =
      __$$WalletInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double balance,
      double cashbackAmount,
      double refundBalance,
      List<String> transactions});
}

/// @nodoc
class __$$WalletInfoImplCopyWithImpl<$Res>
    extends _$WalletInfoCopyWithImpl<$Res, _$WalletInfoImpl>
    implements _$$WalletInfoImplCopyWith<$Res> {
  __$$WalletInfoImplCopyWithImpl(
      _$WalletInfoImpl _value, $Res Function(_$WalletInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? cashbackAmount = null,
    Object? refundBalance = null,
    Object? transactions = null,
  }) {
    return _then(_$WalletInfoImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackAmount: null == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundBalance: null == refundBalance
          ? _value.refundBalance
          : refundBalance // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletInfoImpl implements _WalletInfo {
  const _$WalletInfoImpl(
      {this.balance = 0.0,
      this.cashbackAmount = 0.0,
      this.refundBalance = 0.0,
      final List<String> transactions = const []})
      : _transactions = transactions;

  factory _$WalletInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletInfoImplFromJson(json);

  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double cashbackAmount;
  @override
  @JsonKey()
  final double refundBalance;
  final List<String> _transactions;
  @override
  @JsonKey()
  List<String> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'WalletInfo(balance: $balance, cashbackAmount: $cashbackAmount, refundBalance: $refundBalance, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInfoImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.cashbackAmount, cashbackAmount) ||
                other.cashbackAmount == cashbackAmount) &&
            (identical(other.refundBalance, refundBalance) ||
                other.refundBalance == refundBalance) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance, cashbackAmount,
      refundBalance, const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      __$$WalletInfoImplCopyWithImpl<_$WalletInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletInfoImplToJson(
      this,
    );
  }
}

abstract class _WalletInfo implements WalletInfo {
  const factory _WalletInfo(
      {final double balance,
      final double cashbackAmount,
      final double refundBalance,
      final List<String> transactions}) = _$WalletInfoImpl;

  factory _WalletInfo.fromJson(Map<String, dynamic> json) =
      _$WalletInfoImpl.fromJson;

  @override
  double get balance;
  @override
  double get cashbackAmount;
  @override
  double get refundBalance;
  @override
  List<String> get transactions;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentInfo _$PaymentInfoFromJson(Map<String, dynamic> json) {
  return _PaymentInfo.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfo {
  List<String> get savedUpiIds => throw _privateConstructorUsedError;
  List<String> get savedCards => throw _privateConstructorUsedError;
  List<String> get savedBankAccounts => throw _privateConstructorUsedError;
  String? get preferredPaymentMethod => throw _privateConstructorUsedError;

  /// Serializes this PaymentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInfoCopyWith<PaymentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoCopyWith<$Res> {
  factory $PaymentInfoCopyWith(
          PaymentInfo value, $Res Function(PaymentInfo) then) =
      _$PaymentInfoCopyWithImpl<$Res, PaymentInfo>;
  @useResult
  $Res call(
      {List<String> savedUpiIds,
      List<String> savedCards,
      List<String> savedBankAccounts,
      String? preferredPaymentMethod});
}

/// @nodoc
class _$PaymentInfoCopyWithImpl<$Res, $Val extends PaymentInfo>
    implements $PaymentInfoCopyWith<$Res> {
  _$PaymentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedUpiIds = null,
    Object? savedCards = null,
    Object? savedBankAccounts = null,
    Object? preferredPaymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      savedUpiIds: null == savedUpiIds
          ? _value.savedUpiIds
          : savedUpiIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      savedCards: null == savedCards
          ? _value.savedCards
          : savedCards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      savedBankAccounts: null == savedBankAccounts
          ? _value.savedBankAccounts
          : savedBankAccounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredPaymentMethod: freezed == preferredPaymentMethod
          ? _value.preferredPaymentMethod
          : preferredPaymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentInfoImplCopyWith<$Res>
    implements $PaymentInfoCopyWith<$Res> {
  factory _$$PaymentInfoImplCopyWith(
          _$PaymentInfoImpl value, $Res Function(_$PaymentInfoImpl) then) =
      __$$PaymentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> savedUpiIds,
      List<String> savedCards,
      List<String> savedBankAccounts,
      String? preferredPaymentMethod});
}

/// @nodoc
class __$$PaymentInfoImplCopyWithImpl<$Res>
    extends _$PaymentInfoCopyWithImpl<$Res, _$PaymentInfoImpl>
    implements _$$PaymentInfoImplCopyWith<$Res> {
  __$$PaymentInfoImplCopyWithImpl(
      _$PaymentInfoImpl _value, $Res Function(_$PaymentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedUpiIds = null,
    Object? savedCards = null,
    Object? savedBankAccounts = null,
    Object? preferredPaymentMethod = freezed,
  }) {
    return _then(_$PaymentInfoImpl(
      savedUpiIds: null == savedUpiIds
          ? _value._savedUpiIds
          : savedUpiIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      savedCards: null == savedCards
          ? _value._savedCards
          : savedCards // ignore: cast_nullable_to_non_nullable
              as List<String>,
      savedBankAccounts: null == savedBankAccounts
          ? _value._savedBankAccounts
          : savedBankAccounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredPaymentMethod: freezed == preferredPaymentMethod
          ? _value.preferredPaymentMethod
          : preferredPaymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInfoImpl implements _PaymentInfo {
  const _$PaymentInfoImpl(
      {final List<String> savedUpiIds = const [],
      final List<String> savedCards = const [],
      final List<String> savedBankAccounts = const [],
      this.preferredPaymentMethod})
      : _savedUpiIds = savedUpiIds,
        _savedCards = savedCards,
        _savedBankAccounts = savedBankAccounts;

  factory _$PaymentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInfoImplFromJson(json);

  final List<String> _savedUpiIds;
  @override
  @JsonKey()
  List<String> get savedUpiIds {
    if (_savedUpiIds is EqualUnmodifiableListView) return _savedUpiIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedUpiIds);
  }

  final List<String> _savedCards;
  @override
  @JsonKey()
  List<String> get savedCards {
    if (_savedCards is EqualUnmodifiableListView) return _savedCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedCards);
  }

  final List<String> _savedBankAccounts;
  @override
  @JsonKey()
  List<String> get savedBankAccounts {
    if (_savedBankAccounts is EqualUnmodifiableListView)
      return _savedBankAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedBankAccounts);
  }

  @override
  final String? preferredPaymentMethod;

  @override
  String toString() {
    return 'PaymentInfo(savedUpiIds: $savedUpiIds, savedCards: $savedCards, savedBankAccounts: $savedBankAccounts, preferredPaymentMethod: $preferredPaymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._savedUpiIds, _savedUpiIds) &&
            const DeepCollectionEquality()
                .equals(other._savedCards, _savedCards) &&
            const DeepCollectionEquality()
                .equals(other._savedBankAccounts, _savedBankAccounts) &&
            (identical(other.preferredPaymentMethod, preferredPaymentMethod) ||
                other.preferredPaymentMethod == preferredPaymentMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_savedUpiIds),
      const DeepCollectionEquality().hash(_savedCards),
      const DeepCollectionEquality().hash(_savedBankAccounts),
      preferredPaymentMethod);

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInfoImplCopyWith<_$PaymentInfoImpl> get copyWith =>
      __$$PaymentInfoImplCopyWithImpl<_$PaymentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInfoImplToJson(
      this,
    );
  }
}

abstract class _PaymentInfo implements PaymentInfo {
  const factory _PaymentInfo(
      {final List<String> savedUpiIds,
      final List<String> savedCards,
      final List<String> savedBankAccounts,
      final String? preferredPaymentMethod}) = _$PaymentInfoImpl;

  factory _PaymentInfo.fromJson(Map<String, dynamic> json) =
      _$PaymentInfoImpl.fromJson;

  @override
  List<String> get savedUpiIds;
  @override
  List<String> get savedCards;
  @override
  List<String> get savedBankAccounts;
  @override
  String? get preferredPaymentMethod;

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInfoImplCopyWith<_$PaymentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryPreference _$DeliveryPreferenceFromJson(Map<String, dynamic> json) {
  return _DeliveryPreference.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPreference {
  String? get preferredTimeSlot => throw _privateConstructorUsedError;
  bool get contactlessDelivery => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;

  /// Serializes this DeliveryPreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryPreferenceCopyWith<DeliveryPreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPreferenceCopyWith<$Res> {
  factory $DeliveryPreferenceCopyWith(
          DeliveryPreference value, $Res Function(DeliveryPreference) then) =
      _$DeliveryPreferenceCopyWithImpl<$Res, DeliveryPreference>;
  @useResult
  $Res call(
      {String? preferredTimeSlot,
      bool contactlessDelivery,
      String? instructions});
}

/// @nodoc
class _$DeliveryPreferenceCopyWithImpl<$Res, $Val extends DeliveryPreference>
    implements $DeliveryPreferenceCopyWith<$Res> {
  _$DeliveryPreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTimeSlot = freezed,
    Object? contactlessDelivery = null,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      preferredTimeSlot: freezed == preferredTimeSlot
          ? _value.preferredTimeSlot
          : preferredTimeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      contactlessDelivery: null == contactlessDelivery
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryPreferenceImplCopyWith<$Res>
    implements $DeliveryPreferenceCopyWith<$Res> {
  factory _$$DeliveryPreferenceImplCopyWith(_$DeliveryPreferenceImpl value,
          $Res Function(_$DeliveryPreferenceImpl) then) =
      __$$DeliveryPreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? preferredTimeSlot,
      bool contactlessDelivery,
      String? instructions});
}

/// @nodoc
class __$$DeliveryPreferenceImplCopyWithImpl<$Res>
    extends _$DeliveryPreferenceCopyWithImpl<$Res, _$DeliveryPreferenceImpl>
    implements _$$DeliveryPreferenceImplCopyWith<$Res> {
  __$$DeliveryPreferenceImplCopyWithImpl(_$DeliveryPreferenceImpl _value,
      $Res Function(_$DeliveryPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTimeSlot = freezed,
    Object? contactlessDelivery = null,
    Object? instructions = freezed,
  }) {
    return _then(_$DeliveryPreferenceImpl(
      preferredTimeSlot: freezed == preferredTimeSlot
          ? _value.preferredTimeSlot
          : preferredTimeSlot // ignore: cast_nullable_to_non_nullable
              as String?,
      contactlessDelivery: null == contactlessDelivery
          ? _value.contactlessDelivery
          : contactlessDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryPreferenceImpl implements _DeliveryPreference {
  const _$DeliveryPreferenceImpl(
      {this.preferredTimeSlot,
      this.contactlessDelivery = false,
      this.instructions});

  factory _$DeliveryPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPreferenceImplFromJson(json);

  @override
  final String? preferredTimeSlot;
  @override
  @JsonKey()
  final bool contactlessDelivery;
  @override
  final String? instructions;

  @override
  String toString() {
    return 'DeliveryPreference(preferredTimeSlot: $preferredTimeSlot, contactlessDelivery: $contactlessDelivery, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPreferenceImpl &&
            (identical(other.preferredTimeSlot, preferredTimeSlot) ||
                other.preferredTimeSlot == preferredTimeSlot) &&
            (identical(other.contactlessDelivery, contactlessDelivery) ||
                other.contactlessDelivery == contactlessDelivery) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, preferredTimeSlot, contactlessDelivery, instructions);

  /// Create a copy of DeliveryPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPreferenceImplCopyWith<_$DeliveryPreferenceImpl> get copyWith =>
      __$$DeliveryPreferenceImplCopyWithImpl<_$DeliveryPreferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPreferenceImplToJson(
      this,
    );
  }
}

abstract class _DeliveryPreference implements DeliveryPreference {
  const factory _DeliveryPreference(
      {final String? preferredTimeSlot,
      final bool contactlessDelivery,
      final String? instructions}) = _$DeliveryPreferenceImpl;

  factory _DeliveryPreference.fromJson(Map<String, dynamic> json) =
      _$DeliveryPreferenceImpl.fromJson;

  @override
  String? get preferredTimeSlot;
  @override
  bool get contactlessDelivery;
  @override
  String? get instructions;

  /// Create a copy of DeliveryPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryPreferenceImplCopyWith<_$DeliveryPreferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessInfo _$BusinessInfoFromJson(Map<String, dynamic> json) {
  return _BusinessInfo.fromJson(json);
}

/// @nodoc
mixin _$BusinessInfo {
  String? get gstNumber => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  bool get isBusinessAccount => throw _privateConstructorUsedError;

  /// Serializes this BusinessInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessInfoCopyWith<BusinessInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessInfoCopyWith<$Res> {
  factory $BusinessInfoCopyWith(
          BusinessInfo value, $Res Function(BusinessInfo) then) =
      _$BusinessInfoCopyWithImpl<$Res, BusinessInfo>;
  @useResult
  $Res call({String? gstNumber, String? businessName, bool isBusinessAccount});
}

/// @nodoc
class _$BusinessInfoCopyWithImpl<$Res, $Val extends BusinessInfo>
    implements $BusinessInfoCopyWith<$Res> {
  _$BusinessInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gstNumber = freezed,
    Object? businessName = freezed,
    Object? isBusinessAccount = null,
  }) {
    return _then(_value.copyWith(
      gstNumber: freezed == gstNumber
          ? _value.gstNumber
          : gstNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      isBusinessAccount: null == isBusinessAccount
          ? _value.isBusinessAccount
          : isBusinessAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessInfoImplCopyWith<$Res>
    implements $BusinessInfoCopyWith<$Res> {
  factory _$$BusinessInfoImplCopyWith(
          _$BusinessInfoImpl value, $Res Function(_$BusinessInfoImpl) then) =
      __$$BusinessInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gstNumber, String? businessName, bool isBusinessAccount});
}

/// @nodoc
class __$$BusinessInfoImplCopyWithImpl<$Res>
    extends _$BusinessInfoCopyWithImpl<$Res, _$BusinessInfoImpl>
    implements _$$BusinessInfoImplCopyWith<$Res> {
  __$$BusinessInfoImplCopyWithImpl(
      _$BusinessInfoImpl _value, $Res Function(_$BusinessInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gstNumber = freezed,
    Object? businessName = freezed,
    Object? isBusinessAccount = null,
  }) {
    return _then(_$BusinessInfoImpl(
      gstNumber: freezed == gstNumber
          ? _value.gstNumber
          : gstNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      isBusinessAccount: null == isBusinessAccount
          ? _value.isBusinessAccount
          : isBusinessAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessInfoImpl implements _BusinessInfo {
  const _$BusinessInfoImpl(
      {this.gstNumber, this.businessName, this.isBusinessAccount = false});

  factory _$BusinessInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessInfoImplFromJson(json);

  @override
  final String? gstNumber;
  @override
  final String? businessName;
  @override
  @JsonKey()
  final bool isBusinessAccount;

  @override
  String toString() {
    return 'BusinessInfo(gstNumber: $gstNumber, businessName: $businessName, isBusinessAccount: $isBusinessAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessInfoImpl &&
            (identical(other.gstNumber, gstNumber) ||
                other.gstNumber == gstNumber) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.isBusinessAccount, isBusinessAccount) ||
                other.isBusinessAccount == isBusinessAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, gstNumber, businessName, isBusinessAccount);

  /// Create a copy of BusinessInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessInfoImplCopyWith<_$BusinessInfoImpl> get copyWith =>
      __$$BusinessInfoImplCopyWithImpl<_$BusinessInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessInfoImplToJson(
      this,
    );
  }
}

abstract class _BusinessInfo implements BusinessInfo {
  const factory _BusinessInfo(
      {final String? gstNumber,
      final String? businessName,
      final bool isBusinessAccount}) = _$BusinessInfoImpl;

  factory _BusinessInfo.fromJson(Map<String, dynamic> json) =
      _$BusinessInfoImpl.fromJson;

  @override
  String? get gstNumber;
  @override
  String? get businessName;
  @override
  bool get isBusinessAccount;

  /// Create a copy of BusinessInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessInfoImplCopyWith<_$BusinessInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreferenceSettings _$PreferenceSettingsFromJson(Map<String, dynamic> json) {
  return _PreferenceSettings.fromJson(json);
}

/// @nodoc
mixin _$PreferenceSettings {
  bool get pushNotifications => throw _privateConstructorUsedError;
  bool get emailNotifications => throw _privateConstructorUsedError;
  bool get smsNotifications => throw _privateConstructorUsedError;
  bool get whatsappNotifications => throw _privateConstructorUsedError;
  bool get marketingCommunications => throw _privateConstructorUsedError;

  /// Serializes this PreferenceSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreferenceSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferenceSettingsCopyWith<PreferenceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceSettingsCopyWith<$Res> {
  factory $PreferenceSettingsCopyWith(
          PreferenceSettings value, $Res Function(PreferenceSettings) then) =
      _$PreferenceSettingsCopyWithImpl<$Res, PreferenceSettings>;
  @useResult
  $Res call(
      {bool pushNotifications,
      bool emailNotifications,
      bool smsNotifications,
      bool whatsappNotifications,
      bool marketingCommunications});
}

/// @nodoc
class _$PreferenceSettingsCopyWithImpl<$Res, $Val extends PreferenceSettings>
    implements $PreferenceSettingsCopyWith<$Res> {
  _$PreferenceSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferenceSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotifications = null,
    Object? emailNotifications = null,
    Object? smsNotifications = null,
    Object? whatsappNotifications = null,
    Object? marketingCommunications = null,
  }) {
    return _then(_value.copyWith(
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      smsNotifications: null == smsNotifications
          ? _value.smsNotifications
          : smsNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      whatsappNotifications: null == whatsappNotifications
          ? _value.whatsappNotifications
          : whatsappNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingCommunications: null == marketingCommunications
          ? _value.marketingCommunications
          : marketingCommunications // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferenceSettingsImplCopyWith<$Res>
    implements $PreferenceSettingsCopyWith<$Res> {
  factory _$$PreferenceSettingsImplCopyWith(_$PreferenceSettingsImpl value,
          $Res Function(_$PreferenceSettingsImpl) then) =
      __$$PreferenceSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool pushNotifications,
      bool emailNotifications,
      bool smsNotifications,
      bool whatsappNotifications,
      bool marketingCommunications});
}

/// @nodoc
class __$$PreferenceSettingsImplCopyWithImpl<$Res>
    extends _$PreferenceSettingsCopyWithImpl<$Res, _$PreferenceSettingsImpl>
    implements _$$PreferenceSettingsImplCopyWith<$Res> {
  __$$PreferenceSettingsImplCopyWithImpl(_$PreferenceSettingsImpl _value,
      $Res Function(_$PreferenceSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferenceSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushNotifications = null,
    Object? emailNotifications = null,
    Object? smsNotifications = null,
    Object? whatsappNotifications = null,
    Object? marketingCommunications = null,
  }) {
    return _then(_$PreferenceSettingsImpl(
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      emailNotifications: null == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      smsNotifications: null == smsNotifications
          ? _value.smsNotifications
          : smsNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      whatsappNotifications: null == whatsappNotifications
          ? _value.whatsappNotifications
          : whatsappNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingCommunications: null == marketingCommunications
          ? _value.marketingCommunications
          : marketingCommunications // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferenceSettingsImpl implements _PreferenceSettings {
  const _$PreferenceSettingsImpl(
      {this.pushNotifications = true,
      this.emailNotifications = true,
      this.smsNotifications = true,
      this.whatsappNotifications = false,
      this.marketingCommunications = true});

  factory _$PreferenceSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferenceSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool pushNotifications;
  @override
  @JsonKey()
  final bool emailNotifications;
  @override
  @JsonKey()
  final bool smsNotifications;
  @override
  @JsonKey()
  final bool whatsappNotifications;
  @override
  @JsonKey()
  final bool marketingCommunications;

  @override
  String toString() {
    return 'PreferenceSettings(pushNotifications: $pushNotifications, emailNotifications: $emailNotifications, smsNotifications: $smsNotifications, whatsappNotifications: $whatsappNotifications, marketingCommunications: $marketingCommunications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceSettingsImpl &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.emailNotifications, emailNotifications) ||
                other.emailNotifications == emailNotifications) &&
            (identical(other.smsNotifications, smsNotifications) ||
                other.smsNotifications == smsNotifications) &&
            (identical(other.whatsappNotifications, whatsappNotifications) ||
                other.whatsappNotifications == whatsappNotifications) &&
            (identical(
                    other.marketingCommunications, marketingCommunications) ||
                other.marketingCommunications == marketingCommunications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pushNotifications,
      emailNotifications,
      smsNotifications,
      whatsappNotifications,
      marketingCommunications);

  /// Create a copy of PreferenceSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceSettingsImplCopyWith<_$PreferenceSettingsImpl> get copyWith =>
      __$$PreferenceSettingsImplCopyWithImpl<_$PreferenceSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferenceSettingsImplToJson(
      this,
    );
  }
}

abstract class _PreferenceSettings implements PreferenceSettings {
  const factory _PreferenceSettings(
      {final bool pushNotifications,
      final bool emailNotifications,
      final bool smsNotifications,
      final bool whatsappNotifications,
      final bool marketingCommunications}) = _$PreferenceSettingsImpl;

  factory _PreferenceSettings.fromJson(Map<String, dynamic> json) =
      _$PreferenceSettingsImpl.fromJson;

  @override
  bool get pushNotifications;
  @override
  bool get emailNotifications;
  @override
  bool get smsNotifications;
  @override
  bool get whatsappNotifications;
  @override
  bool get marketingCommunications;

  /// Create a copy of PreferenceSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferenceSettingsImplCopyWith<_$PreferenceSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AIProfile _$AIProfileFromJson(Map<String, dynamic> json) {
  return _AIProfile.fromJson(json);
}

/// @nodoc
mixin _$AIProfile {
  Map<String, dynamic> get shoppingPreferences =>
      throw _privateConstructorUsedError;
  List<String> get recommendations => throw _privateConstructorUsedError;
  Map<String, dynamic> get nutritionProfile =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get buyingBehaviour =>
      throw _privateConstructorUsedError;
  double get loyaltyScore => throw _privateConstructorUsedError;

  /// Serializes this AIProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIProfileCopyWith<AIProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIProfileCopyWith<$Res> {
  factory $AIProfileCopyWith(AIProfile value, $Res Function(AIProfile) then) =
      _$AIProfileCopyWithImpl<$Res, AIProfile>;
  @useResult
  $Res call(
      {Map<String, dynamic> shoppingPreferences,
      List<String> recommendations,
      Map<String, dynamic> nutritionProfile,
      Map<String, dynamic> buyingBehaviour,
      double loyaltyScore});
}

/// @nodoc
class _$AIProfileCopyWithImpl<$Res, $Val extends AIProfile>
    implements $AIProfileCopyWith<$Res> {
  _$AIProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingPreferences = null,
    Object? recommendations = null,
    Object? nutritionProfile = null,
    Object? buyingBehaviour = null,
    Object? loyaltyScore = null,
  }) {
    return _then(_value.copyWith(
      shoppingPreferences: null == shoppingPreferences
          ? _value.shoppingPreferences
          : shoppingPreferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nutritionProfile: null == nutritionProfile
          ? _value.nutritionProfile
          : nutritionProfile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      buyingBehaviour: null == buyingBehaviour
          ? _value.buyingBehaviour
          : buyingBehaviour // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      loyaltyScore: null == loyaltyScore
          ? _value.loyaltyScore
          : loyaltyScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AIProfileImplCopyWith<$Res>
    implements $AIProfileCopyWith<$Res> {
  factory _$$AIProfileImplCopyWith(
          _$AIProfileImpl value, $Res Function(_$AIProfileImpl) then) =
      __$$AIProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> shoppingPreferences,
      List<String> recommendations,
      Map<String, dynamic> nutritionProfile,
      Map<String, dynamic> buyingBehaviour,
      double loyaltyScore});
}

/// @nodoc
class __$$AIProfileImplCopyWithImpl<$Res>
    extends _$AIProfileCopyWithImpl<$Res, _$AIProfileImpl>
    implements _$$AIProfileImplCopyWith<$Res> {
  __$$AIProfileImplCopyWithImpl(
      _$AIProfileImpl _value, $Res Function(_$AIProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AIProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingPreferences = null,
    Object? recommendations = null,
    Object? nutritionProfile = null,
    Object? buyingBehaviour = null,
    Object? loyaltyScore = null,
  }) {
    return _then(_$AIProfileImpl(
      shoppingPreferences: null == shoppingPreferences
          ? _value._shoppingPreferences
          : shoppingPreferences // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nutritionProfile: null == nutritionProfile
          ? _value._nutritionProfile
          : nutritionProfile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      buyingBehaviour: null == buyingBehaviour
          ? _value._buyingBehaviour
          : buyingBehaviour // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      loyaltyScore: null == loyaltyScore
          ? _value.loyaltyScore
          : loyaltyScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AIProfileImpl implements _AIProfile {
  const _$AIProfileImpl(
      {final Map<String, dynamic> shoppingPreferences = const {},
      final List<String> recommendations = const [],
      final Map<String, dynamic> nutritionProfile = const {},
      final Map<String, dynamic> buyingBehaviour = const {},
      this.loyaltyScore = 0.0})
      : _shoppingPreferences = shoppingPreferences,
        _recommendations = recommendations,
        _nutritionProfile = nutritionProfile,
        _buyingBehaviour = buyingBehaviour;

  factory _$AIProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIProfileImplFromJson(json);

  final Map<String, dynamic> _shoppingPreferences;
  @override
  @JsonKey()
  Map<String, dynamic> get shoppingPreferences {
    if (_shoppingPreferences is EqualUnmodifiableMapView)
      return _shoppingPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_shoppingPreferences);
  }

  final List<String> _recommendations;
  @override
  @JsonKey()
  List<String> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  final Map<String, dynamic> _nutritionProfile;
  @override
  @JsonKey()
  Map<String, dynamic> get nutritionProfile {
    if (_nutritionProfile is EqualUnmodifiableMapView) return _nutritionProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_nutritionProfile);
  }

  final Map<String, dynamic> _buyingBehaviour;
  @override
  @JsonKey()
  Map<String, dynamic> get buyingBehaviour {
    if (_buyingBehaviour is EqualUnmodifiableMapView) return _buyingBehaviour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_buyingBehaviour);
  }

  @override
  @JsonKey()
  final double loyaltyScore;

  @override
  String toString() {
    return 'AIProfile(shoppingPreferences: $shoppingPreferences, recommendations: $recommendations, nutritionProfile: $nutritionProfile, buyingBehaviour: $buyingBehaviour, loyaltyScore: $loyaltyScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIProfileImpl &&
            const DeepCollectionEquality()
                .equals(other._shoppingPreferences, _shoppingPreferences) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            const DeepCollectionEquality()
                .equals(other._nutritionProfile, _nutritionProfile) &&
            const DeepCollectionEquality()
                .equals(other._buyingBehaviour, _buyingBehaviour) &&
            (identical(other.loyaltyScore, loyaltyScore) ||
                other.loyaltyScore == loyaltyScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shoppingPreferences),
      const DeepCollectionEquality().hash(_recommendations),
      const DeepCollectionEquality().hash(_nutritionProfile),
      const DeepCollectionEquality().hash(_buyingBehaviour),
      loyaltyScore);

  /// Create a copy of AIProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIProfileImplCopyWith<_$AIProfileImpl> get copyWith =>
      __$$AIProfileImplCopyWithImpl<_$AIProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AIProfileImplToJson(
      this,
    );
  }
}

abstract class _AIProfile implements AIProfile {
  const factory _AIProfile(
      {final Map<String, dynamic> shoppingPreferences,
      final List<String> recommendations,
      final Map<String, dynamic> nutritionProfile,
      final Map<String, dynamic> buyingBehaviour,
      final double loyaltyScore}) = _$AIProfileImpl;

  factory _AIProfile.fromJson(Map<String, dynamic> json) =
      _$AIProfileImpl.fromJson;

  @override
  Map<String, dynamic> get shoppingPreferences;
  @override
  List<String> get recommendations;
  @override
  Map<String, dynamic> get nutritionProfile;
  @override
  Map<String, dynamic> get buyingBehaviour;
  @override
  double get loyaltyScore;

  /// Create a copy of AIProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIProfileImplCopyWith<_$AIProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
