// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartAnalyticsModel _$CartAnalyticsModelFromJson(Map<String, dynamic> json) {
  return _CartAnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$CartAnalyticsModel {
  int get cartViewCount => throw _privateConstructorUsedError;
  int get abandonedCount => throw _privateConstructorUsedError;
  int get totalAddedProducts => throw _privateConstructorUsedError;
  int get totalRemovedProducts => throw _privateConstructorUsedError;
  double get potentialRevenueLost => throw _privateConstructorUsedError;
  DateTime? get lastAbandonedAt => throw _privateConstructorUsedError;
  List<String> get frequentlyPurchasedProductIds =>
      throw _privateConstructorUsedError;

  /// Serializes this CartAnalyticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartAnalyticsModelCopyWith<CartAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartAnalyticsModelCopyWith<$Res> {
  factory $CartAnalyticsModelCopyWith(
          CartAnalyticsModel value, $Res Function(CartAnalyticsModel) then) =
      _$CartAnalyticsModelCopyWithImpl<$Res, CartAnalyticsModel>;
  @useResult
  $Res call(
      {int cartViewCount,
      int abandonedCount,
      int totalAddedProducts,
      int totalRemovedProducts,
      double potentialRevenueLost,
      DateTime? lastAbandonedAt,
      List<String> frequentlyPurchasedProductIds});
}

