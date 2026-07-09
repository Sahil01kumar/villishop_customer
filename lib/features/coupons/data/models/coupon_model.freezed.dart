// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponModel _$CouponModelFromJson(Map<String, dynamic> json) {
  return _CouponModel.fromJson(json);
}

/// @nodoc
mixin _$CouponModel {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  CouponType get type => throw _privateConstructorUsedError;
  CouponSource get source => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  double get minOrderValue => throw _privateConstructorUsedError;
  double get maxDiscountAmount => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;
  int get usageLimitPerCustomer => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get shopId => throw _privateConstructorUsedError;
  List<String> get eligibleCategoryIds => throw _privateConstructorUsedError;
  List<String> get eligibleProductIds => throw _privateConstructorUsedError;
  bool get isFirstOrderOnly => throw _privateConstructorUsedError;
  bool get isMembershipOnly => throw _privateConstructorUsedError;

  /// Serializes this CouponModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponModelCopyWith<CouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponModelCopyWith<$Res> {
  factory $CouponModelCopyWith(
          CouponModel value, $Res Function(CouponModel) then) =
      _$CouponModelCopyWithImpl<$Res, CouponModel>;
  @useResult
  $Res call(
      {String id,
      String code,
      String title,
      String description,
      CouponType type,
      CouponSource source,
      double value,
      double minOrderValue,
      double maxDiscountAmount,
      DateTime expiryDate,
      int usageLimitPerCustomer,
      bool isActive,
      String? shopId,
      List<String> eligibleCategoryIds,
      List<String> eligibleProductIds,
      bool isFirstOrderOnly,
      bool isMembershipOnly});
}

/// @nodoc
class _$CouponModelCopyWithImpl<$Res, $Val extends CouponModel>
    implements $CouponModelCopyWith<$Res> {
  _$CouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? source = null,
    Object? value = null,
    Object? minOrderValue = null,
    Object? maxDiscountAmount = null,
    Object? expiryDate = null,
    Object? usageLimitPerCustomer = null,
    Object? isActive = null,
    Object? shopId = freezed,
    Object? eligibleCategoryIds = null,
    Object? eligibleProductIds = null,
    Object? isFirstOrderOnly = null,
    Object? isMembershipOnly = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CouponType,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CouponSource,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxDiscountAmount: null == maxDiscountAmount
          ? _value.maxDiscountAmount
          : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usageLimitPerCustomer: null == usageLimitPerCustomer
          ? _value.usageLimitPerCustomer
          : usageLimitPerCustomer // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      eligibleCategoryIds: null == eligibleCategoryIds
          ? _value.eligibleCategoryIds
          : eligibleCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleProductIds: null == eligibleProductIds
          ? _value.eligibleProductIds
          : eligibleProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFirstOrderOnly: null == isFirstOrderOnly
          ? _value.isFirstOrderOnly
          : isFirstOrderOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isMembershipOnly: null == isMembershipOnly
          ? _value.isMembershipOnly
          : isMembershipOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponModelImplCopyWith<$Res>
    implements $CouponModelCopyWith<$Res> {
  factory _$$CouponModelImplCopyWith(
          _$CouponModelImpl value, $Res Function(_$CouponModelImpl) then) =
      __$$CouponModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String code,
      String title,
      String description,
      CouponType type,
      CouponSource source,
      double value,
      double minOrderValue,
      double maxDiscountAmount,
      DateTime expiryDate,
      int usageLimitPerCustomer,
      bool isActive,
      String? shopId,
      List<String> eligibleCategoryIds,
      List<String> eligibleProductIds,
      bool isFirstOrderOnly,
      bool isMembershipOnly});
}

