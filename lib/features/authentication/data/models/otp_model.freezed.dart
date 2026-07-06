// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OTPModel _$OTPModelFromJson(Map<String, dynamic> json) {
  return _OTPModel.fromJson(json);
}

/// @nodoc
mixin _$OTPModel {
  String get verificationId => throw _privateConstructorUsedError;
  String get otpCode => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this OTPModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OTPModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OTPModelCopyWith<OTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPModelCopyWith<$Res> {
  factory $OTPModelCopyWith(OTPModel value, $Res Function(OTPModel) then) =
      _$OTPModelCopyWithImpl<$Res, OTPModel>;
  @useResult
  $Res call({String verificationId, String otpCode, String phoneNumber});
}

/// @nodoc
class _$OTPModelCopyWithImpl<$Res, $Val extends OTPModel>
    implements $OTPModelCopyWith<$Res> {
  _$OTPModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OTPModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? otpCode = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPModelImplCopyWith<$Res>
    implements $OTPModelCopyWith<$Res> {
  factory _$$OTPModelImplCopyWith(
          _$OTPModelImpl value, $Res Function(_$OTPModelImpl) then) =
      __$$OTPModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String verificationId, String otpCode, String phoneNumber});
}

/// @nodoc
class __$$OTPModelImplCopyWithImpl<$Res>
    extends _$OTPModelCopyWithImpl<$Res, _$OTPModelImpl>
    implements _$$OTPModelImplCopyWith<$Res> {
  __$$OTPModelImplCopyWithImpl(
      _$OTPModelImpl _value, $Res Function(_$OTPModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OTPModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? otpCode = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$OTPModelImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPModelImpl implements _OTPModel {
  const _$OTPModelImpl(
      {required this.verificationId,
      required this.otpCode,
      required this.phoneNumber});

  factory _$OTPModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPModelImplFromJson(json);

  @override
  final String verificationId;
  @override
  final String otpCode;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OTPModel(verificationId: $verificationId, otpCode: $otpCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPModelImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, verificationId, otpCode, phoneNumber);

  /// Create a copy of OTPModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPModelImplCopyWith<_$OTPModelImpl> get copyWith =>
      __$$OTPModelImplCopyWithImpl<_$OTPModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPModelImplToJson(
      this,
    );
  }
}

abstract class _OTPModel implements OTPModel {
  const factory _OTPModel(
      {required final String verificationId,
      required final String otpCode,
      required final String phoneNumber}) = _$OTPModelImpl;

  factory _OTPModel.fromJson(Map<String, dynamic> json) =
      _$OTPModelImpl.fromJson;

  @override
  String get verificationId;
  @override
  String get otpCode;
  @override
  String get phoneNumber;

  /// Create a copy of OTPModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPModelImplCopyWith<_$OTPModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
