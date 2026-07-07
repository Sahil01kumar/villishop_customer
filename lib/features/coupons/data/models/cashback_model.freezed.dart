// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CashbackModel _$CashbackModelFromJson(Map<String, dynamic> json) {
  return _CashbackModel.fromJson(json);
}

/// @nodoc
mixin _$CashbackModel {
  CashbackType get type => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  bool get isPercentage => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;

  /// Serializes this CashbackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CashbackModelCopyWith<CashbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashbackModelCopyWith<$Res> {
  factory $CashbackModelCopyWith(
          CashbackModel value, $Res Function(CashbackModel) then) =
      _$CashbackModelCopyWithImpl<$Res, CashbackModel>;
  @useResult
  $Res call(
      {CashbackType type,
      double value,
      bool isPercentage,
      DateTime? expiryDate});
}

/// @nodoc
class _$CashbackModelCopyWithImpl<$Res, $Val extends CashbackModel>
    implements $CashbackModelCopyWith<$Res> {
  _$CashbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? isPercentage = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CashbackType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isPercentage: null == isPercentage
          ? _value.isPercentage
          : isPercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashbackModelImplCopyWith<$Res>
    implements $CashbackModelCopyWith<$Res> {
  factory _$$CashbackModelImplCopyWith(
          _$CashbackModelImpl value, $Res Function(_$CashbackModelImpl) then) =
      __$$CashbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CashbackType type,
      double value,
      bool isPercentage,
      DateTime? expiryDate});
}

/// @nodoc
class __$$CashbackModelImplCopyWithImpl<$Res>
    extends _$CashbackModelCopyWithImpl<$Res, _$CashbackModelImpl>
    implements _$$CashbackModelImplCopyWith<$Res> {
  __$$CashbackModelImplCopyWithImpl(
      _$CashbackModelImpl _value, $Res Function(_$CashbackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? isPercentage = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_$CashbackModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CashbackType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      isPercentage: null == isPercentage
          ? _value.isPercentage
          : isPercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashbackModelImpl implements _CashbackModel {
  const _$CashbackModelImpl(
      {required this.type,
      required this.value,
      this.isPercentage = false,
      this.expiryDate});

  factory _$CashbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashbackModelImplFromJson(json);

  @override
  final CashbackType type;
  @override
  final double value;
  @override
  @JsonKey()
  final bool isPercentage;
  @override
  final DateTime? expiryDate;

  @override
  String toString() {
    return 'CashbackModel(type: $type, value: $value, isPercentage: $isPercentage, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashbackModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isPercentage, isPercentage) ||
                other.isPercentage == isPercentage) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, value, isPercentage, expiryDate);

  /// Create a copy of CashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CashbackModelImplCopyWith<_$CashbackModelImpl> get copyWith =>
      __$$CashbackModelImplCopyWithImpl<_$CashbackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashbackModelImplToJson(
      this,
    );
  }
}

abstract class _CashbackModel implements CashbackModel {
  const factory _CashbackModel(
      {required final CashbackType type,
      required final double value,
      final bool isPercentage,
      final DateTime? expiryDate}) = _$CashbackModelImpl;

  factory _CashbackModel.fromJson(Map<String, dynamic> json) =
      _$CashbackModelImpl.fromJson;

  @override
  CashbackType get type;
  @override
  double get value;
  @override
  bool get isPercentage;
  @override
  DateTime? get expiryDate;

  /// Create a copy of CashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CashbackModelImplCopyWith<_$CashbackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
