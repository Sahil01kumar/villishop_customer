// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryConfigModel _$DeliveryConfigModelFromJson(Map<String, dynamic> json) {
  return _DeliveryConfigModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryConfigModel {
  List<DeliveryTier> get tiers => throw _privateConstructorUsedError;
  double get defaultBaseCharge => throw _privateConstructorUsedError;
  bool get isPremiumMembershipFree => throw _privateConstructorUsedError;
  bool get isFirstOrderFree => throw _privateConstructorUsedError;
  bool get isFestivalCampaignActive => throw _privateConstructorUsedError;
  double get distanceChargePerKm => throw _privateConstructorUsedError;
  double get packagingFee => throw _privateConstructorUsedError;
  double get handlingFee =>
      throw _privateConstructorUsedError; // Admin Configuration
  String get deliveryStartTime => throw _privateConstructorUsedError;
  String get deliveryEndTime => throw _privateConstructorUsedError;
  int get slotDurationMinutes => throw _privateConstructorUsedError;
  int get maxOrdersPerSlot => throw _privateConstructorUsedError;
  List<DateTime> get holidays =>
      throw _privateConstructorUsedError; // Surge Multipliers & Rules
  bool get isRainActive => throw _privateConstructorUsedError;
  double get rainMultiplier => throw _privateConstructorUsedError;
  double get peakHourMultiplier => throw _privateConstructorUsedError;
  double get nightChargeMultiplier =>
      throw _privateConstructorUsedError; // Revenue Ready (Internal)
  double get deliveryPartnerPayoutRatio => throw _privateConstructorUsedError;
  double get platformRetentionRatio =>
      throw _privateConstructorUsedError; // AI Prediction Placeholders (Architecture Ready)
  bool get enableAIRecommendations => throw _privateConstructorUsedError;
  bool get enableAIEtaPrediction => throw _privateConstructorUsedError;

  /// Serializes this DeliveryConfigModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryConfigModelCopyWith<DeliveryConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryConfigModelCopyWith<$Res> {
  factory $DeliveryConfigModelCopyWith(
          DeliveryConfigModel value, $Res Function(DeliveryConfigModel) then) =
      _$DeliveryConfigModelCopyWithImpl<$Res, DeliveryConfigModel>;
  @useResult
  $Res call(
      {List<DeliveryTier> tiers,
      double defaultBaseCharge,
      bool isPremiumMembershipFree,
      bool isFirstOrderFree,
      bool isFestivalCampaignActive,
      double distanceChargePerKm,
      double packagingFee,
      double handlingFee,
      String deliveryStartTime,
      String deliveryEndTime,
      int slotDurationMinutes,
      int maxOrdersPerSlot,
      List<DateTime> holidays,
      bool isRainActive,
      double rainMultiplier,
      double peakHourMultiplier,
      double nightChargeMultiplier,
      double deliveryPartnerPayoutRatio,
      double platformRetentionRatio,
      bool enableAIRecommendations,
      bool enableAIEtaPrediction});
}

