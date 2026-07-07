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
  DiscountModel get discount => throw _privateConstructorUsedError;
  OfferRuleModel get rules => throw _privateConstructorUsedError;
  CashbackModel? get cashback => throw _privateConstructorUsedError;
  DiscountPayer get payer => throw _privateConstructorUsedError;
  double get platformShareRatio =>
      throw _privateConstructorUsedError; // If shared
  bool get isCommissionBeforeDiscount => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get bannerUrl => throw _privateConstructorUsedError;

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
      DiscountModel discount,
      OfferRuleModel rules,
      CashbackModel? cashback,
      DiscountPayer payer,
      double platformShareRatio,
      bool isCommissionBeforeDiscount,
      bool isActive,
      String? bannerUrl});

  $DiscountModelCopyWith<$Res> get discount;
  $OfferRuleModelCopyWith<$Res> get rules;
  $CashbackModelCopyWith<$Res>? get cashback;
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
    Object? discount = null,
    Object? rules = null,
    Object? cashback = freezed,
    Object? payer = null,
    Object? platformShareRatio = null,
    Object? isCommissionBeforeDiscount = null,
    Object? isActive = null,
    Object? bannerUrl = freezed,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as OfferRuleModel,
      cashback: freezed == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as CashbackModel?,
      payer: null == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as DiscountPayer,
      platformShareRatio: null == platformShareRatio
          ? _value.platformShareRatio
          : platformShareRatio // ignore: cast_nullable_to_non_nullable
              as double,
      isCommissionBeforeDiscount: null == isCommissionBeforeDiscount
          ? _value.isCommissionBeforeDiscount
          : isCommissionBeforeDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<$Res> get discount {
    return $DiscountModelCopyWith<$Res>(_value.discount, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferRuleModelCopyWith<$Res> get rules {
    return $OfferRuleModelCopyWith<$Res>(_value.rules, (value) {
      return _then(_value.copyWith(rules: value) as $Val);
    });
  }

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CashbackModelCopyWith<$Res>? get cashback {
    if (_value.cashback == null) {
      return null;
    }

    return $CashbackModelCopyWith<$Res>(_value.cashback!, (value) {
      return _then(_value.copyWith(cashback: value) as $Val);
    });
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
      DiscountModel discount,
      OfferRuleModel rules,
      CashbackModel? cashback,
      DiscountPayer payer,
      double platformShareRatio,
      bool isCommissionBeforeDiscount,
      bool isActive,
      String? bannerUrl});

  @override
  $DiscountModelCopyWith<$Res> get discount;
  @override
  $OfferRuleModelCopyWith<$Res> get rules;
  @override
  $CashbackModelCopyWith<$Res>? get cashback;
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
    Object? discount = null,
    Object? rules = null,
    Object? cashback = freezed,
    Object? payer = null,
    Object? platformShareRatio = null,
    Object? isCommissionBeforeDiscount = null,
    Object? isActive = null,
    Object? bannerUrl = freezed,
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
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as OfferRuleModel,
      cashback: freezed == cashback
          ? _value.cashback
          : cashback // ignore: cast_nullable_to_non_nullable
              as CashbackModel?,
      payer: null == payer
          ? _value.payer
          : payer // ignore: cast_nullable_to_non_nullable
              as DiscountPayer,
      platformShareRatio: null == platformShareRatio
          ? _value.platformShareRatio
          : platformShareRatio // ignore: cast_nullable_to_non_nullable
              as double,
      isCommissionBeforeDiscount: null == isCommissionBeforeDiscount
          ? _value.isCommissionBeforeDiscount
          : isCommissionBeforeDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      required this.discount,
      required this.rules,
      this.cashback,
      this.payer = DiscountPayer.shop,
      this.platformShareRatio = 0.5,
      this.isCommissionBeforeDiscount = true,
      this.isActive = false,
      this.bannerUrl});

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
  final DiscountModel discount;
  @override
  final OfferRuleModel rules;
  @override
  final CashbackModel? cashback;
  @override
  @JsonKey()
  final DiscountPayer payer;
  @override
  @JsonKey()
  final double platformShareRatio;
// If shared
  @override
  @JsonKey()
  final bool isCommissionBeforeDiscount;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final String? bannerUrl;

  @override
  String toString() {
    return 'CouponModel(id: $id, code: $code, title: $title, description: $description, discount: $discount, rules: $rules, cashback: $cashback, payer: $payer, platformShareRatio: $platformShareRatio, isCommissionBeforeDiscount: $isCommissionBeforeDiscount, isActive: $isActive, bannerUrl: $bannerUrl)';
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
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.cashback, cashback) ||
                other.cashback == cashback) &&
            (identical(other.payer, payer) || other.payer == payer) &&
            (identical(other.platformShareRatio, platformShareRatio) ||
                other.platformShareRatio == platformShareRatio) &&
            (identical(other.isCommissionBeforeDiscount,
                    isCommissionBeforeDiscount) ||
                other.isCommissionBeforeDiscount ==
                    isCommissionBeforeDiscount) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      title,
      description,
      discount,
      rules,
      cashback,
      payer,
      platformShareRatio,
      isCommissionBeforeDiscount,
      isActive,
      bannerUrl);

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
      required final DiscountModel discount,
      required final OfferRuleModel rules,
      final CashbackModel? cashback,
      final DiscountPayer payer,
      final double platformShareRatio,
      final bool isCommissionBeforeDiscount,
      final bool isActive,
      final String? bannerUrl}) = _$CouponModelImpl;

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
  DiscountModel get discount;
  @override
  OfferRuleModel get rules;
  @override
  CashbackModel? get cashback;
  @override
  DiscountPayer get payer;
  @override
  double get platformShareRatio; // If shared
  @override
  bool get isCommissionBeforeDiscount;
  @override
  bool get isActive;
  @override
  String? get bannerUrl;

  /// Create a copy of CouponModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
