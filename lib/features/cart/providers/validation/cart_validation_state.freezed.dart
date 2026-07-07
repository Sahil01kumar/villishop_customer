// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_validation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartValidationState {
  bool get isValidating => throw _privateConstructorUsedError;
  CartValidationModel? get validationResult =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CartValidationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartValidationStateCopyWith<CartValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartValidationStateCopyWith<$Res> {
  factory $CartValidationStateCopyWith(
          CartValidationState value, $Res Function(CartValidationState) then) =
      _$CartValidationStateCopyWithImpl<$Res, CartValidationState>;
  @useResult
  $Res call(
      {bool isValidating,
      CartValidationModel? validationResult,
      String? errorMessage});

  $CartValidationModelCopyWith<$Res>? get validationResult;
}

/// @nodoc
class _$CartValidationStateCopyWithImpl<$Res, $Val extends CartValidationState>
    implements $CartValidationStateCopyWith<$Res> {
  _$CartValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartValidationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidating = null,
    Object? validationResult = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validationResult: freezed == validationResult
          ? _value.validationResult
          : validationResult // ignore: cast_nullable_to_non_nullable
              as CartValidationModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CartValidationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartValidationModelCopyWith<$Res>? get validationResult {
    if (_value.validationResult == null) {
      return null;
    }

    return $CartValidationModelCopyWith<$Res>(_value.validationResult!,
        (value) {
      return _then(_value.copyWith(validationResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartValidationStateImplCopyWith<$Res>
    implements $CartValidationStateCopyWith<$Res> {
  factory _$$CartValidationStateImplCopyWith(_$CartValidationStateImpl value,
          $Res Function(_$CartValidationStateImpl) then) =
      __$$CartValidationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isValidating,
      CartValidationModel? validationResult,
      String? errorMessage});

  @override
  $CartValidationModelCopyWith<$Res>? get validationResult;
}

/// @nodoc
class __$$CartValidationStateImplCopyWithImpl<$Res>
    extends _$CartValidationStateCopyWithImpl<$Res, _$CartValidationStateImpl>
    implements _$$CartValidationStateImplCopyWith<$Res> {
  __$$CartValidationStateImplCopyWithImpl(_$CartValidationStateImpl _value,
      $Res Function(_$CartValidationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartValidationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidating = null,
    Object? validationResult = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CartValidationStateImpl(
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validationResult: freezed == validationResult
          ? _value.validationResult
          : validationResult // ignore: cast_nullable_to_non_nullable
              as CartValidationModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CartValidationStateImpl implements _CartValidationState {
  const _$CartValidationStateImpl(
      {this.isValidating = false, this.validationResult, this.errorMessage});

  @override
  @JsonKey()
  final bool isValidating;
  @override
  final CartValidationModel? validationResult;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CartValidationState(isValidating: $isValidating, validationResult: $validationResult, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartValidationStateImpl &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating) &&
            (identical(other.validationResult, validationResult) ||
                other.validationResult == validationResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isValidating, validationResult, errorMessage);

  /// Create a copy of CartValidationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartValidationStateImplCopyWith<_$CartValidationStateImpl> get copyWith =>
      __$$CartValidationStateImplCopyWithImpl<_$CartValidationStateImpl>(
          this, _$identity);
}

abstract class _CartValidationState implements CartValidationState {
  const factory _CartValidationState(
      {final bool isValidating,
      final CartValidationModel? validationResult,
      final String? errorMessage}) = _$CartValidationStateImpl;

  @override
  bool get isValidating;
  @override
  CartValidationModel? get validationResult;
  @override
  String? get errorMessage;

  /// Create a copy of CartValidationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartValidationStateImplCopyWith<_$CartValidationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
