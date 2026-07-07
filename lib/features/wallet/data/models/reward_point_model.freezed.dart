// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RewardPointModel _$RewardPointModelFromJson(Map<String, dynamic> json) {
  return _RewardPointModel.fromJson(json);
}

/// @nodoc
mixin _$RewardPointModel {
  String get id => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  RewardSource get source => throw _privateConstructorUsedError;
  DateTime get earnedAt => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  bool get isExpired => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this RewardPointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardPointModelCopyWith<RewardPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPointModelCopyWith<$Res> {
  factory $RewardPointModelCopyWith(
          RewardPointModel value, $Res Function(RewardPointModel) then) =
      _$RewardPointModelCopyWithImpl<$Res, RewardPointModel>;
  @useResult
  $Res call(
      {String id,
      int points,
      RewardSource source,
      DateTime earnedAt,
      DateTime? expiryDate,
      bool isExpired,
      String? description});
}

/// @nodoc
class _$RewardPointModelCopyWithImpl<$Res, $Val extends RewardPointModel>
    implements $RewardPointModelCopyWith<$Res> {
  _$RewardPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
    Object? source = null,
    Object? earnedAt = null,
    Object? expiryDate = freezed,
    Object? isExpired = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as RewardSource,
      earnedAt: null == earnedAt
          ? _value.earnedAt
          : earnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardPointModelImplCopyWith<$Res>
    implements $RewardPointModelCopyWith<$Res> {
  factory _$$RewardPointModelImplCopyWith(_$RewardPointModelImpl value,
          $Res Function(_$RewardPointModelImpl) then) =
      __$$RewardPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int points,
      RewardSource source,
      DateTime earnedAt,
      DateTime? expiryDate,
      bool isExpired,
      String? description});
}

/// @nodoc
class __$$RewardPointModelImplCopyWithImpl<$Res>
    extends _$RewardPointModelCopyWithImpl<$Res, _$RewardPointModelImpl>
    implements _$$RewardPointModelImplCopyWith<$Res> {
  __$$RewardPointModelImplCopyWithImpl(_$RewardPointModelImpl _value,
      $Res Function(_$RewardPointModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? points = null,
    Object? source = null,
    Object? earnedAt = null,
    Object? expiryDate = freezed,
    Object? isExpired = null,
    Object? description = freezed,
  }) {
    return _then(_$RewardPointModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as RewardSource,
      earnedAt: null == earnedAt
          ? _value.earnedAt
          : earnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isExpired: null == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardPointModelImpl implements _RewardPointModel {
  const _$RewardPointModelImpl(
      {required this.id,
      required this.points,
      required this.source,
      required this.earnedAt,
      this.expiryDate,
      this.isExpired = false,
      this.description});

  factory _$RewardPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardPointModelImplFromJson(json);

  @override
  final String id;
  @override
  final int points;
  @override
  final RewardSource source;
  @override
  final DateTime earnedAt;
  @override
  final DateTime? expiryDate;
  @override
  @JsonKey()
  final bool isExpired;
  @override
  final String? description;

  @override
  String toString() {
    return 'RewardPointModel(id: $id, points: $points, source: $source, earnedAt: $earnedAt, expiryDate: $expiryDate, isExpired: $isExpired, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardPointModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.earnedAt, earnedAt) ||
                other.earnedAt == earnedAt) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, points, source, earnedAt,
      expiryDate, isExpired, description);

  /// Create a copy of RewardPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardPointModelImplCopyWith<_$RewardPointModelImpl> get copyWith =>
      __$$RewardPointModelImplCopyWithImpl<_$RewardPointModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardPointModelImplToJson(
      this,
    );
  }
}

abstract class _RewardPointModel implements RewardPointModel {
  const factory _RewardPointModel(
      {required final String id,
      required final int points,
      required final RewardSource source,
      required final DateTime earnedAt,
      final DateTime? expiryDate,
      final bool isExpired,
      final String? description}) = _$RewardPointModelImpl;

  factory _RewardPointModel.fromJson(Map<String, dynamic> json) =
      _$RewardPointModelImpl.fromJson;

  @override
  String get id;
  @override
  int get points;
  @override
  RewardSource get source;
  @override
  DateTime get earnedAt;
  @override
  DateTime? get expiryDate;
  @override
  bool get isExpired;
  @override
  String? get description;

  /// Create a copy of RewardPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardPointModelImplCopyWith<_$RewardPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