/// @nodoc
class __$$CouponModelImplCopyWithImpl<$Res>
    extends _$CouponModelCopyWithImpl<$Res, _$CouponModelImpl>
    implements _$$CouponModelImplCopyWith<$Res> {
  __$$CouponModelImplCopyWithImpl(
      _$CouponModelImpl _value, $Res Function(_$CouponModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? source = null,
    Object? value = null,
    Object? minOrderValue = null,
    Object? maxDiscountAmount = null,
    Object? expiryDate = null,
    Object? usageLimitPerCustomer = null,
    Object? isActive = null,
    Object? shopId = freezed,
    Object? eligibleCategoryIds = null,
    Object? eligibleProductIds = null,
    Object? isFirstOrderOnly = null,
    Object? isMembershipOnly = null,
  }) {
    return _then(_$CouponModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CouponType,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CouponSource,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      minOrderValue: null == minOrderValue
          ? _value.minOrderValue
          : minOrderValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxDiscountAmount: null == maxDiscountAmount
          ? _value.maxDiscountAmount
          : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usageLimitPerCustomer: null == usageLimitPerCustomer
          ? _value.usageLimitPerCustomer
          : usageLimitPerCustomer // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      eligibleCategoryIds: null == eligibleCategoryIds
          ? _value._eligibleCategoryIds
          : eligibleCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleProductIds: null == eligibleProductIds
          ? _value._eligibleProductIds
          : eligibleProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFirstOrderOnly: null == isFirstOrderOnly
          ? _value.isFirstOrderOnly
          : isFirstOrderOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isMembershipOnly: null == isMembershipOnly
          ? _value.isMembershipOnly
          : isMembershipOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponModelImpl implements _CouponModel {
  const _$CouponModelImpl(
      {required this.id,
      required this.code,
      required this.title,
      required this.description,
      required this.type,
      required this.source,
      this.value = 0.0,
      this.minOrderValue = 0.0,
      this.maxDiscountAmount = double.infinity,
      required this.expiryDate,
      this.usageLimitPerCustomer = 1,
      this.isActive = true,
      this.shopId,
      final List<String> eligibleCategoryIds = const [],
      final List<String> eligibleProductIds = const [],
      this.isFirstOrderOnly = false,
      this.isMembershipOnly = false})
      : _eligibleCategoryIds = eligibleCategoryIds,
        _eligibleProductIds = eligibleProductIds;

  factory _$CouponModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponModelImplFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final String title;
  @override
  final String description;
  @override
  final CouponType type;
  @override
  final CouponSource source;
  @override
  @JsonKey()
  final double value;
  @override
  @JsonKey()
  final double minOrderValue;
  @override
  @JsonKey()
  final double maxDiscountAmount;
  @override
  final DateTime expiryDate;
  @override
  @JsonKey()
  final int usageLimitPerCustomer;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final String? shopId;
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

  @override
  @JsonKey()
  final bool isFirstOrderOnly;
  @override
  @JsonKey()
  final bool isMembershipOnly;

  @override
  String toString() {
    return 'CouponModel(id: $id, code: $code, title: $title, description: $description, type: $type, source: $source, value: $value, minOrderValue: $minOrderValue, maxDiscountAmount: $maxDiscountAmount, expiryDate: $expiryDate, usageLimitPerCustomer: $usageLimitPerCustomer, isActive: $isActive, shopId: $shopId, eligibleCategoryIds: $eligibleCategoryIds, eligibleProductIds: $eligibleProductIds, isFirstOrderOnly: $isFirstOrderOnly, isMembershipOnly: $isMembershipOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.minOrderValue, minOrderValue) ||
                other.minOrderValue == minOrderValue) &&
            (identical(other.maxDiscountAmount, maxDiscountAmount) ||
                other.maxDiscountAmount == maxDiscountAmount) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.usageLimitPerCustomer, usageLimitPerCustomer) ||
                other.usageLimitPerCustomer == usageLimitPerCustomer) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            const DeepCollectionEquality()
                .equals(other._eligibleCategoryIds, _eligibleCategoryIds) &&
            const DeepCollectionEquality()
                .equals(other._eligibleProductIds, _eligibleProductIds) &&
            (identical(other.isFirstOrderOnly, isFirstOrderOnly) ||
                other.isFirstOrderOnly == isFirstOrderOnly) &&
            (identical(other.isMembershipOnly, isMembershipOnly) ||
                other.isMembershipOnly == isMembershipOnly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      title,
      description,
      type,
      source,
      value,
      minOrderValue,
      maxDiscountAmount,
      expiryDate,
      usageLimitPerCustomer,
      isActive,
      shopId,
      const DeepCollectionEquality().hash(_eligibleCategoryIds),
      const DeepCollectionEquality().hash(_eligibleProductIds),
      isFirstOrderOnly,
      isMembershipOnly);

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      __$$CouponModelImplCopyWithImpl<_$CouponModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponModelImplToJson(
      this,
    );
  }
}

abstract class _CouponModel implements CouponModel {
  const factory _CouponModel(
      {required final String id,
      required final String code,
      required final String title,
      required final String description,
      required final CouponType type,
      required final CouponSource source,
      final double value,
      final double minOrderValue,
      final double maxDiscountAmount,
      required final DateTime expiryDate,
      final int usageLimitPerCustomer,
      final bool isActive,
      final String? shopId,
      final List<String> eligibleCategoryIds,
      final List<String> eligibleProductIds,
      final bool isFirstOrderOnly,
      final bool isMembershipOnly}) = _$CouponModelImpl;

