// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CouponModel> get availableCoupons => throw _privateConstructorUsedError;
  CouponModel? get appliedCoupon => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isValidating => throw _privateConstructorUsedError;

  /// Create a copy of CouponState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponStateCopyWith<CouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<CouponModel> availableCoupons,
      CouponModel? appliedCoupon,
      String? errorMessage,
      bool isValidating});

  $CouponModelCopyWith<$Res>? get appliedCoupon;
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? availableCoupons = null,
    Object? appliedCoupon = freezed,
    Object? errorMessage = freezed,
    Object? isValidating = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      availableCoupons: null == availableCoupons
          ? _value.availableCoupons
          : availableCoupons // ignore: cast_nullable_to_non_nullable
              as List<CouponModel>,
      appliedCoupon: freezed == appliedCoupon
          ? _value.appliedCoupon
          : appliedCoupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CouponState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CouponModelCopyWith<$Res>? get appliedCoupon {
    if (_value.appliedCoupon == null) {
      return null;
    }

    return $CouponModelCopyWith<$Res>(_value.appliedCoupon!, (value) {
      return _then(_value.copyWith(appliedCoupon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponStateImplCopyWith<$Res>
    implements $CouponStateCopyWith<$Res> {
  factory _$$CouponStateImplCopyWith(
          _$CouponStateImpl value, $Res Function(_$CouponStateImpl) then) =
      __$$CouponStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<CouponModel> availableCoupons,
      CouponModel? appliedCoupon,
      String? errorMessage,
      bool isValidating});

  @override
  $CouponModelCopyWith<$Res>? get appliedCoupon;
}

/// @nodoc
class __$$CouponStateImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponStateImpl>
    implements _$$CouponStateImplCopyWith<$Res> {
  __$$CouponStateImplCopyWithImpl(
      _$CouponStateImpl _value, $Res Function(_$CouponStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? availableCoupons = null,
    Object? appliedCoupon = freezed,
    Object? errorMessage = freezed,
    Object? isValidating = null,
  }) {
    return _then(_$CouponStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      availableCoupons: null == availableCoupons
          ? _value._availableCoupons
          : availableCoupons // ignore: cast_nullable_to_non_nullable
              as List<CouponModel>,
      appliedCoupon: freezed == appliedCoupon
          ? _value.appliedCoupon
          : appliedCoupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CouponStateImpl implements _CouponState {
  const _$CouponStateImpl(
      {this.isLoading = false,
      final List<CouponModel> availableCoupons = const [],
      this.appliedCoupon,
      this.errorMessage,
      this.isValidating = false})
      : _availableCoupons = availableCoupons;

  @override
  @JsonKey()
  final bool isLoading;
  final List<CouponModel> _availableCoupons;
  @override
  @JsonKey()
  List<CouponModel> get availableCoupons {
    if (_availableCoupons is EqualUnmodifiableListView)
      return _availableCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableCoupons);
  }

  @override
  final CouponModel? appliedCoupon;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isValidating;

  @override
  String toString() {
    return 'CouponState(isLoading: $isLoading, availableCoupons: $availableCoupons, appliedCoupon: $appliedCoupon, errorMessage: $errorMessage, isValidating: $isValidating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._availableCoupons, _availableCoupons) &&
            (identical(other.appliedCoupon, appliedCoupon) ||
                other.appliedCoupon == appliedCoupon) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_availableCoupons),
      appliedCoupon,
      errorMessage,
      isValidating);

  /// Create a copy of CouponState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      __$$CouponStateImplCopyWithImpl<_$CouponStateImpl>(this, _$identity);
}

abstract class _CouponState implements CouponState {
  const factory _CouponState(
      {final bool isLoading,
      final List<CouponModel> availableCoupons,
      final CouponModel? appliedCoupon,
      final String? errorMessage,
      final bool isValidating}) = _$CouponStateImpl;

  @override
  bool get isLoading;
  @override
  List<CouponModel> get availableCoupons;
  @override
  CouponModel? get appliedCoupon;
  @override
  String? get errorMessage;
  @override
  bool get isValidating;

  /// Create a copy of CouponState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
