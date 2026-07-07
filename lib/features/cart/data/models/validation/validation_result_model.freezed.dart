// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidationResultModel _$ValidationResultModelFromJson(
    Map<String, dynamic> json) {
  return _ValidationResultModel.fromJson(json);
}

/// @nodoc
mixin _$ValidationResultModel {
  String get ruleId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ValidationSeverity get severity => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ValidationResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationResultModelCopyWith<ValidationResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationResultModelCopyWith<$Res> {
  factory $ValidationResultModelCopyWith(ValidationResultModel value,
          $Res Function(ValidationResultModel) then) =
      _$ValidationResultModelCopyWithImpl<$Res, ValidationResultModel>;
  @useResult
  $Res call(
      {String ruleId,
      String message,
      ValidationSeverity severity,
      bool isValid,
      String? errorCode,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ValidationResultModelCopyWithImpl<$Res,
        $Val extends ValidationResultModel>
    implements $ValidationResultModelCopyWith<$Res> {
  _$ValidationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleId = null,
    Object? message = null,
    Object? severity = null,
    Object? isValid = null,
    Object? errorCode = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      ruleId: null == ruleId
          ? _value.ruleId
          : ruleId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationResultModelImplCopyWith<$Res>
    implements $ValidationResultModelCopyWith<$Res> {
  factory _$$ValidationResultModelImplCopyWith(
          _$ValidationResultModelImpl value,
          $Res Function(_$ValidationResultModelImpl) then) =
      __$$ValidationResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ruleId,
      String message,
      ValidationSeverity severity,
      bool isValid,
      String? errorCode,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ValidationResultModelImplCopyWithImpl<$Res>
    extends _$ValidationResultModelCopyWithImpl<$Res,
        _$ValidationResultModelImpl>
    implements _$$ValidationResultModelImplCopyWith<$Res> {
  __$$ValidationResultModelImplCopyWithImpl(_$ValidationResultModelImpl _value,
      $Res Function(_$ValidationResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleId = null,
    Object? message = null,
    Object? severity = null,
    Object? isValid = null,
    Object? errorCode = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ValidationResultModelImpl(
      ruleId: null == ruleId
          ? _value.ruleId
          : ruleId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationResultModelImpl implements _ValidationResultModel {
  const _$ValidationResultModelImpl(
      {required this.ruleId,
      required this.message,
      required this.severity,
      this.isValid = true,
      this.errorCode,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ValidationResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationResultModelImplFromJson(json);

  @override
  final String ruleId;
  @override
  final String message;
  @override
  final ValidationSeverity severity;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorCode;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ValidationResultModel(ruleId: $ruleId, message: $message, severity: $severity, isValid: $isValid, errorCode: $errorCode, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationResultModelImpl &&
            (identical(other.ruleId, ruleId) || other.ruleId == ruleId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ruleId, message, severity,
      isValid, errorCode, const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of ValidationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationResultModelImplCopyWith<_$ValidationResultModelImpl>
      get copyWith => __$$ValidationResultModelImplCopyWithImpl<
          _$ValidationResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationResultModelImplToJson(
      this,
    );
  }
}

abstract class _ValidationResultModel implements ValidationResultModel {
  const factory _ValidationResultModel(
      {required final String ruleId,
      required final String message,
      required final ValidationSeverity severity,
      final bool isValid,
      final String? errorCode,
      final Map<String, dynamic>? metadata}) = _$ValidationResultModelImpl;

  factory _ValidationResultModel.fromJson(Map<String, dynamic> json) =
      _$ValidationResultModelImpl.fromJson;

  @override
  String get ruleId;
  @override
  String get message;
  @override
  ValidationSeverity get severity;
  @override
  bool get isValid;
  @override
  String? get errorCode;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of ValidationResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationResultModelImplCopyWith<_$ValidationResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
