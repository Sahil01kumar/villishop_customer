// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_rule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferRuleModel _$OfferRuleModelFromJson(Map<String, dynamic> json) {
  return _OfferRuleModel.fromJson(json);
}

/// @nodoc
mixin _$OfferRuleModel {
  List<String> get eligibleShopIds => throw _privateConstructorUsedError;
  List<String> get eligibleCategoryIds => throw _privateConstructorUsedError;
  List<String> get eligibleProductIds => throw _privateConstructorUsedError;
  List<String> get excludedProductIds => throw _privateConstructorUsedError;
  double get minOrderValue => throw _privateConstructorUsedError;
  double get maxDiscountAmount => throw _privateConstructorUsedError;
  int get usageLimitPerUser => throw _privateConstructorUsedError;
  int get totalUsageLimit => throw _privateConstructorUsedError;
  bool get isFirstOrderOnly => throw _privateConstructorUsedError;
  bool get isMembershipOnly => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;

  /// Serializes this OfferRuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferRuleModelCopyWith<OfferRuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferRuleModelCopyWith<$Res> {
  factory $OfferRuleModelCopyWith(
          OfferRuleModel value, $Res Function(OfferRuleModel) then) =
      _$OfferRuleModelCopyWithImpl<$Res, OfferRuleModel>;
  @useResult
  $Res call(
      {List<String> eligibleShopIds,
      List<String> eligibleCategoryIds,
      List<String> eligibleProductIds,
      List<String> excludedProductIds,
      double minOrderValue,
      double maxDiscountAmount,
      int usageLimitPerUser,
      int totalUsageLimit,
      bool isFirstOrderOnly,
      bool isMembershipOnly,
      DateTime? startTime,
      DateTime? endTime});
}

/// @nodoc
class _$OfferRuleModelCopyWithImpl<$Res, $Val extends OfferRuleModel>
    implements $OfferRuleModelCopyWith<$Res> {
  _$OfferRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eligibleShopIds = null,
    Object? eligibleCategoryIds = null,
    Object? eligibleProductIds = null,
    Object? excludedProductIds = null,
    Object? minOrderValue = null,
    Object? maxDiscountAmount = null,
    Object? usageLimitPerUser = null,
    Object? totalUsageLimit = null,
    Object? isFirstOrderOnly = null,
    Object? isMembershipOnly = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      eligibleShopIds: null == eligibleShopIds
          ? _value.eligibleShopIds
          : eligibleShopIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleCategoryIds: null == eligibleCategoryIds
          ? _value.eligibleCategoryIds
          : eligibleCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleProductIds: null == eligibleProductIds
          ? _value.eligibleProductIds
          : eligibleProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedProductIds: null == excludedProductIds
          ? _value.excludedProductIds
          : excludedProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxDiscountAmount: null == maxDiscountAmount
          ? _value.maxDiscountAmount
          : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      usageLimitPerUser: null == usageLimitPerUser
          ? _value.usageLimitPerUser
          : usageLimitPerUser // ignore: cast_nullable_to_non_nullable
              as int,
      totalUsageLimit: null == totalUsageLimit
          ? _value.totalUsageLimit
          : totalUsageLimit // ignore: cast_nullable_to_non_nullable
              as int,
      isFirstOrderOnly: null == isFirstOrderOnly
          ? _value.isFirstOrderOnly
          : isFirstOrderOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isMembershipOnly: null == isMembershipOnly
          ? _value.isMembershipOnly
          : isMembershipOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferRuleModelImplCopyWith<$Res>
    implements $OfferRuleModelCopyWith<$Res> {
  factory _$$OfferRuleModelImplCopyWith(_$OfferRuleModelImpl value,
          $Res Function(_$OfferRuleModelImpl) then) =
      __$$OfferRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> eligibleShopIds,
      List<String> eligibleCategoryIds,
      List<String> eligibleProductIds,
      List<String> excludedProductIds,
      double minOrderValue,
      double maxDiscountAmount,
      int usageLimitPerUser,
      int totalUsageLimit,
      bool isFirstOrderOnly,
      bool isMembershipOnly,
      DateTime? startTime,
      DateTime? endTime});
}

