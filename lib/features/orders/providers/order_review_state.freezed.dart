// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_review_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderReviewState {
  List<String> get specialInstructions => throw _privateConstructorUsedError;
  String? get otherInstructions => throw _privateConstructorUsedError;
  String? get orderNote => throw _privateConstructorUsedError;
  bool get isValidating => throw _privateConstructorUsedError;
  String? get validationError => throw _privateConstructorUsedError;

  /// Create a copy of OrderReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderReviewStateCopyWith<OrderReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReviewStateCopyWith<$Res> {
  factory $OrderReviewStateCopyWith(
          OrderReviewState value, $Res Function(OrderReviewState) then) =
      _$OrderReviewStateCopyWithImpl<$Res, OrderReviewState>;
  @useResult
  $Res call(
      {List<String> specialInstructions,
      String? otherInstructions,
      String? orderNote,
      bool isValidating,
      String? validationError});
}

/// @nodoc
class _$OrderReviewStateCopyWithImpl<$Res, $Val extends OrderReviewState>
    implements $OrderReviewStateCopyWith<$Res> {
  _$OrderReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialInstructions = null,
    Object? otherInstructions = freezed,
    Object? orderNote = freezed,
    Object? isValidating = null,
    Object? validationError = freezed,
  }) {
    return _then(_value.copyWith(
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
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderReviewStateImplCopyWith<$Res>
    implements $OrderReviewStateCopyWith<$Res> {
  factory _$$OrderReviewStateImplCopyWith(_$OrderReviewStateImpl value,
          $Res Function(_$OrderReviewStateImpl) then) =
      __$$OrderReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> specialInstructions,
      String? otherInstructions,
      String? orderNote,
      bool isValidating,
      String? validationError});
}

/// @nodoc
class __$$OrderReviewStateImplCopyWithImpl<$Res>
    extends _$OrderReviewStateCopyWithImpl<$Res, _$OrderReviewStateImpl>
    implements _$$OrderReviewStateImplCopyWith<$Res> {
  __$$OrderReviewStateImplCopyWithImpl(_$OrderReviewStateImpl _value,
      $Res Function(_$OrderReviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialInstructions = null,
    Object? otherInstructions = freezed,
    Object? orderNote = freezed,
    Object? isValidating = null,
    Object? validationError = freezed,
  }) {
    return _then(_$OrderReviewStateImpl(
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
      isValidating: null == isValidating
          ? _value.isValidating
          : isValidating // ignore: cast_nullable_to_non_nullable
              as bool,
      validationError: freezed == validationError
          ? _value.validationError
          : validationError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OrderReviewStateImpl implements _OrderReviewState {
  const _$OrderReviewStateImpl(
      {final List<String> specialInstructions = const [],
      this.otherInstructions,
      this.orderNote,
      this.isValidating = false,
      this.validationError})
      : _specialInstructions = specialInstructions;

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
  @JsonKey()
  final bool isValidating;
  @override
  final String? validationError;

  @override
  String toString() {
    return 'OrderReviewState(specialInstructions: $specialInstructions, otherInstructions: $otherInstructions, orderNote: $orderNote, isValidating: $isValidating, validationError: $validationError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderReviewStateImpl &&
            const DeepCollectionEquality()
                .equals(other._specialInstructions, _specialInstructions) &&
            (identical(other.otherInstructions, otherInstructions) ||
                other.otherInstructions == otherInstructions) &&
            (identical(other.orderNote, orderNote) ||
                other.orderNote == orderNote) &&
            (identical(other.isValidating, isValidating) ||
                other.isValidating == isValidating) &&
            (identical(other.validationError, validationError) ||
                other.validationError == validationError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_specialInstructions),
      otherInstructions,
      orderNote,
      isValidating,
      validationError);

  /// Create a copy of OrderReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReviewStateImplCopyWith<_$OrderReviewStateImpl> get copyWith =>
      __$$OrderReviewStateImplCopyWithImpl<_$OrderReviewStateImpl>(
          this, _$identity);
}

abstract class _OrderReviewState implements OrderReviewState {
  const factory _OrderReviewState(
      {final List<String> specialInstructions,
      final String? otherInstructions,
      final String? orderNote,
      final bool isValidating,
      final String? validationError}) = _$OrderReviewStateImpl;

  @override
  List<String> get specialInstructions;
  @override
  String? get otherInstructions;
  @override
  String? get orderNote;
  @override
  bool get isValidating;
  @override
  String? get validationError;

  /// Create a copy of OrderReviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderReviewStateImplCopyWith<_$OrderReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
