// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  List<ShopCartModel> get shopCarts => throw _privateConstructorUsedError;
  CartSummaryModel get overallSummary => throw _privateConstructorUsedError;
  String? get appliedCouponCode => throw _privateConstructorUsedError;
  bool get isSyncing => throw _privateConstructorUsedError;

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {List<ShopCartModel> shopCarts,
      CartSummaryModel overallSummary,
      String? appliedCouponCode,
      bool isSyncing});

  $CartSummaryModelCopyWith<$Res> get overallSummary;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartModel
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

  /// Create a copy of CartModel
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
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
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
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCarts = null,
    Object? overallSummary = null,
    Object? appliedCouponCode = freezed,
    Object? isSyncing = null,
  }) {
    return _then(_$CartModelImpl(
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
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl(
      {final List<ShopCartModel> shopCarts = const [],
      this.overallSummary = const CartSummaryModel(),
      this.appliedCouponCode,
      this.isSyncing = false})
      : _shopCarts = shopCarts;

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

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
    return 'CartModel(shopCarts: $shopCarts, overallSummary: $overallSummary, appliedCouponCode: $appliedCouponCode, isSyncing: $isSyncing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
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

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {final List<ShopCartModel> shopCarts,
      final CartSummaryModel overallSummary,
      final String? appliedCouponCode,
      final bool isSyncing}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  List<ShopCartModel> get shopCarts;
  @override
  CartSummaryModel get overallSummary;
  @override
  String? get appliedCouponCode;
  @override
  bool get isSyncing;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