/// @nodoc
class __$$OfferRuleModelImplCopyWithImpl<$Res>
    extends _$OfferRuleModelCopyWithImpl<$Res, _$OfferRuleModelImpl>
    implements _$$OfferRuleModelImplCopyWith<$Res> {
  __$$OfferRuleModelImplCopyWithImpl(
      _$OfferRuleModelImpl _value, $Res Function(_$OfferRuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eligibleShopIds = null,
    Object? eligibleCategoryIds = null,
    Object? eligibleProductIds = null,
    Object? excludedProductIds = null,
    Object? minOrderValue = null,
    Object? maxDiscountAmount = null,
    Object? usageLimitPerUser = null,
    Object? totalUsageLimit = null,
    Object? isFirstOrderOnly = null,
    Object? isMembershipOnly = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$OfferRuleModelImpl(
      eligibleShopIds: null == eligibleShopIds
          ? _value._eligibleShopIds
          : eligibleShopIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleCategoryIds: null == eligibleCategoryIds
          ? _value._eligibleCategoryIds
          : eligibleCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleProductIds: null == eligibleProductIds
          ? _value._eligibleProductIds
          : eligibleProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      excludedProductIds: null == excludedProductIds
          ? _value._excludedProductIds
          : excludedProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxDiscountAmount: null == maxDiscountAmount
          ? _value.maxDiscountAmount
          : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      usageLimitPerUser: null == usageLimitPerUser
          ? _value.usageLimitPerUser
          : usageLimitPerUser // ignore: cast_nullable_to_non_nullable
              as int,
      totalUsageLimit: null == totalUsageLimit
          ? _value.totalUsageLimit
          : totalUsageLimit // ignore: cast_nullable_to_non_nullable
              as int,
      isFirstOrderOnly: null == isFirstOrderOnly
          ? _value.isFirstOrderOnly
          : isFirstOrderOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isMembershipOnly: null == isMembershipOnly
          ? _value.isMembershipOnly
          : isMembershipOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferRuleModelImpl implements _OfferRuleModel {
  const _$OfferRuleModelImpl(
      {final List<String> eligibleShopIds = const [],
      final List<String> eligibleCategoryIds = const [],
      final List<String> eligibleProductIds = const [],
      final List<String> excludedProductIds = const [],
      this.minOrderValue = 0.0,
      this.maxDiscountAmount = double.infinity,
      this.usageLimitPerUser = 1,
      this.totalUsageLimit = 10000,
      this.isFirstOrderOnly = false,
      this.isMembershipOnly = false,
      this.startTime,
      this.endTime})
      : _eligibleShopIds = eligibleShopIds,
        _eligibleCategoryIds = eligibleCategoryIds,
        _eligibleProductIds = eligibleProductIds,
        _excludedProductIds = excludedProductIds;

  factory _$OfferRuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferRuleModelImplFromJson(json);

  final List<String> _eligibleShopIds;
  @override
  @JsonKey()
  List<String> get eligibleShopIds {
    if (_eligibleShopIds is EqualUnmodifiableListView) return _eligibleShopIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eligibleShopIds);
  }

  final List<String> _eligibleCategoryIds;
  @override
  @JsonKey()
  List<String> get eligibleCategoryIds {
    if (_eligibleCategoryIds is EqualUnmodifiableListView)
      return _eligibleCategoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eligibleCategoryIds);
  }

  final List<String> _eligibleProductIds;
  @override
  @JsonKey()
  List<String> get eligibleProductIds {
    if (_eligibleProductIds is EqualUnmodifiableListView)
      return _eligibleProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eligibleProductIds);
  }

  final List<String> _excludedProductIds;
  @override
  @JsonKey()
  List<String> get excludedProductIds {
    if (_excludedProductIds is EqualUnmodifiableListView)
      return _excludedProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedProductIds);
  }

  @override
  @JsonKey()
  final double minOrderValue;
  @override
  @JsonKey()
  final double maxDiscountAmount;
  @override
  @JsonKey()
  final int usageLimitPerUser;
  @override
  @JsonKey()
  final int totalUsageLimit;
  @override
  @JsonKey()
  final bool isFirstOrderOnly;
  @override
  @JsonKey()
  final bool isMembershipOnly;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;

  @override
  String toString() {
    return 'OfferRuleModel(eligibleShopIds: $eligibleShopIds, eligibleCategoryIds: $eligibleCategoryIds, eligibleProductIds: $eligibleProductIds, excludedProductIds: $excludedProductIds, minOrderValue: $minOrderValue, maxDiscountAmount: $maxDiscountAmount, usageLimitPerUser: $usageLimitPerUser, totalUsageLimit: $totalUsageLimit, isFirstOrderOnly: $isFirstOrderOnly, isMembershipOnly: $isMembershipOnly, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferRuleModelImpl &&
            const DeepCollectionEquality()
                .equals(other._eligibleShopIds, _eligibleShopIds) &&
            const DeepCollectionEquality()
                .equals(other._eligibleCategoryIds, _eligibleCategoryIds) &&
            const DeepCollectionEquality()
                .equals(other._eligibleProductIds, _eligibleProductIds) &&
            const DeepCollectionEquality()
                .equals(other._excludedProductIds, _excludedProductIds) &&
            (identical(other.minOrderValue, minOrderValue) ||
                other.minOrderValue == minOrderValue) &&
            (identical(other.maxDiscountAmount, maxDiscountAmount) ||
                other.maxDiscountAmount == maxDiscountAmount) &&
            (identical(other.usageLimitPerUser, usageLimitPerUser) ||
                other.usageLimitPerUser == usageLimitPerUser) &&
            (identical(other.totalUsageLimit, totalUsageLimit) ||
                other.totalUsageLimit == totalUsageLimit) &&
            (identical(other.isFirstOrderOnly, isFirstOrderOnly) ||
                other.isFirstOrderOnly == isFirstOrderOnly) &&
            (identical(other.isMembershipOnly, isMembershipOnly) ||
                other.isMembershipOnly == isMembershipOnly) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_eligibleShopIds),
      const DeepCollectionEquality().hash(_eligibleCategoryIds),
      const DeepCollectionEquality().hash(_eligibleProductIds),
      const DeepCollectionEquality().hash(_excludedProductIds),
      minOrderValue,
      maxDiscountAmount,
      usageLimitPerUser,
      totalUsageLimit,
      isFirstOrderOnly,
      isMembershipOnly,
      startTime,
      endTime);

  /// Create a copy of OfferRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferRuleModelImplCopyWith<_$OfferRuleModelImpl> get copyWith =>
      __$$OfferRuleModelImplCopyWithImpl<_$OfferRuleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferRuleModelImplToJson(
      this,
    );
  }
}

