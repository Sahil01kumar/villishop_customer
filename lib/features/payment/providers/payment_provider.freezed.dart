// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PaymentMethodModel> get methods => throw _privateConstructorUsedError;
  PaymentMethodModel? get selectedMethod => throw _privateConstructorUsedError;
  bool get useWallet => throw _privateConstructorUsedError;
  double get walletBalance => throw _privateConstructorUsedError;
  double get cashbackBalance => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<PaymentMethodModel> methods,
      PaymentMethodModel? selectedMethod,
      bool useWallet,
      double walletBalance,
      double cashbackBalance,
      String? errorMessage});

  $PaymentMethodModelCopyWith<$Res>? get selectedMethod;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? methods = null,
    Object? selectedMethod = freezed,
    Object? useWallet = null,
    Object? walletBalance = null,
    Object? cashbackBalance = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      methods: null == methods
          ? _value.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodModel>,
      selectedMethod: freezed == selectedMethod
          ? _value.selectedMethod
          : selectedMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel?,
      useWallet: null == useWallet
          ? _value.useWallet
          : useWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackBalance: null == cashbackBalance
          ? _value.cashbackBalance
          : cashbackBalance // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodModelCopyWith<$Res>? get selectedMethod {
    if (_value.selectedMethod == null) {
      return null;
    }

    return $PaymentMethodModelCopyWith<$Res>(_value.selectedMethod!, (value) {
      return _then(_value.copyWith(selectedMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<PaymentMethodModel> methods,
      PaymentMethodModel? selectedMethod,
      bool useWallet,
      double walletBalance,
      double cashbackBalance,
      String? errorMessage});

  @override
  $PaymentMethodModelCopyWith<$Res>? get selectedMethod;
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? methods = null,
    Object? selectedMethod = freezed,
    Object? useWallet = null,
    Object? walletBalance = null,
    Object? cashbackBalance = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PaymentStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      methods: null == methods
          ? _value._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodModel>,
      selectedMethod: freezed == selectedMethod
          ? _value.selectedMethod
          : selectedMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel?,
      useWallet: null == useWallet
          ? _value.useWallet
          : useWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      cashbackBalance: null == cashbackBalance
          ? _value.cashbackBalance
          : cashbackBalance // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl(
      {this.isLoading = false,
      final List<PaymentMethodModel> methods = const [],
      this.selectedMethod,
      this.useWallet = false,
      this.walletBalance = 0.0,
      this.cashbackBalance = 0.0,
      this.errorMessage})
      : _methods = methods;

  @override
  @JsonKey()
  final bool isLoading;
  final List<PaymentMethodModel> _methods;
  @override
  @JsonKey()
  List<PaymentMethodModel> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  @override
  final PaymentMethodModel? selectedMethod;
  @override
  @JsonKey()
  final bool useWallet;
  @override
  @JsonKey()
  final double walletBalance;
  @override
  @JsonKey()
  final double cashbackBalance;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PaymentState(isLoading: $isLoading, methods: $methods, selectedMethod: $selectedMethod, useWallet: $useWallet, walletBalance: $walletBalance, cashbackBalance: $cashbackBalance, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            (identical(other.selectedMethod, selectedMethod) ||
                other.selectedMethod == selectedMethod) &&
            (identical(other.useWallet, useWallet) ||
                other.useWallet == useWallet) &&
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance) &&
            (identical(other.cashbackBalance, cashbackBalance) ||
                other.cashbackBalance == cashbackBalance) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_methods),
      selectedMethod,
      useWallet,
      walletBalance,
      cashbackBalance,
      errorMessage);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {final bool isLoading,
      final List<PaymentMethodModel> methods,
      final PaymentMethodModel? selectedMethod,
      final bool useWallet,
      final double walletBalance,
      final double cashbackBalance,
      final String? errorMessage}) = _$PaymentStateImpl;

  @override
  bool get isLoading;
  @override
  List<PaymentMethodModel> get methods;
  @override
  PaymentMethodModel? get selectedMethod;
  @override
  bool get useWallet;
  @override
  double get walletBalance;
  @override
  double get cashbackBalance;
  @override
  String? get errorMessage;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
