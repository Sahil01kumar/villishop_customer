// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(OrderPlacementStatus status, String? message)
        loading,
    required TResult Function(OrderPlacementStatus status, int attempt)
        retrying,
    required TResult Function(OrderModel order) success,
    required TResult Function(
            OrderPlacementStatus errorStatus, String message, String? errorCode)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(OrderPlacementStatus status, String? message)? loading,
    TResult? Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult? Function(OrderModel order)? success,
    TResult? Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(OrderPlacementStatus status, String? message)? loading,
    TResult Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult Function(OrderModel order)? success,
    TResult Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrderIdle value) idle,
    required TResult Function(_PlaceOrderLoading value) loading,
    required TResult Function(_PlaceOrderRetrying value) retrying,
    required TResult Function(_PlaceOrderSuccess value) success,
    required TResult Function(_PlaceOrderFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrderIdle value)? idle,
    TResult? Function(_PlaceOrderLoading value)? loading,
    TResult? Function(_PlaceOrderRetrying value)? retrying,
    TResult? Function(_PlaceOrderSuccess value)? success,
    TResult? Function(_PlaceOrderFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrderIdle value)? idle,
    TResult Function(_PlaceOrderLoading value)? loading,
    TResult Function(_PlaceOrderRetrying value)? retrying,
    TResult Function(_PlaceOrderSuccess value)? success,
    TResult Function(_PlaceOrderFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderStateCopyWith<$Res> {
  factory $PlaceOrderStateCopyWith(
          PlaceOrderState value, $Res Function(PlaceOrderState) then) =
      _$PlaceOrderStateCopyWithImpl<$Res, PlaceOrderState>;
}

/// @nodoc
class _$PlaceOrderStateCopyWithImpl<$Res, $Val extends PlaceOrderState>
    implements $PlaceOrderStateCopyWith<$Res> {
  _$PlaceOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlaceOrderIdleImplCopyWith<$Res> {
  factory _$$PlaceOrderIdleImplCopyWith(_$PlaceOrderIdleImpl value,
          $Res Function(_$PlaceOrderIdleImpl) then) =
      __$$PlaceOrderIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceOrderIdleImplCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res, _$PlaceOrderIdleImpl>
    implements _$$PlaceOrderIdleImplCopyWith<$Res> {
  __$$PlaceOrderIdleImplCopyWithImpl(
      _$PlaceOrderIdleImpl _value, $Res Function(_$PlaceOrderIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlaceOrderIdleImpl implements _PlaceOrderIdle {
  const _$PlaceOrderIdleImpl();

  @override
  String toString() {
    return 'PlaceOrderState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlaceOrderIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(OrderPlacementStatus status, String? message)
        loading,
    required TResult Function(OrderPlacementStatus status, int attempt)
        retrying,
    required TResult Function(OrderModel order) success,
    required TResult Function(
            OrderPlacementStatus errorStatus, String message, String? errorCode)
        failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(OrderPlacementStatus status, String? message)? loading,
    TResult? Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult? Function(OrderModel order)? success,
    TResult? Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(OrderPlacementStatus status, String? message)? loading,
    TResult Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult Function(OrderModel order)? success,
    TResult Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrderIdle value) idle,
    required TResult Function(_PlaceOrderLoading value) loading,
    required TResult Function(_PlaceOrderRetrying value) retrying,
    required TResult Function(_PlaceOrderSuccess value) success,
    required TResult Function(_PlaceOrderFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrderIdle value)? idle,
    TResult? Function(_PlaceOrderLoading value)? loading,
    TResult? Function(_PlaceOrderRetrying value)? retrying,
    TResult? Function(_PlaceOrderSuccess value)? success,
    TResult? Function(_PlaceOrderFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrderIdle value)? idle,
    TResult Function(_PlaceOrderLoading value)? loading,
    TResult Function(_PlaceOrderRetrying value)? retrying,
    TResult Function(_PlaceOrderSuccess value)? success,
    TResult Function(_PlaceOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrderIdle implements PlaceOrderState {
  const factory _PlaceOrderIdle() = _$PlaceOrderIdleImpl;
}

/// @nodoc
abstract class _$$PlaceOrderLoadingImplCopyWith<$Res> {
  factory _$$PlaceOrderLoadingImplCopyWith(_$PlaceOrderLoadingImpl value,
          $Res Function(_$PlaceOrderLoadingImpl) then) =
      __$$PlaceOrderLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderPlacementStatus status, String? message});
}

/// @nodoc
class __$$PlaceOrderLoadingImplCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res, _$PlaceOrderLoadingImpl>
    implements _$$PlaceOrderLoadingImplCopyWith<$Res> {
  __$$PlaceOrderLoadingImplCopyWithImpl(_$PlaceOrderLoadingImpl _value,
      $Res Function(_$PlaceOrderLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$PlaceOrderLoadingImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderPlacementStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlaceOrderLoadingImpl implements _PlaceOrderLoading {
  const _$PlaceOrderLoadingImpl(
      {this.status = OrderPlacementStatus.validating, this.message});

  @override
  @JsonKey()
  final OrderPlacementStatus status;
  @override
  final String? message;

  @override
  String toString() {
    return 'PlaceOrderState.loading(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderLoadingImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderLoadingImplCopyWith<_$PlaceOrderLoadingImpl> get copyWith =>
      __$$PlaceOrderLoadingImplCopyWithImpl<_$PlaceOrderLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(OrderPlacementStatus status, String? message)
        loading,
    required TResult Function(OrderPlacementStatus status, int attempt)
        retrying,
    required TResult Function(OrderModel order) success,
    required TResult Function(
            OrderPlacementStatus errorStatus, String message, String? errorCode)
        failure,
  }) {
    return loading(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(OrderPlacementStatus status, String? message)? loading,
    TResult? Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult? Function(OrderModel order)? success,
    TResult? Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
  }) {
    return loading?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(OrderPlacementStatus status, String? message)? loading,
    TResult Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult Function(OrderModel order)? success,
    TResult Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrderIdle value) idle,
    required TResult Function(_PlaceOrderLoading value) loading,
    required TResult Function(_PlaceOrderRetrying value) retrying,
    required TResult Function(_PlaceOrderSuccess value) success,
    required TResult Function(_PlaceOrderFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrderIdle value)? idle,
    TResult? Function(_PlaceOrderLoading value)? loading,
    TResult? Function(_PlaceOrderRetrying value)? retrying,
    TResult? Function(_PlaceOrderSuccess value)? success,
    TResult? Function(_PlaceOrderFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrderIdle value)? idle,
    TResult Function(_PlaceOrderLoading value)? loading,
    TResult Function(_PlaceOrderRetrying value)? retrying,
    TResult Function(_PlaceOrderSuccess value)? success,
    TResult Function(_PlaceOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrderLoading implements PlaceOrderState {
  const factory _PlaceOrderLoading(
      {final OrderPlacementStatus status,
      final String? message}) = _$PlaceOrderLoadingImpl;

  OrderPlacementStatus get status;
  String? get message;

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderLoadingImplCopyWith<_$PlaceOrderLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderRetryingImplCopyWith<$Res> {
  factory _$$PlaceOrderRetryingImplCopyWith(_$PlaceOrderRetryingImpl value,
          $Res Function(_$PlaceOrderRetryingImpl) then) =
      __$$PlaceOrderRetryingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderPlacementStatus status, int attempt});
}

/// @nodoc
class __$$PlaceOrderRetryingImplCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res, _$PlaceOrderRetryingImpl>
    implements _$$PlaceOrderRetryingImplCopyWith<$Res> {
  __$$PlaceOrderRetryingImplCopyWithImpl(_$PlaceOrderRetryingImpl _value,
      $Res Function(_$PlaceOrderRetryingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? attempt = null,
  }) {
    return _then(_$PlaceOrderRetryingImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderPlacementStatus,
      attempt: null == attempt
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlaceOrderRetryingImpl implements _PlaceOrderRetrying {
  const _$PlaceOrderRetryingImpl({required this.status, required this.attempt});

  @override
  final OrderPlacementStatus status;
  @override
  final int attempt;

  @override
  String toString() {
    return 'PlaceOrderState.retrying(status: $status, attempt: $attempt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderRetryingImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.attempt, attempt) || other.attempt == attempt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, attempt);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderRetryingImplCopyWith<_$PlaceOrderRetryingImpl> get copyWith =>
      __$$PlaceOrderRetryingImplCopyWithImpl<_$PlaceOrderRetryingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(OrderPlacementStatus status, String? message)
        loading,
    required TResult Function(OrderPlacementStatus status, int attempt)
        retrying,
    required TResult Function(OrderModel order) success,
    required TResult Function(
            OrderPlacementStatus errorStatus, String message, String? errorCode)
        failure,
  }) {
    return retrying(status, attempt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(OrderPlacementStatus status, String? message)? loading,
    TResult? Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult? Function(OrderModel order)? success,
    TResult? Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
  }) {
    return retrying?.call(status, attempt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(OrderPlacementStatus status, String? message)? loading,
    TResult Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult Function(OrderModel order)? success,
    TResult Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
    required TResult orElse(),
  }) {
    if (retrying != null) {
      return retrying(status, attempt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrderIdle value) idle,
    required TResult Function(_PlaceOrderLoading value) loading,
    required TResult Function(_PlaceOrderRetrying value) retrying,
    required TResult Function(_PlaceOrderSuccess value) success,
    required TResult Function(_PlaceOrderFailure value) failure,
  }) {
    return retrying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrderIdle value)? idle,
    TResult? Function(_PlaceOrderLoading value)? loading,
    TResult? Function(_PlaceOrderRetrying value)? retrying,
    TResult? Function(_PlaceOrderSuccess value)? success,
    TResult? Function(_PlaceOrderFailure value)? failure,
  }) {
    return retrying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrderIdle value)? idle,
    TResult Function(_PlaceOrderLoading value)? loading,
    TResult Function(_PlaceOrderRetrying value)? retrying,
    TResult Function(_PlaceOrderSuccess value)? success,
    TResult Function(_PlaceOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (retrying != null) {
      return retrying(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrderRetrying implements PlaceOrderState {
  const factory _PlaceOrderRetrying(
      {required final OrderPlacementStatus status,
      required final int attempt}) = _$PlaceOrderRetryingImpl;

  OrderPlacementStatus get status;
  int get attempt;

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderRetryingImplCopyWith<_$PlaceOrderRetryingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderSuccessImplCopyWith<$Res> {
  factory _$$PlaceOrderSuccessImplCopyWith(_$PlaceOrderSuccessImpl value,
          $Res Function(_$PlaceOrderSuccessImpl) then) =
      __$$PlaceOrderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderModel order});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class __$$PlaceOrderSuccessImplCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res, _$PlaceOrderSuccessImpl>
    implements _$$PlaceOrderSuccessImplCopyWith<$Res> {
  __$$PlaceOrderSuccessImplCopyWithImpl(_$PlaceOrderSuccessImpl _value,
      $Res Function(_$PlaceOrderSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$PlaceOrderSuccessImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$PlaceOrderSuccessImpl implements _PlaceOrderSuccess {
  const _$PlaceOrderSuccessImpl(this.order);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'PlaceOrderState.success(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderSuccessImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderSuccessImplCopyWith<_$PlaceOrderSuccessImpl> get copyWith =>
      __$$PlaceOrderSuccessImplCopyWithImpl<_$PlaceOrderSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(OrderPlacementStatus status, String? message)
        loading,
    required TResult Function(OrderPlacementStatus status, int attempt)
        retrying,
    required TResult Function(OrderModel order) success,
    required TResult Function(
            OrderPlacementStatus errorStatus, String message, String? errorCode)
        failure,
  }) {
    return success(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(OrderPlacementStatus status, String? message)? loading,
    TResult? Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult? Function(OrderModel order)? success,
    TResult? Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
  }) {
    return success?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(OrderPlacementStatus status, String? message)? loading,
    TResult Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult Function(OrderModel order)? success,
    TResult Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrderIdle value) idle,
    required TResult Function(_PlaceOrderLoading value) loading,
    required TResult Function(_PlaceOrderRetrying value) retrying,
    required TResult Function(_PlaceOrderSuccess value) success,
    required TResult Function(_PlaceOrderFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrderIdle value)? idle,
    TResult? Function(_PlaceOrderLoading value)? loading,
    TResult? Function(_PlaceOrderRetrying value)? retrying,
    TResult? Function(_PlaceOrderSuccess value)? success,
    TResult? Function(_PlaceOrderFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrderIdle value)? idle,
    TResult Function(_PlaceOrderLoading value)? loading,
    TResult Function(_PlaceOrderRetrying value)? retrying,
    TResult Function(_PlaceOrderSuccess value)? success,
    TResult Function(_PlaceOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrderSuccess implements PlaceOrderState {
  const factory _PlaceOrderSuccess(final OrderModel order) =
      _$PlaceOrderSuccessImpl;

  OrderModel get order;

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderSuccessImplCopyWith<_$PlaceOrderSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceOrderFailureImplCopyWith<$Res> {
  factory _$$PlaceOrderFailureImplCopyWith(_$PlaceOrderFailureImpl value,
          $Res Function(_$PlaceOrderFailureImpl) then) =
      __$$PlaceOrderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OrderPlacementStatus errorStatus, String message, String? errorCode});
}

/// @nodoc
class __$$PlaceOrderFailureImplCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res, _$PlaceOrderFailureImpl>
    implements _$$PlaceOrderFailureImplCopyWith<$Res> {
  __$$PlaceOrderFailureImplCopyWithImpl(_$PlaceOrderFailureImpl _value,
      $Res Function(_$PlaceOrderFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorStatus = null,
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$PlaceOrderFailureImpl(
      errorStatus: null == errorStatus
          ? _value.errorStatus
          : errorStatus // ignore: cast_nullable_to_non_nullable
              as OrderPlacementStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlaceOrderFailureImpl implements _PlaceOrderFailure {
  const _$PlaceOrderFailureImpl(
      {required this.errorStatus, required this.message, this.errorCode});

  @override
  final OrderPlacementStatus errorStatus;
  @override
  final String message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'PlaceOrderState.failure(errorStatus: $errorStatus, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderFailureImpl &&
            (identical(other.errorStatus, errorStatus) ||
                other.errorStatus == errorStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorStatus, message, errorCode);

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderFailureImplCopyWith<_$PlaceOrderFailureImpl> get copyWith =>
      __$$PlaceOrderFailureImplCopyWithImpl<_$PlaceOrderFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(OrderPlacementStatus status, String? message)
        loading,
    required TResult Function(OrderPlacementStatus status, int attempt)
        retrying,
    required TResult Function(OrderModel order) success,
    required TResult Function(
            OrderPlacementStatus errorStatus, String message, String? errorCode)
        failure,
  }) {
    return failure(errorStatus, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(OrderPlacementStatus status, String? message)? loading,
    TResult? Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult? Function(OrderModel order)? success,
    TResult? Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
  }) {
    return failure?.call(errorStatus, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(OrderPlacementStatus status, String? message)? loading,
    TResult Function(OrderPlacementStatus status, int attempt)? retrying,
    TResult Function(OrderModel order)? success,
    TResult Function(OrderPlacementStatus errorStatus, String message,
            String? errorCode)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorStatus, message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrderIdle value) idle,
    required TResult Function(_PlaceOrderLoading value) loading,
    required TResult Function(_PlaceOrderRetrying value) retrying,
    required TResult Function(_PlaceOrderSuccess value) success,
    required TResult Function(_PlaceOrderFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrderIdle value)? idle,
    TResult? Function(_PlaceOrderLoading value)? loading,
    TResult? Function(_PlaceOrderRetrying value)? retrying,
    TResult? Function(_PlaceOrderSuccess value)? success,
    TResult? Function(_PlaceOrderFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrderIdle value)? idle,
    TResult Function(_PlaceOrderLoading value)? loading,
    TResult Function(_PlaceOrderRetrying value)? retrying,
    TResult Function(_PlaceOrderSuccess value)? success,
    TResult Function(_PlaceOrderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrderFailure implements PlaceOrderState {
  const factory _PlaceOrderFailure(
      {required final OrderPlacementStatus errorStatus,
      required final String message,
      final String? errorCode}) = _$PlaceOrderFailureImpl;

  OrderPlacementStatus get errorStatus;
  String get message;
  String? get errorCode;

  /// Create a copy of PlaceOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderFailureImplCopyWith<_$PlaceOrderFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