abstract class _OfferRuleModel implements OfferRuleModel {
  const factory _OfferRuleModel(
      {final List<String> eligibleShopIds,
      final List<String> eligibleCategoryIds,
      final List<String> eligibleProductIds,
      final List<String> excludedProductIds,
      final double minOrderValue,
      final double maxDiscountAmount,
      final int usageLimitPerUser,
      final int totalUsageLimit,
      final bool isFirstOrderOnly,
      final bool isMembershipOnly,
      final DateTime? startTime,
      final DateTime? endTime}) = _$OfferRuleModelImpl;

  factory _OfferRuleModel.fromJson(Map<String, dynamic> json) =
      _$OfferRuleModelImpl.fromJson;

  @override
  List<String> get eligibleShopIds;
  @override
  List<String> get eligibleCategoryIds;
  @override
  List<String> get eligibleProductIds;
  @override
  List<String> get excludedProductIds;
  @override
  double get minOrderValue;
  @override
  double get maxDiscountAmount;
  @override
  int get usageLimitPerUser;
  @override
  int get totalUsageLimit;
  @override
  bool get isFirstOrderOnly;
  @override
  bool get isMembershipOnly;
  @override
  DateTime? get startTime;
  @override
  DateTime? get endTime;

  /// Create a copy of OfferRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferRuleModelImplCopyWith<_$OfferRuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
