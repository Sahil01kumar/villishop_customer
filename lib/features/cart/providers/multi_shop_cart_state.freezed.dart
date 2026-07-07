// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_shop_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultiShopCartState {
  bool get isLoading => throw _privateConstructorUsedError;
  MultiShopCartModel get cart => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MultiShopCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiShopCartStateCopyWith<MultiShopCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiShopCartStateCopyWith<$Res> {
  factory $MultiShopCartStateCopyWith(
          MultiShopCartState value, $Res Function(MultiShopCartState) then) =
      _$MultiShopCartStateCopyWithImpl<$Res, MultiShopCartState>;
  @useResult
  $Res call({bool isLoading, MultiShopCartModel cart, String? errorMessage});

  $MultiShopCartModelCopyWith<$Res> get cart;
}

/// @nodoc
class _$MultiShopCartStateCopyWithImpl<$Res, $Val extends MultiShopCartState>
    implements $MultiShopCartStateCopyWith<$Res> {
  _$MultiShopCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiShopCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? cart = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as MultiShopCartModel,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MultiShopCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultiShopCartModelCopyWith<$Res> get cart {
    return $MultiShopCartModelCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MultiShopCartStateImplCopyWith<$Res>
    implements $MultiShopCartStateCopyWith<$Res> {
  factory _$$MultiShopCartStateImplCopyWith(_$MultiShopCartStateImpl value,
          $Res Function(_$MultiShopCartStateImpl) then) =
      __$$MultiShopCartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, MultiShopCartModel cart, String? errorMessage});

  @override
  $MultiShopCartModelCopyWith<$Res> get cart;
}

/// @nodoc
class __$$MultiShopCartStateImplCopyWithImpl<$Res>
    extends _$MultiShopCartStateCopyWithImpl<$Res, _$MultiShopCartStateImpl>
    implements _$$MultiShopCartStateImplCopyWith<$Res> {
  __$$MultiShopCartStateImplCopyWithImpl(_$MultiShopCartStateImpl _value,
      $Res Function(_$MultiShopCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiShopCartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? cart = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MultiShopCartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as MultiShopCartModel,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MultiShopCartStateImpl implements _MultiShopCartState {
  const _$MultiShopCartStateImpl(
      {this.isLoading = false,
      this.cart = const MultiShopCartModel(),
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final MultiShopCartModel cart;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MultiShopCartState(isLoading: $isLoading, cart: $cart, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiShopCartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, cart, errorMessage);

  /// Create a copy of MultiShopCartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiShopCartStateImplCopyWith<_$MultiShopCartStateImpl> get copyWith =>
      __$$MultiShopCartStateImplCopyWithImpl<_$MultiShopCartStateImpl>(
          this, _$identity);
}

abstract class _MultiShopCartState implements MultiShopCartState {
  const factory _MultiShopCartState(
      {final bool isLoading,
      final MultiShopCartModel cart,
      final String? errorMessage}) = _$MultiShopCartStateImpl;

  @override
  bool get isLoading;
  @override
  MultiShopCartModel get cart;
  @override
  String? get errorMessage;

  /// Create a copy of MultiShopCartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiShopCartStateImplCopyWith<_$MultiShopCartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
