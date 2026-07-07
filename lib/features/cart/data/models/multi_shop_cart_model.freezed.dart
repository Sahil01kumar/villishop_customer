// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_shop_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultiShopCartModel _$MultiShopCartModelFromJson(Map<String, dynamic> json) {
  return _MultiShopCartModel.fromJson(json);
}

/// @nodoc
mixin _$MultiShopCartModel {
  List<ShopCartModel> get shopCarts => throw _privateConstructorUsedError;
  CartSummaryModel get overallSummary => throw _privateConstructorUsedError;
  String? get appliedCouponCode => throw _privateConstructorUsedError;
  bool get isSyncing => throw _privateConstructorUsedError;

  /// Serializes this MultiShopCartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultiShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiShopCartModelCopyWith<MultiShopCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiShopCartModelCopyWith<$Res> {
  factory $MultiShopCartModelCopyWith(
          MultiShopCartModel value, $Res Function(MultiShopCartModel) then) =
      _$MultiShopCartModelCopyWithImpl<$Res, MultiShopCartModel>;
  @useResult
  $Res call(
      {List<ShopCartModel> shopCarts,
      CartSummaryModel overallSummary,
      String? appliedCouponCode,
      bool isSyncing});

  $CartSummaryModelCopyWith<$Res> get overallSummary;
}

/// @nodoc
class _$MultiShopCartModelCopyWithImpl<$Res, $Val extends MultiShopCartModel>
    implements $MultiShopCartModelCopyWith<$Res> {
  _$MultiShopCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCarts = null,
    Object? overallSummary = null,
    Object? appliedCouponCode = freezed,
    Object? isSyncing = null,
  }) {
    return _then(_value.copyWith(
      shopCarts: null == shopCarts
          ? _value.shopCarts
          : shopCarts // ignore: cast_nullable_to_non_nullable
              as List<ShopCartModel>,
      overallSummary: null == overallSummary
          ? _value.overallSummary
          : overallSummary // ignore: cast_nullable_to_non_nullable
              as CartSummaryModel,
      appliedCouponCode: freezed == appliedCouponCode
          ? _value.appliedCouponCode
          : appliedCouponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSyncing: null == isSyncing
          ? _value.isSyncing
          : isSyncing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MultiShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartSummaryModelCopyWith<$Res> get overallSummary {
    return $CartSummaryModelCopyWith<$Res>(_value.overallSummary, (value) {
      return _then(_value.copyWith(overallSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MultiShopCartModelImplCopyWith<$Res>
    implements $MultiShopCartModelCopyWith<$Res> {
  factory _$$MultiShopCartModelImplCopyWith(_$MultiShopCartModelImpl value,
          $Res Function(_$MultiShopCartModelImpl) then) =
      __$$MultiShopCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShopCartModel> shopCarts,
      CartSummaryModel overallSummary,
      String? appliedCouponCode,
      bool isSyncing});

  @override
  $CartSummaryModelCopyWith<$Res> get overallSummary;
}

/// @nodoc
class __$$MultiShopCartModelImplCopyWithImpl<$Res>
    extends _$MultiShopCartModelCopyWithImpl<$Res, _$MultiShopCartModelImpl>
    implements _$$MultiShopCartModelImplCopyWith<$Res> {
  __$$MultiShopCartModelImplCopyWithImpl(_$MultiShopCartModelImpl _value,
      $Res Function(_$MultiShopCartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCarts = null,
    Object? overallSummary = null,
    Object? appliedCouponCode = freezed,
    Object? isSyncing = null,
  }) {
    return _then(_$MultiShopCartModelImpl(
      shopCarts: null == shopCarts
          ? _value._shopCarts
          : shopCarts // ignore: cast_nullable_to_non_nullable
              as List<ShopCartModel>,
      overallSummary: null == overallSummary
          ? _value.overallSummary
          : overallSummary // ignore: cast_nullable_to_non_nullable
              as CartSummaryModel,
      appliedCouponCode: freezed == appliedCouponCode
          ? _value.appliedCouponCode
          : appliedCouponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSyncing: null == isSyncing
          ? _value.isSyncing
          : isSyncing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiShopCartModelImpl implements _MultiShopCartModel {
  const _$MultiShopCartModelImpl(
      {final List<ShopCartModel> shopCarts = const [],
      this.overallSummary = const CartSummaryModel(),
      this.appliedCouponCode,
      this.isSyncing = false})
      : _shopCarts = shopCarts;

  factory _$MultiShopCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiShopCartModelImplFromJson(json);

  final List<ShopCartModel> _shopCarts;
  @override
  @JsonKey()
  List<ShopCartModel> get shopCarts {
    if (_shopCarts is EqualUnmodifiableListView) return _shopCarts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopCarts);
  }

  @override
  @JsonKey()
  final CartSummaryModel overallSummary;
  @override
  final String? appliedCouponCode;
  @override
  @JsonKey()
  final bool isSyncing;

  @override
  String toString() {
    return 'MultiShopCartModel(shopCarts: $shopCarts, overallSummary: $overallSummary, appliedCouponCode: $appliedCouponCode, isSyncing: $isSyncing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiShopCartModelImpl &&
            const DeepCollectionEquality()
                .equals(other._shopCarts, _shopCarts) &&
            (identical(other.overallSummary, overallSummary) ||
                other.overallSummary == overallSummary) &&
            (identical(other.appliedCouponCode, appliedCouponCode) ||
                other.appliedCouponCode == appliedCouponCode) &&
            (identical(other.isSyncing, isSyncing) ||
                other.isSyncing == isSyncing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shopCarts),
      overallSummary,
      appliedCouponCode,
      isSyncing);

  /// Create a copy of MultiShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiShopCartModelImplCopyWith<_$MultiShopCartModelImpl> get copyWith =>
      __$$MultiShopCartModelImplCopyWithImpl<_$MultiShopCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiShopCartModelImplToJson(
      this,
    );
  }
}

abstract class _MultiShopCartModel implements MultiShopCartModel {
  const factory _MultiShopCartModel(
      {final List<ShopCartModel> shopCarts,
      final CartSummaryModel overallSummary,
      final String? appliedCouponCode,
      final bool isSyncing}) = _$MultiShopCartModelImpl;

  factory _MultiShopCartModel.fromJson(Map<String, dynamic> json) =
      _$MultiShopCartModelImpl.fromJson;

  @override
  List<ShopCartModel> get shopCarts;
  @override
  CartSummaryModel get overallSummary;
  @override
  String? get appliedCouponCode;
  @override
  bool get isSyncing;

  /// Create a copy of MultiShopCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiShopCartModelImplCopyWith<_$MultiShopCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