/// @nodoc
class _$CartAnalyticsModelCopyWithImpl<$Res, $Val extends CartAnalyticsModel>
    implements $CartAnalyticsModelCopyWith<$Res> {
  _$CartAnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartViewCount = null,
    Object? abandonedCount = null,
    Object? totalAddedProducts = null,
    Object? totalRemovedProducts = null,
    Object? potentialRevenueLost = null,
    Object? lastAbandonedAt = freezed,
    Object? frequentlyPurchasedProductIds = null,
  }) {
    return _then(_value.copyWith(
      cartViewCount: null == cartViewCount
          ? _value.cartViewCount
          : cartViewCount // ignore: cast_nullable_to_non_nullable
              as int,
      abandonedCount: null == abandonedCount
          ? _value.abandonedCount
          : abandonedCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAddedProducts: null == totalAddedProducts
          ? _value.totalAddedProducts
          : totalAddedProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalRemovedProducts: null == totalRemovedProducts
          ? _value.totalRemovedProducts
          : totalRemovedProducts // ignore: cast_nullable_to_non_nullable
              as int,
      potentialRevenueLost: null == potentialRevenueLost
          ? _value.potentialRevenueLost
          : potentialRevenueLost // ignore: cast_nullable_to_non_nullable
              as double,
      lastAbandonedAt: freezed == lastAbandonedAt
          ? _value.lastAbandonedAt
          : lastAbandonedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequentlyPurchasedProductIds: null == frequentlyPurchasedProductIds
          ? _value.frequentlyPurchasedProductIds
          : frequentlyPurchasedProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartAnalyticsModelImplCopyWith<$Res>
    implements $CartAnalyticsModelCopyWith<$Res> {
  factory _$$CartAnalyticsModelImplCopyWith(_$CartAnalyticsModelImpl value,
          $Res Function(_$CartAnalyticsModelImpl) then) =
      __$$CartAnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cartViewCount,
      int abandonedCount,
      int totalAddedProducts,
      int totalRemovedProducts,
      double potentialRevenueLost,
      DateTime? lastAbandonedAt,
      List<String> frequentlyPurchasedProductIds});
}

/// @nodoc
class __$$CartAnalyticsModelImplCopyWithImpl<$Res>
    extends _$CartAnalyticsModelCopyWithImpl<$Res, _$CartAnalyticsModelImpl>
    implements _$$CartAnalyticsModelImplCopyWith<$Res> {
  __$$CartAnalyticsModelImplCopyWithImpl(_$CartAnalyticsModelImpl _value,
      $Res Function(_$CartAnalyticsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartViewCount = null,
    Object? abandonedCount = null,
    Object? totalAddedProducts = null,
    Object? totalRemovedProducts = null,
    Object? potentialRevenueLost = null,
    Object? lastAbandonedAt = freezed,
    Object? frequentlyPurchasedProductIds = null,
  }) {
    return _then(_$CartAnalyticsModelImpl(
      cartViewCount: null == cartViewCount
          ? _value.cartViewCount
          : cartViewCount // ignore: cast_nullable_to_non_nullable
              as int,
      abandonedCount: null == abandonedCount
          ? _value.abandonedCount
          : abandonedCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAddedProducts: null == totalAddedProducts
          ? _value.totalAddedProducts
          : totalAddedProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalRemovedProducts: null == totalRemovedProducts
          ? _value.totalRemovedProducts
          : totalRemovedProducts // ignore: cast_nullable_to_non_nullable
              as int,
      potentialRevenueLost: null == potentialRevenueLost
          ? _value.potentialRevenueLost
          : potentialRevenueLost // ignore: cast_nullable_to_non_nullable
              as double,
      lastAbandonedAt: freezed == lastAbandonedAt
          ? _value.lastAbandonedAt
          : lastAbandonedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequentlyPurchasedProductIds: null == frequentlyPurchasedProductIds
          ? _value._frequentlyPurchasedProductIds
          : frequentlyPurchasedProductIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartAnalyticsModelImpl implements _CartAnalyticsModel {
  const _$CartAnalyticsModelImpl(
      {this.cartViewCount = 0,
      this.abandonedCount = 0,
      this.totalAddedProducts = 0,
      this.totalRemovedProducts = 0,
      this.potentialRevenueLost = 0.0,
      this.lastAbandonedAt,
      final List<String> frequentlyPurchasedProductIds = const []})
      : _frequentlyPurchasedProductIds = frequentlyPurchasedProductIds;

  factory _$CartAnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartAnalyticsModelImplFromJson(json);

  @override
  @JsonKey()
  final int cartViewCount;
  @override
  @JsonKey()
  final int abandonedCount;
  @override
  @JsonKey()
  final int totalAddedProducts;
  @override
  @JsonKey()
  final int totalRemovedProducts;
  @override
  @JsonKey()
  final double potentialRevenueLost;
  @override
  final DateTime? lastAbandonedAt;
  final List<String> _frequentlyPurchasedProductIds;
  @override
  @JsonKey()
  List<String> get frequentlyPurchasedProductIds {
    if (_frequentlyPurchasedProductIds is EqualUnmodifiableListView)
      return _frequentlyPurchasedProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frequentlyPurchasedProductIds);
  }

  @override
  String toString() {
    return 'CartAnalyticsModel(cartViewCount: $cartViewCount, abandonedCount: $abandonedCount, totalAddedProducts: $totalAddedProducts, totalRemovedProducts: $totalRemovedProducts, potentialRevenueLost: $potentialRevenueLost, lastAbandonedAt: $lastAbandonedAt, frequentlyPurchasedProductIds: $frequentlyPurchasedProductIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartAnalyticsModelImpl &&
            (identical(other.cartViewCount, cartViewCount) ||
                other.cartViewCount == cartViewCount) &&
            (identical(other.abandonedCount, abandonedCount) ||
                other.abandonedCount == abandonedCount) &&
            (identical(other.totalAddedProducts, totalAddedProducts) ||
                other.totalAddedProducts == totalAddedProducts) &&
            (identical(other.totalRemovedProducts, totalRemovedProducts) ||
                other.totalRemovedProducts == totalRemovedProducts) &&
            (identical(other.potentialRevenueLost, potentialRevenueLost) ||
                other.potentialRevenueLost == potentialRevenueLost) &&
            (identical(other.lastAbandonedAt, lastAbandonedAt) ||
                other.lastAbandonedAt == lastAbandonedAt) &&
            const DeepCollectionEquality().equals(
                other._frequentlyPurchasedProductIds,
                _frequentlyPurchasedProductIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartViewCount,
      abandonedCount,
      totalAddedProducts,
      totalRemovedProducts,
      potentialRevenueLost,
      lastAbandonedAt,
      const DeepCollectionEquality().hash(_frequentlyPurchasedProductIds));

  /// Create a copy of CartAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartAnalyticsModelImplCopyWith<_$CartAnalyticsModelImpl> get copyWith =>
      __$$CartAnalyticsModelImplCopyWithImpl<_$CartAnalyticsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartAnalyticsModelImplToJson(
      this,
    );
  }
}

abstract class _CartAnalyticsModel implements CartAnalyticsModel {
  const factory _CartAnalyticsModel(
          {final int cartViewCount,
          final int abandonedCount,
          final int totalAddedProducts,
          final int totalRemovedProducts,
          final double potentialRevenueLost,
          final DateTime? lastAbandonedAt,
          final List<String> frequentlyPurchasedProductIds}) =
      _$CartAnalyticsModelImpl;

  factory _CartAnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$CartAnalyticsModelImpl.fromJson;

  @override
  int get cartViewCount;
  @override
  int get abandonedCount;
  @override
  int get totalAddedProducts;
  @override
  int get totalRemovedProducts;
  @override
  double get potentialRevenueLost;
  @override
  DateTime? get lastAbandonedAt;
  @override
  List<String> get frequentlyPurchasedProductIds;

  /// Create a copy of CartAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartAnalyticsModelImplCopyWith<_$CartAnalyticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
