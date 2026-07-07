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
  List<CartItemModel> get items => throw _privateConstructorUsedError;
  CartSummaryModel get summary => throw _privateConstructorUsedError;
  String? get appliedCouponCode => throw _privateConstructorUsedError;
  String? get deliveryInstruction => throw _privateConstructorUsedError;
  Map<String, List<CartItemModel>> get itemsByShop =>
      throw _privateConstructorUsedError;

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
      {List<CartItemModel> items,
      CartSummaryModel summary,
      String? appliedCouponCode,
      String? deliveryInstruction,
      Map<String, List<CartItemModel>> itemsByShop});

  $CartSummaryModelCopyWith<$Res> get summary;
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
    Object? items = null,
    Object? summary = null,
    Object? appliedCouponCode = freezed,
    Object? deliveryInstruction = freezed,
    Object? itemsByShop = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as CartSummaryModel,
      appliedCouponCode: freezed == appliedCouponCode
          ? _value.appliedCouponCode
          : appliedCouponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryInstruction: freezed == deliveryInstruction
          ? _value.deliveryInstruction
          : deliveryInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsByShop: null == itemsByShop
          ? _value.itemsByShop
          : itemsByShop // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CartItemModel>>,
    ) as $Val);
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartSummaryModelCopyWith<$Res> get summary {
    return $CartSummaryModelCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
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
      {List<CartItemModel> items,
      CartSummaryModel summary,
      String? appliedCouponCode,
      String? deliveryInstruction,
      Map<String, List<CartItemModel>> itemsByShop});

  @override
  $CartSummaryModelCopyWith<$Res> get summary;
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
    Object? items = null,
    Object? summary = null,
    Object? appliedCouponCode = freezed,
    Object? deliveryInstruction = freezed,
    Object? itemsByShop = null,
  }) {
    return _then(_$CartModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as CartSummaryModel,
      appliedCouponCode: freezed == appliedCouponCode
          ? _value.appliedCouponCode
          : appliedCouponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryInstruction: freezed == deliveryInstruction
          ? _value.deliveryInstruction
          : deliveryInstruction // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsByShop: null == itemsByShop
          ? _value._itemsByShop
          : itemsByShop // ignore: cast_nullable_to_non_nullable
              as Map<String, List<CartItemModel>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl(
      {final List<CartItemModel> items = const [],
      this.summary = const CartSummaryModel(),
      this.appliedCouponCode,
      this.deliveryInstruction,
      final Map<String, List<CartItemModel>> itemsByShop = const {}})
      : _items = items,
        _itemsByShop = itemsByShop;

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  final List<CartItemModel> _items;
  @override
  @JsonKey()
  List<CartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final CartSummaryModel summary;
  @override
  final String? appliedCouponCode;
  @override
  final String? deliveryInstruction;
  final Map<String, List<CartItemModel>> _itemsByShop;
  @override
  @JsonKey()
  Map<String, List<CartItemModel>> get itemsByShop {
    if (_itemsByShop is EqualUnmodifiableMapView) return _itemsByShop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_itemsByShop);
  }

  @override
  String toString() {
    return 'CartModel(items: $items, summary: $summary, appliedCouponCode: $appliedCouponCode, deliveryInstruction: $deliveryInstruction, itemsByShop: $itemsByShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.appliedCouponCode, appliedCouponCode) ||
                other.appliedCouponCode == appliedCouponCode) &&
            (identical(other.deliveryInstruction, deliveryInstruction) ||
                other.deliveryInstruction == deliveryInstruction) &&
            const DeepCollectionEquality()
                .equals(other._itemsByShop, _itemsByShop));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      summary,
      appliedCouponCode,
      deliveryInstruction,
      const DeepCollectionEquality().hash(_itemsByShop));

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
      {final List<CartItemModel> items,
      final CartSummaryModel summary,
      final String? appliedCouponCode,
      final String? deliveryInstruction,
      final Map<String, List<CartItemModel>> itemsByShop}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  List<CartItemModel> get items;
  @override
  CartSummaryModel get summary;
  @override
  String? get appliedCouponCode;
  @override
  String? get deliveryInstruction;
  @override
  Map<String, List<CartItemModel>> get itemsByShop;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