/// @nodoc
class _$DeliveryConfigModelCopyWithImpl<$Res, $Val extends DeliveryConfigModel>
    implements $DeliveryConfigModelCopyWith<$Res> {
  _$DeliveryConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiers = null,
    Object? defaultBaseCharge = null,
    Object? isPremiumMembershipFree = null,
    Object? isFirstOrderFree = null,
    Object? isFestivalCampaignActive = null,
    Object? distanceChargePerKm = null,
    Object? packagingFee = null,
    Object? handlingFee = null,
    Object? deliveryStartTime = null,
    Object? deliveryEndTime = null,
    Object? slotDurationMinutes = null,
    Object? maxOrdersPerSlot = null,
    Object? holidays = null,
    Object? isRainActive = null,
    Object? rainMultiplier = null,
    Object? peakHourMultiplier = null,
    Object? nightChargeMultiplier = null,
    Object? deliveryPartnerPayoutRatio = null,
    Object? platformRetentionRatio = null,
    Object? enableAIRecommendations = null,
    Object? enableAIEtaPrediction = null,
  }) {
    return _then(_value.copyWith(
      tiers: null == tiers
          ? _value.tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<DeliveryTier>,
      defaultBaseCharge: null == defaultBaseCharge
          ? _value.defaultBaseCharge
          : defaultBaseCharge // ignore: cast_nullable_to_non_nullable
              as double,
      isPremiumMembershipFree: null == isPremiumMembershipFree
          ? _value.isPremiumMembershipFree
          : isPremiumMembershipFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstOrderFree: null == isFirstOrderFree
          ? _value.isFirstOrderFree
          : isFirstOrderFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFestivalCampaignActive: null == isFestivalCampaignActive
          ? _value.isFestivalCampaignActive
          : isFestivalCampaignActive // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceChargePerKm: null == distanceChargePerKm
          ? _value.distanceChargePerKm
          : distanceChargePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      packagingFee: null == packagingFee
          ? _value.packagingFee
          : packagingFee // ignore: cast_nullable_to_non_nullable
              as double,
      handlingFee: null == handlingFee
          ? _value.handlingFee
          : handlingFee // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryEndTime: null == deliveryEndTime
          ? _value.deliveryEndTime
          : deliveryEndTime // ignore: cast_nullable_to_non_nullable
              as String,
      slotDurationMinutes: null == slotDurationMinutes
          ? _value.slotDurationMinutes
          : slotDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      maxOrdersPerSlot: null == maxOrdersPerSlot
          ? _value.maxOrdersPerSlot
          : maxOrdersPerSlot // ignore: cast_nullable_to_non_nullable
              as int,
      holidays: null == holidays
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      isRainActive: null == isRainActive
          ? _value.isRainActive
          : isRainActive // ignore: cast_nullable_to_non_nullable
              as bool,
      rainMultiplier: null == rainMultiplier
          ? _value.rainMultiplier
          : rainMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      peakHourMultiplier: null == peakHourMultiplier
          ? _value.peakHourMultiplier
          : peakHourMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      nightChargeMultiplier: null == nightChargeMultiplier
          ? _value.nightChargeMultiplier
          : nightChargeMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryPartnerPayoutRatio: null == deliveryPartnerPayoutRatio
          ? _value.deliveryPartnerPayoutRatio
          : deliveryPartnerPayoutRatio // ignore: cast_nullable_to_non_nullable
              as double,
      platformRetentionRatio: null == platformRetentionRatio
          ? _value.platformRetentionRatio
          : platformRetentionRatio // ignore: cast_nullable_to_non_nullable
              as double,
      enableAIRecommendations: null == enableAIRecommendations
          ? _value.enableAIRecommendations
          : enableAIRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      enableAIEtaPrediction: null == enableAIEtaPrediction
          ? _value.enableAIEtaPrediction
          : enableAIEtaPrediction // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryConfigModelImplCopyWith<$Res>
    implements $DeliveryConfigModelCopyWith<$Res> {
  factory _$$DeliveryConfigModelImplCopyWith(_$DeliveryConfigModelImpl value,
          $Res Function(_$DeliveryConfigModelImpl) then) =
      __$$DeliveryConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryTier> tiers,
      double defaultBaseCharge,
      bool isPremiumMembershipFree,
      bool isFirstOrderFree,
      bool isFestivalCampaignActive,
      double distanceChargePerKm,
      double packagingFee,
      double handlingFee,
      String deliveryStartTime,
      String deliveryEndTime,
      int slotDurationMinutes,
      int maxOrdersPerSlot,
      List<DateTime> holidays,
      bool isRainActive,
      double rainMultiplier,
      double peakHourMultiplier,
      double nightChargeMultiplier,
      double deliveryPartnerPayoutRatio,
      double platformRetentionRatio,
      bool enableAIRecommendations,
      bool enableAIEtaPrediction});
}

/// @nodoc
class __$$DeliveryConfigModelImplCopyWithImpl<$Res>
    extends _$DeliveryConfigModelCopyWithImpl<$Res, _$DeliveryConfigModelImpl>
    implements _$$DeliveryConfigModelImplCopyWith<$Res> {
  __$$DeliveryConfigModelImplCopyWithImpl(_$DeliveryConfigModelImpl _value,
      $Res Function(_$DeliveryConfigModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiers = null,
    Object? defaultBaseCharge = null,
    Object? isPremiumMembershipFree = null,
    Object? isFirstOrderFree = null,
    Object? isFestivalCampaignActive = null,
    Object? distanceChargePerKm = null,
    Object? packagingFee = null,
    Object? handlingFee = null,
    Object? deliveryStartTime = null,
    Object? deliveryEndTime = null,
    Object? slotDurationMinutes = null,
    Object? maxOrdersPerSlot = null,
    Object? holidays = null,
    Object? isRainActive = null,
    Object? rainMultiplier = null,
    Object? peakHourMultiplier = null,
    Object? nightChargeMultiplier = null,
    Object? deliveryPartnerPayoutRatio = null,
    Object? platformRetentionRatio = null,
    Object? enableAIRecommendations = null,
    Object? enableAIEtaPrediction = null,
  }) {
    return _then(_$DeliveryConfigModelImpl(
      tiers: null == tiers
          ? _value._tiers
          : tiers // ignore: cast_nullable_to_non_nullable
              as List<DeliveryTier>,
      defaultBaseCharge: null == defaultBaseCharge
          ? _value.defaultBaseCharge
          : defaultBaseCharge // ignore: cast_nullable_to_non_nullable
              as double,
      isPremiumMembershipFree: null == isPremiumMembershipFree
          ? _value.isPremiumMembershipFree
          : isPremiumMembershipFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstOrderFree: null == isFirstOrderFree
          ? _value.isFirstOrderFree
          : isFirstOrderFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFestivalCampaignActive: null == isFestivalCampaignActive
          ? _value.isFestivalCampaignActive
          : isFestivalCampaignActive // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceChargePerKm: null == distanceChargePerKm
          ? _value.distanceChargePerKm
          : distanceChargePerKm // ignore: cast_nullable_to_non_nullable
              as double,
      packagingFee: null == packagingFee
          ? _value.packagingFee
          : packagingFee // ignore: cast_nullable_to_non_nullable
              as double,
      handlingFee: null == handlingFee
          ? _value.handlingFee
          : handlingFee // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryEndTime: null == deliveryEndTime
          ? _value.deliveryEndTime
          : deliveryEndTime // ignore: cast_nullable_to_non_nullable
              as String,
      slotDurationMinutes: null == slotDurationMinutes
          ? _value.slotDurationMinutes
          : slotDurationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      maxOrdersPerSlot: null == maxOrdersPerSlot
          ? _value.maxOrdersPerSlot
          : maxOrdersPerSlot // ignore: cast_nullable_to_non_nullable
              as int,
      holidays: null == holidays
          ? _value._holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      isRainActive: null == isRainActive
          ? _value.isRainActive
          : isRainActive // ignore: cast_nullable_to_non_nullable
              as bool,
      rainMultiplier: null == rainMultiplier
          ? _value.rainMultiplier
          : rainMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      peakHourMultiplier: null == peakHourMultiplier
          ? _value.peakHourMultiplier
          : peakHourMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      nightChargeMultiplier: null == nightChargeMultiplier
          ? _value.nightChargeMultiplier
          : nightChargeMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryPartnerPayoutRatio: null == deliveryPartnerPayoutRatio
          ? _value.deliveryPartnerPayoutRatio
          : deliveryPartnerPayoutRatio // ignore: cast_nullable_to_non_nullable
              as double,
      platformRetentionRatio: null == platformRetentionRatio
          ? _value.platformRetentionRatio
          : platformRetentionRatio // ignore: cast_nullable_to_non_nullable
              as double,
      enableAIRecommendations: null == enableAIRecommendations
          ? _value.enableAIRecommendations
          : enableAIRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      enableAIEtaPrediction: null == enableAIEtaPrediction
          ? _value.enableAIEtaPrediction
          : enableAIEtaPrediction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryConfigModelImpl implements _DeliveryConfigModel {
  const _$DeliveryConfigModelImpl(
      {final List<DeliveryTier> tiers = const [],
      this.defaultBaseCharge = 0.0,
      this.isPremiumMembershipFree = false,
      this.isFirstOrderFree = false,
      this.isFestivalCampaignActive = false,
      this.distanceChargePerKm = 0.0,
      this.packagingFee = 0.0,
      this.handlingFee = 0.0,
      this.deliveryStartTime = '07:00',
      this.deliveryEndTime = '23:00',
      this.slotDurationMinutes = 60,
      this.maxOrdersPerSlot = 20,
      final List<DateTime> holidays = const [],
      this.isRainActive = false,
      this.rainMultiplier = 1.0,
      this.peakHourMultiplier = 1.2,
      this.nightChargeMultiplier = 1.5,
      this.deliveryPartnerPayoutRatio = 0.8,
      this.platformRetentionRatio = 0.2,
      this.enableAIRecommendations = false,
      this.enableAIEtaPrediction = false})
      : _tiers = tiers,
        _holidays = holidays;

  factory _$DeliveryConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryConfigModelImplFromJson(json);

  final List<DeliveryTier> _tiers;
  @override
  @JsonKey()
  List<DeliveryTier> get tiers {
    if (_tiers is EqualUnmodifiableListView) return _tiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiers);
  }

  @override
  @JsonKey()
  final double defaultBaseCharge;
  @override
  @JsonKey()
  final bool isPremiumMembershipFree;
  @override
  @JsonKey()
  final bool isFirstOrderFree;
  @override
  @JsonKey()
  final bool isFestivalCampaignActive;
  @override
  @JsonKey()
  final double distanceChargePerKm;
  @override
  @JsonKey()
  final double packagingFee;
  @override
  @JsonKey()
  final double handlingFee;
// Admin Configuration
  @override
  @JsonKey()
  final String deliveryStartTime;
  @override
  @JsonKey()
  final String deliveryEndTime;
  @override
  @JsonKey()
  final int slotDurationMinutes;
  @override
  @JsonKey()
  final int maxOrdersPerSlot;
  final List<DateTime> _holidays;
  @override
  @JsonKey()
  List<DateTime> get holidays {
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holidays);
  }

// Surge Multipliers & Rules
  @override
  @JsonKey()
  final bool isRainActive;
  @override
  @JsonKey()
  final double rainMultiplier;
  @override
  @JsonKey()
  final double peakHourMultiplier;
  @override
  @JsonKey()
  final double nightChargeMultiplier;
// Revenue Ready (Internal)
  @override
  @JsonKey()
  final double deliveryPartnerPayoutRatio;
  @override
  @JsonKey()
  final double platformRetentionRatio;
// AI Prediction Placeholders (Architecture Ready)
  @override
  @JsonKey()
  final bool enableAIRecommendations;
  @override
  @JsonKey()
  final bool enableAIEtaPrediction;

  @override
  String toString() {
    return 'DeliveryConfigModel(tiers: $tiers, defaultBaseCharge: $defaultBaseCharge, isPremiumMembershipFree: $isPremiumMembershipFree, isFirstOrderFree: $isFirstOrderFree, isFestivalCampaignActive: $isFestivalCampaignActive, distanceChargePerKm: $distanceChargePerKm, packagingFee: $packagingFee, handlingFee: $handlingFee, deliveryStartTime: $deliveryStartTime, deliveryEndTime: $deliveryEndTime, slotDurationMinutes: $slotDurationMinutes, maxOrdersPerSlot: $maxOrdersPerSlot, holidays: $holidays, isRainActive: $isRainActive, rainMultiplier: $rainMultiplier, peakHourMultiplier: $peakHourMultiplier, nightChargeMultiplier: $nightChargeMultiplier, deliveryPartnerPayoutRatio: $deliveryPartnerPayoutRatio, platformRetentionRatio: $platformRetentionRatio, enableAIRecommendations: $enableAIRecommendations, enableAIEtaPrediction: $enableAIEtaPrediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryConfigModelImpl &&
            const DeepCollectionEquality().equals(other._tiers, _tiers) &&
            (identical(other.defaultBaseCharge, defaultBaseCharge) ||
                other.defaultBaseCharge == defaultBaseCharge) &&
            (identical(other.isPremiumMembershipFree, isPremiumMembershipFree) ||
                other.isPremiumMembershipFree == isPremiumMembershipFree) &&
            (identical(other.isFirstOrderFree, isFirstOrderFree) ||
                other.isFirstOrderFree == isFirstOrderFree) &&
            (identical(
                    other.isFestivalCampaignActive, isFestivalCampaignActive) ||
                other.isFestivalCampaignActive == isFestivalCampaignActive) &&
            (identical(other.distanceChargePerKm, distanceChargePerKm) ||
                other.distanceChargePerKm == distanceChargePerKm) &&
            (identical(other.packagingFee, packagingFee) ||
                other.packagingFee == packagingFee) &&
            (identical(other.handlingFee, handlingFee) ||
                other.handlingFee == handlingFee) &&
            (identical(other.deliveryStartTime, deliveryStartTime) ||
                other.deliveryStartTime == deliveryStartTime) &&
            (identical(other.deliveryEndTime, deliveryEndTime) ||
                other.deliveryEndTime == deliveryEndTime) &&
            (identical(other.slotDurationMinutes, slotDurationMinutes) ||
                other.slotDurationMinutes == slotDurationMinutes) &&
            (identical(other.maxOrdersPerSlot, maxOrdersPerSlot) ||
                other.maxOrdersPerSlot == maxOrdersPerSlot) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays) &&
            (identical(other.isRainActive, isRainActive) ||
                other.isRainActive == isRainActive) &&
            (identical(other.rainMultiplier, rainMultiplier) ||
                other.rainMultiplier == rainMultiplier) &&
            (identical(other.peakHourMultiplier, peakHourMultiplier) ||
                other.peakHourMultiplier == peakHourMultiplier) &&
            (identical(other.nightChargeMultiplier, nightChargeMultiplier) ||
                other.nightChargeMultiplier == nightChargeMultiplier) &&
            (identical(other.deliveryPartnerPayoutRatio,
                    deliveryPartnerPayoutRatio) ||
                other.deliveryPartnerPayoutRatio ==
                    deliveryPartnerPayoutRatio) &&
            (identical(other.platformRetentionRatio, platformRetentionRatio) ||
                other.platformRetentionRatio == platformRetentionRatio) &&
            (identical(
                    other.enableAIRecommendations, enableAIRecommendations) ||
                other.enableAIRecommendations == enableAIRecommendations) &&
            (identical(other.enableAIEtaPrediction, enableAIEtaPrediction) ||
                other.enableAIEtaPrediction == enableAIEtaPrediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_tiers),
        defaultBaseCharge,
        isPremiumMembershipFree,
        isFirstOrderFree,
        isFestivalCampaignActive,
        distanceChargePerKm,
        packagingFee,
        handlingFee,
        deliveryStartTime,
        deliveryEndTime,
        slotDurationMinutes,
        maxOrdersPerSlot,
        const DeepCollectionEquality().hash(_holidays),
        isRainActive,
        rainMultiplier,
        peakHourMultiplier,
        nightChargeMultiplier,
        deliveryPartnerPayoutRatio,
        platformRetentionRatio,
        enableAIRecommendations,
        enableAIEtaPrediction
      ]);

  /// Create a copy of DeliveryConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryConfigModelImplCopyWith<_$DeliveryConfigModelImpl> get copyWith =>
      __$$DeliveryConfigModelImplCopyWithImpl<_$DeliveryConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryConfigModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryConfigModel implements DeliveryConfigModel {
  const factory _DeliveryConfigModel(
      {final List<DeliveryTier> tiers,
      final double defaultBaseCharge,
      final bool isPremiumMembershipFree,
      final bool isFirstOrderFree,
      final bool isFestivalCampaignActive,
      final double distanceChargePerKm,
      final double packagingFee,
      final double handlingFee,
      final String deliveryStartTime,
      final String deliveryEndTime,
      final int slotDurationMinutes,
      final int maxOrdersPerSlot,
      final List<DateTime> holidays,
      final bool isRainActive,
      final double rainMultiplier,
      final double peakHourMultiplier,
      final double nightChargeMultiplier,
      final double deliveryPartnerPayoutRatio,
      final double platformRetentionRatio,
      final bool enableAIRecommendations,
      final bool enableAIEtaPrediction}) = _$DeliveryConfigModelImpl;

  factory _DeliveryConfigModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryConfigModelImpl.fromJson;

  @override
  List<DeliveryTier> get tiers;
  @override
  double get defaultBaseCharge;
  @override
  bool get isPremiumMembershipFree;
  @override
  bool get isFirstOrderFree;
  @override
  bool get isFestivalCampaignActive;
  @override
  double get distanceChargePerKm;
  @override
  double get packagingFee;
  @override
  double get handlingFee; // Admin Configuration
  @override
  String get deliveryStartTime;
  @override
  String get deliveryEndTime;
  @override
  int get slotDurationMinutes;
  @override
  int get maxOrdersPerSlot;
  @override
  List<DateTime> get holidays; // Surge Multipliers & Rules
  @override
  bool get isRainActive;
  @override
  double get rainMultiplier;
  @override
  double get peakHourMultiplier;
  @override
  double get nightChargeMultiplier; // Revenue Ready (Internal)
  @override
  double get deliveryPartnerPayoutRatio;
  @override
  double
      get platformRetentionRatio; // AI Prediction Placeholders (Architecture Ready)
  @override
  bool get enableAIRecommendations;
  @override
  bool get enableAIEtaPrediction;

  /// Create a copy of DeliveryConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryConfigModelImplCopyWith<_$DeliveryConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryTier _$DeliveryTierFromJson(Map<String, dynamic> json) {
  return _DeliveryTier.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTier {
  double get minOrderValue => throw _privateConstructorUsedError;
  double get maxOrderValue => throw _privateConstructorUsedError;
  double get charge => throw _privateConstructorUsedError;

  /// Serializes this DeliveryTier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryTierCopyWith<DeliveryTier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTierCopyWith<$Res> {
  factory $DeliveryTierCopyWith(
          DeliveryTier value, $Res Function(DeliveryTier) then) =
      _$DeliveryTierCopyWithImpl<$Res, DeliveryTier>;
  @useResult
  $Res call({double minOrderValue, double maxOrderValue, double charge});
}

/// @nodoc
class _$DeliveryTierCopyWithImpl<$Res, $Val extends DeliveryTier>
    implements $DeliveryTierCopyWith<$Res> {
  _$DeliveryTierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minOrderValue = null,
    Object? maxOrderValue = null,
    Object? charge = null,
  }) {
    return _then(_value.copyWith(
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxOrderValue: null == maxOrderValue
          ? _value.maxOrderValue
          : maxOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryTierImplCopyWith<$Res>
    implements $DeliveryTierCopyWith<$Res> {
  factory _$$DeliveryTierImplCopyWith(
          _$DeliveryTierImpl value, $Res Function(_$DeliveryTierImpl) then) =
      __$$DeliveryTierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double minOrderValue, double maxOrderValue, double charge});
}

/// @nodoc
class __$$DeliveryTierImplCopyWithImpl<$Res>
    extends _$DeliveryTierCopyWithImpl<$Res, _$DeliveryTierImpl>
    implements _$$DeliveryTierImplCopyWith<$Res> {
  __$$DeliveryTierImplCopyWithImpl(
      _$DeliveryTierImpl _value, $Res Function(_$DeliveryTierImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minOrderValue = null,
    Object? maxOrderValue = null,
    Object? charge = null,
  }) {
    return _then(_$DeliveryTierImpl(
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxOrderValue: null == maxOrderValue
          ? _value.maxOrderValue
          : maxOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryTierImpl implements _DeliveryTier {
  const _$DeliveryTierImpl(
      {required this.minOrderValue,
      required this.maxOrderValue,
      required this.charge});

  factory _$DeliveryTierImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTierImplFromJson(json);

  @override
  final double minOrderValue;
  @override
  final double maxOrderValue;
  @override
  final double charge;

  @override
  String toString() {
    return 'DeliveryTier(minOrderValue: $minOrderValue, maxOrderValue: $maxOrderValue, charge: $charge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTierImpl &&
            (identical(other.minOrderValue, minOrderValue) ||
                other.minOrderValue == minOrderValue) &&
            (identical(other.maxOrderValue, maxOrderValue) ||
                other.maxOrderValue == maxOrderValue) &&
            (identical(other.charge, charge) || other.charge == charge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minOrderValue, maxOrderValue, charge);

  /// Create a copy of DeliveryTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTierImplCopyWith<_$DeliveryTierImpl> get copyWith =>
      __$$DeliveryTierImplCopyWithImpl<_$DeliveryTierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTierImplToJson(
      this,
    );
  }
}

abstract class _DeliveryTier implements DeliveryTier {
  const factory _DeliveryTier(
      {required final double minOrderValue,
      required final double maxOrderValue,
      required final double charge}) = _$DeliveryTierImpl;

  factory _DeliveryTier.fromJson(Map<String, dynamic> json) =
      _$DeliveryTierImpl.fromJson;

  @override
  double get minOrderValue;
  @override
  double get maxOrderValue;
  @override
  double get charge;

  /// Create a copy of DeliveryTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryTierImplCopyWith<_$DeliveryTierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
