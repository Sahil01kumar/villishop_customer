// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revenue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RevenueModel _$RevenueModelFromJson(Map<String, dynamic> json) {
  return _RevenueModel.fromJson(json);
}

/// @nodoc
mixin _$RevenueModel {
  String get id => throw _privateConstructorUsedError;
  double get grossSellingAmount => throw _privateConstructorUsedError;
  double get netRevenue => throw _privateConstructorUsedError;
  double get shopSettlementAmount => throw _privateConstructorUsedError;
  double get deliveryPartnerEarnings => throw _privateConstructorUsedError;
  double get platformProfit => throw _privateConstructorUsedError;
  CommissionModel get commission => throw _privateConstructorUsedError;
  TaxModel get tax =>
      throw _privateConstructorUsedError; // Split Revenue Details
  double get paymentGatewayCharges => throw _privateConstructorUsedError;
  double get couponDiscountCost =>
      throw _privateConstructorUsedError; // Platform vs Shop share
  double get cashbackCost => throw _privateConstructorUsedError; // Margins
  double get grossMarginPercentage => throw _privateConstructorUsedError;
  double get netMarginPercentage => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RevenueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RevenueModelCopyWith<RevenueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevenueModelCopyWith<$Res> {
  factory $RevenueModelCopyWith(
          RevenueModel value, $Res Function(RevenueModel) then) =
      _$RevenueModelCopyWithImpl<$Res, RevenueModel>;
  @useResult
  $Res call(
      {String id,
      double grossSellingAmount,
      double netRevenue,
      double shopSettlementAmount,
      double deliveryPartnerEarnings,
      double platformProfit,
      CommissionModel commission,
      TaxModel tax,
      double paymentGatewayCharges,
      double couponDiscountCost,
      double cashbackCost,
      double grossMarginPercentage,
      double netMarginPercentage,
      DateTime createdAt});

  $CommissionModelCopyWith<$Res> get commission;
  $TaxModelCopyWith<$Res> get tax;
}

/// @nodoc
class _$RevenueModelCopyWithImpl<$Res, $Val extends RevenueModel>
    implements $RevenueModelCopyWith<$Res> {
  _$RevenueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? grossSellingAmount = null,
    Object? netRevenue = null,
    Object? shopSettlementAmount = null,
    Object? deliveryPartnerEarnings = null,
    Object? platformProfit = null,
    Object? commission = null,
    Object? tax = null,
    Object? paymentGatewayCharges = null,
    Object? couponDiscountCost = null,
    Object? cashbackCost = null,
    Object? grossMarginPercentage = null,
    Object? netMarginPercentage = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      grossSellingAmount: null == grossSellingAmount
          ? _value.grossSellingAmount
          : grossSellingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netRevenue: null == netRevenue
          ? _value.netRevenue
          : netRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      shopSettlementAmount: null == shopSettlementAmount
          ? _value.shopSettlementAmount
          : shopSettlementAmount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryPartnerEarnings: null == deliveryPartnerEarnings
          ? _value.deliveryPartnerEarnings
          : deliveryPartnerEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      platformProfit: null == platformProfit
          ? _value.platformProfit
          : platformProfit // ignore: cast_nullable_to_non_nullable
              as double,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as CommissionModel,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as TaxModel,
      paymentGatewayCharges: null == paymentGatewayCharges
          ? _value.paymentGatewayCharges
          : paymentGatewayCharges // ignore: cast_nullable_to_non_nullable
              as double,
      couponDiscountCost: null == couponDiscountCost
          ? _value.couponDiscountCost
          : couponDiscountCost // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackCost: null == cashbackCost
          ? _value.cashbackCost
          : cashbackCost // ignore: cast_nullable_to_non_nullable
              as double,
      grossMarginPercentage: null == grossMarginPercentage
          ? _value.grossMarginPercentage
          : grossMarginPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      netMarginPercentage: null == netMarginPercentage
          ? _value.netMarginPercentage
          : netMarginPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommissionModelCopyWith<$Res> get commission {
    return $CommissionModelCopyWith<$Res>(_value.commission, (value) {
      return _then(_value.copyWith(commission: value) as $Val);
    });
  }

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaxModelCopyWith<$Res> get tax {
    return $TaxModelCopyWith<$Res>(_value.tax, (value) {
      return _then(_value.copyWith(tax: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RevenueModelImplCopyWith<$Res>
    implements $RevenueModelCopyWith<$Res> {
  factory _$$RevenueModelImplCopyWith(
          _$RevenueModelImpl value, $Res Function(_$RevenueModelImpl) then) =
      __$$RevenueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double grossSellingAmount,
      double netRevenue,
      double shopSettlementAmount,
      double deliveryPartnerEarnings,
      double platformProfit,
      CommissionModel commission,
      TaxModel tax,
      double paymentGatewayCharges,
      double couponDiscountCost,
      double cashbackCost,
      double grossMarginPercentage,
      double netMarginPercentage,
      DateTime createdAt});

  @override
  $CommissionModelCopyWith<$Res> get commission;
  @override
  $TaxModelCopyWith<$Res> get tax;
}

/// @nodoc
class __$$RevenueModelImplCopyWithImpl<$Res>
    extends _$RevenueModelCopyWithImpl<$Res, _$RevenueModelImpl>
    implements _$$RevenueModelImplCopyWith<$Res> {
  __$$RevenueModelImplCopyWithImpl(
      _$RevenueModelImpl _value, $Res Function(_$RevenueModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? grossSellingAmount = null,
    Object? netRevenue = null,
    Object? shopSettlementAmount = null,
    Object? deliveryPartnerEarnings = null,
    Object? platformProfit = null,
    Object? commission = null,
    Object? tax = null,
    Object? paymentGatewayCharges = null,
    Object? couponDiscountCost = null,
    Object? cashbackCost = null,
    Object? grossMarginPercentage = null,
    Object? netMarginPercentage = null,
    Object? createdAt = null,
  }) {
    return _then(_$RevenueModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      grossSellingAmount: null == grossSellingAmount
          ? _value.grossSellingAmount
          : grossSellingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netRevenue: null == netRevenue
          ? _value.netRevenue
          : netRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      shopSettlementAmount: null == shopSettlementAmount
          ? _value.shopSettlementAmount
          : shopSettlementAmount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryPartnerEarnings: null == deliveryPartnerEarnings
          ? _value.deliveryPartnerEarnings
          : deliveryPartnerEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      platformProfit: null == platformProfit
          ? _value.platformProfit
          : platformProfit // ignore: cast_nullable_to_non_nullable
              as double,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as CommissionModel,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as TaxModel,
      paymentGatewayCharges: null == paymentGatewayCharges
          ? _value.paymentGatewayCharges
          : paymentGatewayCharges // ignore: cast_nullable_to_non_nullable
              as double,
      couponDiscountCost: null == couponDiscountCost
          ? _value.couponDiscountCost
          : couponDiscountCost // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackCost: null == cashbackCost
          ? _value.cashbackCost
          : cashbackCost // ignore: cast_nullable_to_non_nullable
              as double,
      grossMarginPercentage: null == grossMarginPercentage
          ? _value.grossMarginPercentage
          : grossMarginPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      netMarginPercentage: null == netMarginPercentage
          ? _value.netMarginPercentage
          : netMarginPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RevenueModelImpl implements _RevenueModel {
  const _$RevenueModelImpl(
      {required this.id,
      required this.grossSellingAmount,
      this.netRevenue = 0.0,
      this.shopSettlementAmount = 0.0,
      this.deliveryPartnerEarnings = 0.0,
      this.platformProfit = 0.0,
      required this.commission,
      required this.tax,
      this.paymentGatewayCharges = 0.0,
      this.couponDiscountCost = 0.0,
      this.cashbackCost = 0.0,
      this.grossMarginPercentage = 0.0,
      this.netMarginPercentage = 0.0,
      required this.createdAt});

  factory _$RevenueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RevenueModelImplFromJson(json);

  @override
  final String id;
  @override
  final double grossSellingAmount;
  @override
  @JsonKey()
  final double netRevenue;
  @override
  @JsonKey()
  final double shopSettlementAmount;
  @override
  @JsonKey()
  final double deliveryPartnerEarnings;
  @override
  @JsonKey()
  final double platformProfit;
  @override
  final CommissionModel commission;
  @override
  final TaxModel tax;
// Split Revenue Details
  @override
  @JsonKey()
  final double paymentGatewayCharges;
  @override
  @JsonKey()
  final double couponDiscountCost;
// Platform vs Shop share
  @override
  @JsonKey()
  final double cashbackCost;
// Margins
  @override
  @JsonKey()
  final double grossMarginPercentage;
  @override
  @JsonKey()
  final double netMarginPercentage;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'RevenueModel(id: $id, grossSellingAmount: $grossSellingAmount, netRevenue: $netRevenue, shopSettlementAmount: $shopSettlementAmount, deliveryPartnerEarnings: $deliveryPartnerEarnings, platformProfit: $platformProfit, commission: $commission, tax: $tax, paymentGatewayCharges: $paymentGatewayCharges, couponDiscountCost: $couponDiscountCost, cashbackCost: $cashbackCost, grossMarginPercentage: $grossMarginPercentage, netMarginPercentage: $netMarginPercentage, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevenueModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.grossSellingAmount, grossSellingAmount) ||
                other.grossSellingAmount == grossSellingAmount) &&
            (identical(other.netRevenue, netRevenue) ||
                other.netRevenue == netRevenue) &&
            (identical(other.shopSettlementAmount, shopSettlementAmount) ||
                other.shopSettlementAmount == shopSettlementAmount) &&
            (identical(
                    other.deliveryPartnerEarnings, deliveryPartnerEarnings) ||
                other.deliveryPartnerEarnings == deliveryPartnerEarnings) &&
            (identical(other.platformProfit, platformProfit) ||
                other.platformProfit == platformProfit) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.paymentGatewayCharges, paymentGatewayCharges) ||
                other.paymentGatewayCharges == paymentGatewayCharges) &&
            (identical(other.couponDiscountCost, couponDiscountCost) ||
                other.couponDiscountCost == couponDiscountCost) &&
            (identical(other.cashbackCost, cashbackCost) ||
                other.cashbackCost == cashbackCost) &&
            (identical(other.grossMarginPercentage, grossMarginPercentage) ||
                other.grossMarginPercentage == grossMarginPercentage) &&
            (identical(other.netMarginPercentage, netMarginPercentage) ||
                other.netMarginPercentage == netMarginPercentage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      grossSellingAmount,
      netRevenue,
      shopSettlementAmount,
      deliveryPartnerEarnings,
      platformProfit,
      commission,
      tax,
      paymentGatewayCharges,
      couponDiscountCost,
      cashbackCost,
      grossMarginPercentage,
      netMarginPercentage,
      createdAt);

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RevenueModelImplCopyWith<_$RevenueModelImpl> get copyWith =>
      __$$RevenueModelImplCopyWithImpl<_$RevenueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RevenueModelImplToJson(
      this,
    );
  }
}

abstract class _RevenueModel implements RevenueModel {
  const factory _RevenueModel(
      {required final String id,
      required final double grossSellingAmount,
      final double netRevenue,
      final double shopSettlementAmount,
      final double deliveryPartnerEarnings,
      final double platformProfit,
      required final CommissionModel commission,
      required final TaxModel tax,
      final double paymentGatewayCharges,
      final double couponDiscountCost,
      final double cashbackCost,
      final double grossMarginPercentage,
      final double netMarginPercentage,
      required final DateTime createdAt}) = _$RevenueModelImpl;

  factory _RevenueModel.fromJson(Map<String, dynamic> json) =
      _$RevenueModelImpl.fromJson;

  @override
  String get id;
  @override
  double get grossSellingAmount;
  @override
  double get netRevenue;
  @override
  double get shopSettlementAmount;
  @override
  double get deliveryPartnerEarnings;
  @override
  double get platformProfit;
  @override
  CommissionModel get commission;
  @override
  TaxModel get tax; // Split Revenue Details
  @override
  double get paymentGatewayCharges;
  @override
  double get couponDiscountCost; // Platform vs Shop share
  @override
  double get cashbackCost; // Margins
  @override
  double get grossMarginPercentage;
  @override
  double get netMarginPercentage;
  @override
  DateTime get createdAt;

  /// Create a copy of RevenueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RevenueModelImplCopyWith<_$RevenueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
