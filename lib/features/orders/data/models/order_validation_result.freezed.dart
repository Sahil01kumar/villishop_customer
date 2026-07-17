// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_validation_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderValidationResult _$OrderValidationResultFromJson(
    Map<String, dynamic> json) {
  return _OrderValidationResult.fromJson(json);
}

/// @nodoc
mixin _$OrderValidationResult {
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorTitle => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  ValidationSeverity get severity => throw _privateConstructorUsedError;
  String? get actionRequired => throw _privateConstructorUsedError;
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Serializes this OrderValidationResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderValidationResultCopyWith<OrderValidationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderValidationResultCopyWith<$Res> {
  factory $OrderValidationResultCopyWith(OrderValidationResult value,
          $Res Function(OrderValidationResult) then) =
      _$OrderValidationResultCopyWithImpl<$Res, OrderValidationResult>;
  @useResult
  $Res call(
      {bool isValid,
      String? errorCode,
      String? errorTitle,
      String? errorMessage,
      ValidationSeverity severity,
      String? actionRequired,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$OrderValidationResultCopyWithImpl<$Res,
        $Val extends OrderValidationResult>
    implements $OrderValidationResultCopyWith<$Res> {
  _$OrderValidationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? errorCode = freezed,
    Object? errorTitle = freezed,
    Object? errorMessage = freezed,
    Object? severity = null,
    Object? actionRequired = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTitle: freezed == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
      actionRequired: freezed == actionRequired
          ? _value.actionRequired
          : actionRequired // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderValidationResultImplCopyWith<$Res>
    implements $OrderValidationResultCopyWith<$Res> {
  factory _$$OrderValidationResultImplCopyWith(
          _$OrderValidationResultImpl value,
          $Res Function(_$OrderValidationResultImpl) then) =
      __$$OrderValidationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isValid,
      String? errorCode,
      String? errorTitle,
      String? errorMessage,
      ValidationSeverity severity,
      String? actionRequired,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$OrderValidationResultImplCopyWithImpl<$Res>
    extends _$OrderValidationResultCopyWithImpl<$Res,
        _$OrderValidationResultImpl>
    implements _$$OrderValidationResultImplCopyWith<$Res> {
  __$$OrderValidationResultImplCopyWithImpl(_$OrderValidationResultImpl _value,
      $Res Function(_$OrderValidationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? errorCode = freezed,
    Object? errorTitle = freezed,
    Object? errorMessage = freezed,
    Object? severity = null,
    Object? actionRequired = freezed,
    Object? metadata = null,
  }) {
    return _then(_$OrderValidationResultImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTitle: freezed == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
      actionRequired: freezed == actionRequired
          ? _value.actionRequired
          : actionRequired // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderValidationResultImpl implements _OrderValidationResult {
  const _$OrderValidationResultImpl(
      {this.isValid = true,
      this.errorCode,
      this.errorTitle,
      this.errorMessage,
      this.severity = ValidationSeverity.info,
      this.actionRequired,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata;

  factory _$OrderValidationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderValidationResultImplFromJson(json);

  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorCode;
  @override
  final String? errorTitle;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final ValidationSeverity severity;
  @override
  final String? actionRequired;
  final Map<String, dynamic> _metadata;
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'OrderValidationResult(isValid: $isValid, errorCode: $errorCode, errorTitle: $errorTitle, errorMessage: $errorMessage, severity: $severity, actionRequired: $actionRequired, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderValidationResultImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorTitle, errorTitle) ||
                other.errorTitle == errorTitle) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.actionRequired, actionRequired) ||
                other.actionRequired == actionRequired) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isValid,
      errorCode,
      errorTitle,
      errorMessage,
      severity,
      actionRequired,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of OrderValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderValidationResultImplCopyWith<_$OrderValidationResultImpl>
      get copyWith => __$$OrderValidationResultImplCopyWithImpl<
          _$OrderValidationResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderValidationResultImplToJson(
      this,
    );
  }
}

abstract class _OrderValidationResult implements OrderValidationResult {
  const factory _OrderValidationResult(
      {final bool isValid,
      final String? errorCode,
      final String? errorTitle,
      final String? errorMessage,
      final ValidationSeverity severity,
      final String? actionRequired,
      final Map<String, dynamic> metadata}) = _$OrderValidationResultImpl;

  factory _OrderValidationResult.fromJson(Map<String, dynamic> json) =
      _$OrderValidationResultImpl.fromJson;

  @override
  bool get isValid;
  @override
  String? get errorCode;
  @override
  String? get errorTitle;
  @override
  String? get errorMessage;
  @override
  ValidationSeverity get severity;
  @override
  String? get actionRequired;
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of OrderValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderValidationResultImplCopyWith<_$OrderValidationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