  factory _CouponModel.fromJson(Map<String, dynamic> json) =
      _$CouponModelImpl.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  String get title;
  @override
  String get description;
  @override
  CouponType get type;
  @override
  CouponSource get source;
  @override
  double get value;
  @override
  double get minOrderValue;
  @override
  double get maxDiscountAmount;
  @override
  DateTime get expiryDate;
  @override
  int get usageLimitPerCustomer;
  @override
  bool get isActive;
  @override
  String? get shopId;
  @override
  List<String> get eligibleCategoryIds;
  @override
  List<String> get eligibleProductIds;
  @override
  bool get isFirstOrderOnly;
  @override
  bool get isMembershipOnly;

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CouponCalculationResult {
  double get discountAmount => throw _privateConstructorUsedError;
  double get deliveryDiscount => throw _privateConstructorUsedError;
  double get cashbackAmount => throw _privateConstructorUsedError;
  bool get isFreeDelivery => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  /// Create a copy of CouponCalculationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponCalculationResultCopyWith<CouponCalculationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCalculationResultCopyWith<$Res> {
  factory $CouponCalculationResultCopyWith(CouponCalculationResult value,
          $Res Function(CouponCalculationResult) then) =
      _$CouponCalculationResultCopyWithImpl<$Res, CouponCalculationResult>;
  @useResult
  $Res call(
      {double discountAmount,
      double deliveryDiscount,
      double cashbackAmount,
      bool isFreeDelivery,
      String? message,
      bool isValid});
}

/// @nodoc
class _$CouponCalculationResultCopyWithImpl<$Res,
        $Val extends CouponCalculationResult>
    implements $CouponCalculationResultCopyWith<$Res> {
  _$CouponCalculationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponCalculationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountAmount = null,
    Object? deliveryDiscount = null,
    Object? cashbackAmount = null,
    Object? isFreeDelivery = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryDiscount: null == deliveryDiscount
          ? _value.deliveryDiscount
          : deliveryDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackAmount: null == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponCalculationResultImplCopyWith<$Res>
    implements $CouponCalculationResultCopyWith<$Res> {
  factory _$$CouponCalculationResultImplCopyWith(
          _$CouponCalculationResultImpl value,
          $Res Function(_$CouponCalculationResultImpl) then) =
      __$$CouponCalculationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double discountAmount,
      double deliveryDiscount,
      double cashbackAmount,
      bool isFreeDelivery,
      String? message,
      bool isValid});
}

/// @nodoc
class __$$CouponCalculationResultImplCopyWithImpl<$Res>
    extends _$CouponCalculationResultCopyWithImpl<$Res,
        _$CouponCalculationResultImpl>
    implements _$$CouponCalculationResultImplCopyWith<$Res> {
  __$$CouponCalculationResultImplCopyWithImpl(
      _$CouponCalculationResultImpl _value,
      $Res Function(_$CouponCalculationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponCalculationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountAmount = null,
    Object? deliveryDiscount = null,
    Object? cashbackAmount = null,
    Object? isFreeDelivery = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$CouponCalculationResultImpl(
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryDiscount: null == deliveryDiscount
          ? _value.deliveryDiscount
          : deliveryDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackAmount: null == cashbackAmount
          ? _value.cashbackAmount
          : cashbackAmount // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CouponCalculationResultImpl implements _CouponCalculationResult {
  const _$CouponCalculationResultImpl(
      {required this.discountAmount,
      required this.deliveryDiscount,
      required this.cashbackAmount,
      required this.isFreeDelivery,
      this.message,
      this.isValid = true});

  @override
  final double discountAmount;
  @override
  final double deliveryDiscount;
  @override
  final double cashbackAmount;
  @override
  final bool isFreeDelivery;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'CouponCalculationResult(discountAmount: $discountAmount, deliveryDiscount: $deliveryDiscount, cashbackAmount: $cashbackAmount, isFreeDelivery: $isFreeDelivery, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponCalculationResultImpl &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.deliveryDiscount, deliveryDiscount) ||
                other.deliveryDiscount == deliveryDiscount) &&
            (identical(other.cashbackAmount, cashbackAmount) ||
                other.cashbackAmount == cashbackAmount) &&
            (identical(other.isFreeDelivery, isFreeDelivery) ||
                other.isFreeDelivery == isFreeDelivery) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discountAmount, deliveryDiscount,
      cashbackAmount, isFreeDelivery, message, isValid);

  /// Create a copy of CouponCalculationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponCalculationResultImplCopyWith<_$CouponCalculationResultImpl>
      get copyWith => __$$CouponCalculationResultImplCopyWithImpl<
          _$CouponCalculationResultImpl>(this, _$identity);
}

abstract class _CouponCalculationResult implements CouponCalculationResult {
  const factory _CouponCalculationResult(
      {required final double discountAmount,
      required final double deliveryDiscount,
      required final double cashbackAmount,
      required final bool isFreeDelivery,
      final String? message,
      final bool isValid}) = _$CouponCalculationResultImpl;

  @override
  double get discountAmount;
  @override
  double get deliveryDiscount;
  @override
  double get cashbackAmount;
  @override
  bool get isFreeDelivery;
  @override
  String? get message;
  @override
  bool get isValid;

  /// Create a copy of CouponCalculationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponCalculationResultImplCopyWith<_$CouponCalculationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
