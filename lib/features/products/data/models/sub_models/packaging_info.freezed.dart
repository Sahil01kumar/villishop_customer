// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packaging_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackagingInfo _$PackagingInfoFromJson(Map<String, dynamic> json) {
  return _PackagingInfo.fromJson(json);
}

/// @nodoc
mixin _$PackagingInfo {
  double get weight => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String? get packSize => throw _privateConstructorUsedError;
  String? get variant => throw _privateConstructorUsedError;
  int get piecesPerPack => throw _privateConstructorUsedError;
  String? get cartonSize => throw _privateConstructorUsedError;

  /// Serializes this PackagingInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagingInfoCopyWith<PackagingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagingInfoCopyWith<$Res> {
  factory $PackagingInfoCopyWith(
          PackagingInfo value, $Res Function(PackagingInfo) then) =
      _$PackagingInfoCopyWithImpl<$Res, PackagingInfo>;
  @useResult
  $Res call(
      {double weight,
      String unit,
      String? packSize,
      String? variant,
      int piecesPerPack,
      String? cartonSize});
}

/// @nodoc
class _$PackagingInfoCopyWithImpl<$Res, $Val extends PackagingInfo>
    implements $PackagingInfoCopyWith<$Res> {
  _$PackagingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? unit = null,
    Object? packSize = freezed,
    Object? variant = freezed,
    Object? piecesPerPack = null,
    Object? cartonSize = freezed,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      packSize: freezed == packSize
          ? _value.packSize
          : packSize // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String?,
      piecesPerPack: null == piecesPerPack
          ? _value.piecesPerPack
          : piecesPerPack // ignore: cast_nullable_to_non_nullable
              as int,
      cartonSize: freezed == cartonSize
          ? _value.cartonSize
          : cartonSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackagingInfoImplCopyWith<$Res>
    implements $PackagingInfoCopyWith<$Res> {
  factory _$$PackagingInfoImplCopyWith(
          _$PackagingInfoImpl value, $Res Function(_$PackagingInfoImpl) then) =
      __$$PackagingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double weight,
      String unit,
      String? packSize,
      String? variant,
      int piecesPerPack,
      String? cartonSize});
}

/// @nodoc
class __$$PackagingInfoImplCopyWithImpl<$Res>
    extends _$PackagingInfoCopyWithImpl<$Res, _$PackagingInfoImpl>
    implements _$$PackagingInfoImplCopyWith<$Res> {
  __$$PackagingInfoImplCopyWithImpl(
      _$PackagingInfoImpl _value, $Res Function(_$PackagingInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagingInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? unit = null,
    Object? packSize = freezed,
    Object? variant = freezed,
    Object? piecesPerPack = null,
    Object? cartonSize = freezed,
  }) {
    return _then(_$PackagingInfoImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      packSize: freezed == packSize
          ? _value.packSize
          : packSize // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String?,
      piecesPerPack: null == piecesPerPack
          ? _value.piecesPerPack
          : piecesPerPack // ignore: cast_nullable_to_non_nullable
              as int,
      cartonSize: freezed == cartonSize
          ? _value.cartonSize
          : cartonSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagingInfoImpl implements _PackagingInfo {
  const _$PackagingInfoImpl(
      {required this.weight,
      required this.unit,
      this.packSize,
      this.variant,
      this.piecesPerPack = 1,
      this.cartonSize});

  factory _$PackagingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackagingInfoImplFromJson(json);

  @override
  final double weight;
  @override
  final String unit;
  @override
  final String? packSize;
  @override
  final String? variant;
  @override
  @JsonKey()
  final int piecesPerPack;
  @override
  final String? cartonSize;

  @override
  String toString() {
    return 'PackagingInfo(weight: $weight, unit: $unit, packSize: $packSize, variant: $variant, piecesPerPack: $piecesPerPack, cartonSize: $cartonSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagingInfoImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.packSize, packSize) ||
                other.packSize == packSize) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.piecesPerPack, piecesPerPack) ||
                other.piecesPerPack == piecesPerPack) &&
            (identical(other.cartonSize, cartonSize) ||
                other.cartonSize == cartonSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, weight, unit, packSize, variant, piecesPerPack, cartonSize);

  /// Create a copy of PackagingInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagingInfoImplCopyWith<_$PackagingInfoImpl> get copyWith =>
      __$$PackagingInfoImplCopyWithImpl<_$PackagingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagingInfoImplToJson(
      this,
    );
  }
}

abstract class _PackagingInfo implements PackagingInfo {
  const factory _PackagingInfo(
      {required final double weight,
      required final String unit,
      final String? packSize,
      final String? variant,
      final int piecesPerPack,
      final String? cartonSize}) = _$PackagingInfoImpl;

  factory _PackagingInfo.fromJson(Map<String, dynamic> json) =
      _$PackagingInfoImpl.fromJson;

  @override
  double get weight;
  @override
  String get unit;
  @override
  String? get packSize;
  @override
  String? get variant;
  @override
  int get piecesPerPack;
  @override
  String? get cartonSize;

  /// Create a copy of PackagingInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagingInfoImplCopyWith<_$PackagingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
