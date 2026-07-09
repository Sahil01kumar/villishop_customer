// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderReviewModel _$OrderReviewModelFromJson(Map<String, dynamic> json) {
  return _OrderReviewModel.fromJson(json);
}

/// @nodoc
mixin _$OrderReviewModel {
  CartModel get cart => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  DeliverySlotModel get deliverySlot => throw _privateConstructorUsedError;
  List<String> get specialInstructions => throw _privateConstructorUsedError;
  String? get otherInstructions => throw _privateConstructorUsedError;
  String? get orderNote => throw _privateConstructorUsedError;

  /// Serializes this OrderReviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderReviewModelCopyWith<OrderReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReviewModelCopyWith<$Res> {
  factory $OrderReviewModelCopyWith(
          OrderReviewModel value, $Res Function(OrderReviewModel) then) =
      _$OrderReviewModelCopyWithImpl<$Res, OrderReviewModel>;
  @useResult
  $Res call(
      {CartModel cart,
      AddressModel address,
      DeliverySlotModel deliverySlot,
      List<String> specialInstructions,
      String? otherInstructions,
      String? orderNote});

  $CartModelCopyWith<$Res> get cart;
  $AddressModelCopyWith<$Res> get address;
  $DeliverySlotModelCopyWith<$Res> get deliverySlot;
}

/// @nodoc
class _$OrderReviewModelCopyWithImpl<$Res, $Val extends OrderReviewModel>
    implements $OrderReviewModelCopyWith<$Res> {
  _$OrderReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
    Object? address = null,
    Object? deliverySlot = null,
    Object? specialInstructions = null,
    Object? otherInstructions = freezed,
    Object? orderNote = freezed,
  }) {
    return _then(_value.copyWith(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      deliverySlot: null == deliverySlot
          ? _value.deliverySlot
          : deliverySlot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel,
      specialInstructions: null == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      otherInstructions: freezed == otherInstructions
          ? _value.otherInstructions
          : otherInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNote: freezed == orderNote
          ? _value.orderNote
          : orderNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cart {
    return $CartModelCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliverySlotModelCopyWith<$Res> get deliverySlot {
    return $DeliverySlotModelCopyWith<$Res>(_value.deliverySlot, (value) {
      return _then(_value.copyWith(deliverySlot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderReviewModelImplCopyWith<$Res>
    implements $OrderReviewModelCopyWith<$Res> {
  factory _$$OrderReviewModelImplCopyWith(_$OrderReviewModelImpl value,
          $Res Function(_$OrderReviewModelImpl) then) =
      __$$OrderReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartModel cart,
      AddressModel address,
      DeliverySlotModel deliverySlot,
      List<String> specialInstructions,
      String? otherInstructions,
      String? orderNote});

  @override
  $CartModelCopyWith<$Res> get cart;
  @override
  $AddressModelCopyWith<$Res> get address;
  @override
  $DeliverySlotModelCopyWith<$Res> get deliverySlot;
}

/// @nodoc
class __$$OrderReviewModelImplCopyWithImpl<$Res>
    extends _$OrderReviewModelCopyWithImpl<$Res, _$OrderReviewModelImpl>
    implements _$$OrderReviewModelImplCopyWith<$Res> {
  __$$OrderReviewModelImplCopyWithImpl(_$OrderReviewModelImpl _value,
      $Res Function(_$OrderReviewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
    Object? address = null,
    Object? deliverySlot = null,
    Object? specialInstructions = null,
    Object? otherInstructions = freezed,
    Object? orderNote = freezed,
  }) {
    return _then(_$OrderReviewModelImpl(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      deliverySlot: null == deliverySlot
          ? _value.deliverySlot
          : deliverySlot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel,
      specialInstructions: null == specialInstructions
          ? _value._specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      otherInstructions: freezed == otherInstructions
          ? _value.otherInstructions
          : otherInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNote: freezed == orderNote
          ? _value.orderNote
          : orderNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderReviewModelImpl implements _OrderReviewModel {
  const _$OrderReviewModelImpl(
      {required this.cart,
      required this.address,
      required this.deliverySlot,
      final List<String> specialInstructions = const [],
      this.otherInstructions,
      this.orderNote})
      : _specialInstructions = specialInstructions;

  factory _$OrderReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderReviewModelImplFromJson(json);

  @override
  final CartModel cart;
  @override
  final AddressModel address;
  @override
  final DeliverySlotModel deliverySlot;
  final List<String> _specialInstructions;
  @override
  @JsonKey()
  List<String> get specialInstructions {
    if (_specialInstructions is EqualUnmodifiableListView)
      return _specialInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialInstructions);
  }

  @override
  final String? otherInstructions;
  @override
  final String? orderNote;

  @override
  String toString() {
    return 'OrderReviewModel(cart: $cart, address: $address, deliverySlot: $deliverySlot, specialInstructions: $specialInstructions, otherInstructions: $otherInstructions, orderNote: $orderNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderReviewModelImpl &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.deliverySlot, deliverySlot) ||
                other.deliverySlot == deliverySlot) &&
            const DeepCollectionEquality()
                .equals(other._specialInstructions, _specialInstructions) &&
            (identical(other.otherInstructions, otherInstructions) ||
                other.otherInstructions == otherInstructions) &&
            (identical(other.orderNote, orderNote) ||
                other.orderNote == orderNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cart,
      address,
      deliverySlot,
      const DeepCollectionEquality().hash(_specialInstructions),
      otherInstructions,
      orderNote);

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReviewModelImplCopyWith<_$OrderReviewModelImpl> get copyWith =>
      __$$OrderReviewModelImplCopyWithImpl<_$OrderReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderReviewModelImplToJson(
      this,
    );
  }
}

abstract class _OrderReviewModel implements OrderReviewModel {
  const factory _OrderReviewModel(
      {required final CartModel cart,
      required final AddressModel address,
      required final DeliverySlotModel deliverySlot,
      final List<String> specialInstructions,
      final String? otherInstructions,
      final String? orderNote}) = _$OrderReviewModelImpl;

  factory _OrderReviewModel.fromJson(Map<String, dynamic> json) =
      _$OrderReviewModelImpl.fromJson;

  @override
  CartModel get cart;
  @override
  AddressModel get address;
  @override
  DeliverySlotModel get deliverySlot;
  @override
  List<String> get specialInstructions;
  @override
  String? get otherInstructions;
  @override
  String? get orderNote;

  /// Create a copy of OrderReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderReviewModelImplCopyWith<_$OrderReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
