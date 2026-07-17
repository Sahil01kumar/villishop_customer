// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutState {
  CheckoutStep get currentStep => throw _privateConstructorUsedError;
  int get reservationTimer =>
      throw _privateConstructorUsedError; // 10 minutes in seconds
  bool get isOneTapEligible => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  bool get showOneTapBanner => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutStateCopyWith<CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
  @useResult
  $Res call(
      {CheckoutStep currentStep,
      int reservationTimer,
      bool isOneTapEligible,
      bool isProcessing,
      bool showOneTapBanner});
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? reservationTimer = null,
    Object? isOneTapEligible = null,
    Object? isProcessing = null,
    Object? showOneTapBanner = null,
  }) {
    return _then(_value.copyWith(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as CheckoutStep,
      reservationTimer: null == reservationTimer
          ? _value.reservationTimer
          : reservationTimer // ignore: cast_nullable_to_non_nullable
              as int,
      isOneTapEligible: null == isOneTapEligible
          ? _value.isOneTapEligible
          : isOneTapEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      showOneTapBanner: null == showOneTapBanner
          ? _value.showOneTapBanner
          : showOneTapBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutStateImplCopyWith<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  factory _$$CheckoutStateImplCopyWith(
          _$CheckoutStateImpl value, $Res Function(_$CheckoutStateImpl) then) =
      __$$CheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CheckoutStep currentStep,
      int reservationTimer,
      bool isOneTapEligible,
      bool isProcessing,
      bool showOneTapBanner});
}

/// @nodoc
class __$$CheckoutStateImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutStateImpl>
    implements _$$CheckoutStateImplCopyWith<$Res> {
  __$$CheckoutStateImplCopyWithImpl(
      _$CheckoutStateImpl _value, $Res Function(_$CheckoutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? reservationTimer = null,
    Object? isOneTapEligible = null,
    Object? isProcessing = null,
    Object? showOneTapBanner = null,
  }) {
    return _then(_$CheckoutStateImpl(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as CheckoutStep,
      reservationTimer: null == reservationTimer
          ? _value.reservationTimer
          : reservationTimer // ignore: cast_nullable_to_non_nullable
              as int,
      isOneTapEligible: null == isOneTapEligible
          ? _value.isOneTapEligible
          : isOneTapEligible // ignore: cast_nullable_to_non_nullable
              as bool,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      showOneTapBanner: null == showOneTapBanner
          ? _value.showOneTapBanner
          : showOneTapBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckoutStateImpl implements _CheckoutState {
  const _$CheckoutStateImpl(
      {this.currentStep = CheckoutStep.cart,
      this.reservationTimer = 600,
      this.isOneTapEligible = false,
      this.isProcessing = false,
      this.showOneTapBanner = false});

  @override
  @JsonKey()
  final CheckoutStep currentStep;
  @override
  @JsonKey()
  final int reservationTimer;
// 10 minutes in seconds
  @override
  @JsonKey()
  final bool isOneTapEligible;
  @override
  @JsonKey()
  final bool isProcessing;
  @override
  @JsonKey()
  final bool showOneTapBanner;

  @override
  String toString() {
    return 'CheckoutState(currentStep: $currentStep, reservationTimer: $reservationTimer, isOneTapEligible: $isOneTapEligible, isProcessing: $isProcessing, showOneTapBanner: $showOneTapBanner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutStateImpl &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.reservationTimer, reservationTimer) ||
                other.reservationTimer == reservationTimer) &&
            (identical(other.isOneTapEligible, isOneTapEligible) ||
                other.isOneTapEligible == isOneTapEligible) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.showOneTapBanner, showOneTapBanner) ||
                other.showOneTapBanner == showOneTapBanner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentStep, reservationTimer,
      isOneTapEligible, isProcessing, showOneTapBanner);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      __$$CheckoutStateImplCopyWithImpl<_$CheckoutStateImpl>(this, _$identity);
}

abstract class _CheckoutState implements CheckoutState {
  const factory _CheckoutState(
      {final CheckoutStep currentStep,
      final int reservationTimer,
      final bool isOneTapEligible,
      final bool isProcessing,
      final bool showOneTapBanner}) = _$CheckoutStateImpl;

  @override
  CheckoutStep get currentStep;
  @override
  int get reservationTimer; // 10 minutes in seconds
  @override
  bool get isOneTapEligible;
  @override
  bool get isProcessing;
  @override
  bool get showOneTapBanner;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
