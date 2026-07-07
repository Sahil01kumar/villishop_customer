// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  ProductModel get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  bool get isSavedForLater => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  DateTime get addedAt =>
      throw _privateConstructorUsedError; // Revenue Architecture Ready
  double get shopCommissionAmount => throw _privateConstructorUsedError;
  double get platformCommissionAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;

  /// Serializes this CartItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res, CartItemModel>;
  @useResult
  $Res call(
      {ProductModel product,
      int quantity,
      bool isSavedForLater,
      bool isSelected,
      DateTime addedAt,
      double shopCommissionAmount,
      double platformCommissionAmount,
      double taxAmount});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res, $Val extends CartItemModel>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? isSavedForLater = null,
    Object? isSelected = null,
    Object? addedAt = null,
    Object? shopCommissionAmount = null,
    Object? platformCommissionAmount = null,
    Object? taxAmount = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSavedForLater: null == isSavedForLater
          ? _value.isSavedForLater
          : isSavedForLater // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shopCommissionAmount: null == shopCommissionAmount
          ? _value.shopCommissionAmount
          : shopCommissionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      platformCommissionAmount: null == platformCommissionAmount
          ? _value.platformCommissionAmount
          : platformCommissionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemModelImplCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$CartItemModelImplCopyWith(
          _$CartItemModelImpl value, $Res Function(_$CartItemModelImpl) then) =
      __$$CartItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel product,
      int quantity,
      bool isSavedForLater,
      bool isSelected,
      DateTime addedAt,
      double shopCommissionAmount,
      double platformCommissionAmount,
      double taxAmount});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$CartItemModelImplCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res, _$CartItemModelImpl>
    implements _$$CartItemModelImplCopyWith<$Res> {
  __$$CartItemModelImplCopyWithImpl(
      _$CartItemModelImpl _value, $Res Function(_$CartItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? isSavedForLater = null,
    Object? isSelected = null,
    Object? addedAt = null,
    Object? shopCommissionAmount = null,
    Object? platformCommissionAmount = null,
    Object? taxAmount = null,
  }) {
    return _then(_$CartItemModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSavedForLater: null == isSavedForLater
          ? _value.isSavedForLater
          : isSavedForLater // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shopCommissionAmount: null == shopCommissionAmount
          ? _value.shopCommissionAmount
          : shopCommissionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      platformCommissionAmount: null == platformCommissionAmount
          ? _value.platformCommissionAmount
          : platformCommissionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemModelImpl implements _CartItemModel {
  const _$CartItemModelImpl(
      {required this.product,
      this.quantity = 1,
      this.isSavedForLater = false,
      this.isSelected = false,
      required this.addedAt,
      this.shopCommissionAmount = 0.0,
      this.platformCommissionAmount = 0.0,
      this.taxAmount = 0.0});

  factory _$CartItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemModelImplFromJson(json);

  @override
  final ProductModel product;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final bool isSavedForLater;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  final DateTime addedAt;
// Revenue Architecture Ready
  @override
  @JsonKey()
  final double shopCommissionAmount;
  @override
  @JsonKey()
  final double platformCommissionAmount;
  @override
  @JsonKey()
  final double taxAmount;

  @override
  String toString() {
    return 'CartItemModel(product: $product, quantity: $quantity, isSavedForLater: $isSavedForLater, isSelected: $isSelected, addedAt: $addedAt, shopCommissionAmount: $shopCommissionAmount, platformCommissionAmount: $platformCommissionAmount, taxAmount: $taxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isSavedForLater, isSavedForLater) ||
                other.isSavedForLater == isSavedForLater) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.shopCommissionAmount, shopCommissionAmount) ||
                other.shopCommissionAmount == shopCommissionAmount) &&
            (identical(
                    other.platformCommissionAmount, platformCommissionAmount) ||
                other.platformCommissionAmount == platformCommissionAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      quantity,
      isSavedForLater,
      isSelected,
      addedAt,
      shopCommissionAmount,
      platformCommissionAmount,
      taxAmount);

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      __$$CartItemModelImplCopyWithImpl<_$CartItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemModelImplToJson(
      this,
    );
  }
}

abstract class _CartItemModel implements CartItemModel {
  const factory _CartItemModel(
      {required final ProductModel product,
      final int quantity,
      final bool isSavedForLater,
      final bool isSelected,
      required final DateTime addedAt,
      final double shopCommissionAmount,
      final double platformCommissionAmount,
      final double taxAmount}) = _$CartItemModelImpl;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$CartItemModelImpl.fromJson;

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  bool get isSavedForLater;
  @override
  bool get isSelected;
  @override
  DateTime get addedAt; // Revenue Architecture Ready
  @override
  double get shopCommissionAmount;
  @override
  double get platformCommissionAmount;
  @override
  double get taxAmount;

  /// Create a copy of CartItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
