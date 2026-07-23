// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZoneModel _$ZoneModelFromJson(Map<String, dynamic> json) {
  return _ZoneModel.fromJson(json);
}

/// @nodoc
mixin _$ZoneModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ZoneStatus get status => throw _privateConstructorUsedError;
  List<List<double>> get polygon =>
      throw _privateConstructorUsedError; // Latitude, Longitude pairs
  String? get estimatedLaunchDate => throw _privateConstructorUsedError;
  int get interestedUsers => throw _privateConstructorUsedError;
  int get upcomingStores => throw _privateConstructorUsedError;
  int get shopCount => throw _privateConstructorUsedError;
  int get partnerCount => throw _privateConstructorUsedError;

  /// Serializes this ZoneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZoneModelCopyWith<ZoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneModelCopyWith<$Res> {
  factory $ZoneModelCopyWith(ZoneModel value, $Res Function(ZoneModel) then) =
      _$ZoneModelCopyWithImpl<$Res, ZoneModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      ZoneStatus status,
      List<List<double>> polygon,
      String? estimatedLaunchDate,
      int interestedUsers,
      int upcomingStores,
      int shopCount,
      int partnerCount});
}

/// @nodoc
class _$ZoneModelCopyWithImpl<$Res, $Val extends ZoneModel>
    implements $ZoneModelCopyWith<$Res> {
  _$ZoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? polygon = null,
    Object? estimatedLaunchDate = freezed,
    Object? interestedUsers = null,
    Object? upcomingStores = null,
    Object? shopCount = null,
    Object? partnerCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ZoneStatus,
      polygon: null == polygon
          ? _value.polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      estimatedLaunchDate: freezed == estimatedLaunchDate
          ? _value.estimatedLaunchDate
          : estimatedLaunchDate // ignore: cast_nullable_to_non_nullable
              as String?,
      interestedUsers: null == interestedUsers
          ? _value.interestedUsers
          : interestedUsers // ignore: cast_nullable_to_non_nullable
              as int,
      upcomingStores: null == upcomingStores
          ? _value.upcomingStores
          : upcomingStores // ignore: cast_nullable_to_non_nullable
              as int,
      shopCount: null == shopCount
          ? _value.shopCount
          : shopCount // ignore: cast_nullable_to_non_nullable
              as int,
      partnerCount: null == partnerCount
          ? _value.partnerCount
          : partnerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZoneModelImplCopyWith<$Res>
    implements $ZoneModelCopyWith<$Res> {
  factory _$$ZoneModelImplCopyWith(
          _$ZoneModelImpl value, $Res Function(_$ZoneModelImpl) then) =
      __$$ZoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      ZoneStatus status,
      List<List<double>> polygon,
      String? estimatedLaunchDate,
      int interestedUsers,
      int upcomingStores,
      int shopCount,
      int partnerCount});
}

/// @nodoc
class __$$ZoneModelImplCopyWithImpl<$Res>
    extends _$ZoneModelCopyWithImpl<$Res, _$ZoneModelImpl>
    implements _$$ZoneModelImplCopyWith<$Res> {
  __$$ZoneModelImplCopyWithImpl(
      _$ZoneModelImpl _value, $Res Function(_$ZoneModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? polygon = null,
    Object? estimatedLaunchDate = freezed,
    Object? interestedUsers = null,
    Object? upcomingStores = null,
    Object? shopCount = null,
    Object? partnerCount = null,
  }) {
    return _then(_$ZoneModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ZoneStatus,
      polygon: null == polygon
          ? _value._polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      estimatedLaunchDate: freezed == estimatedLaunchDate
          ? _value.estimatedLaunchDate
          : estimatedLaunchDate // ignore: cast_nullable_to_non_nullable
              as String?,
      interestedUsers: null == interestedUsers
          ? _value.interestedUsers
          : interestedUsers // ignore: cast_nullable_to_non_nullable
              as int,
      upcomingStores: null == upcomingStores
          ? _value.upcomingStores
          : upcomingStores // ignore: cast_nullable_to_non_nullable
              as int,
      shopCount: null == shopCount
          ? _value.shopCount
          : shopCount // ignore: cast_nullable_to_non_nullable
              as int,
      partnerCount: null == partnerCount
          ? _value.partnerCount
          : partnerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZoneModelImpl implements _ZoneModel {
  const _$ZoneModelImpl(
      {required this.id,
      required this.name,
      required this.status,
      final List<List<double>> polygon = const [],
      this.estimatedLaunchDate,
      this.interestedUsers = 0,
      this.upcomingStores = 0,
      this.shopCount = 0,
      this.partnerCount = 0})
      : _polygon = polygon;

  factory _$ZoneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoneModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ZoneStatus status;
  final List<List<double>> _polygon;
  @override
  @JsonKey()
  List<List<double>> get polygon {
    if (_polygon is EqualUnmodifiableListView) return _polygon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polygon);
  }

// Latitude, Longitude pairs
  @override
  final String? estimatedLaunchDate;
  @override
  @JsonKey()
  final int interestedUsers;
  @override
  @JsonKey()
  final int upcomingStores;
  @override
  @JsonKey()
  final int shopCount;
  @override
  @JsonKey()
  final int partnerCount;

  @override
  String toString() {
    return 'ZoneModel(id: $id, name: $name, status: $status, polygon: $polygon, estimatedLaunchDate: $estimatedLaunchDate, interestedUsers: $interestedUsers, upcomingStores: $upcomingStores, shopCount: $shopCount, partnerCount: $partnerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._polygon, _polygon) &&
            (identical(other.estimatedLaunchDate, estimatedLaunchDate) ||
                other.estimatedLaunchDate == estimatedLaunchDate) &&
            (identical(other.interestedUsers, interestedUsers) ||
                other.interestedUsers == interestedUsers) &&
            (identical(other.upcomingStores, upcomingStores) ||
                other.upcomingStores == upcomingStores) &&
            (identical(other.shopCount, shopCount) ||
                other.shopCount == shopCount) &&
            (identical(other.partnerCount, partnerCount) ||
                other.partnerCount == partnerCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      const DeepCollectionEquality().hash(_polygon),
      estimatedLaunchDate,
      interestedUsers,
      upcomingStores,
      shopCount,
      partnerCount);

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneModelImplCopyWith<_$ZoneModelImpl> get copyWith =>
      __$$ZoneModelImplCopyWithImpl<_$ZoneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoneModelImplToJson(
      this,
    );
  }
}

abstract class _ZoneModel implements ZoneModel {
  const factory _ZoneModel(
      {required final String id,
      required final String name,
      required final ZoneStatus status,
      final List<List<double>> polygon,
      final String? estimatedLaunchDate,
      final int interestedUsers,
      final int upcomingStores,
      final int shopCount,
      final int partnerCount}) = _$ZoneModelImpl;

  factory _ZoneModel.fromJson(Map<String, dynamic> json) =
      _$ZoneModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ZoneStatus get status;
  @override
  List<List<double>> get polygon; // Latitude, Longitude pairs
  @override
  String? get estimatedLaunchDate;
  @override
  int get interestedUsers;
  @override
  int get upcomingStores;
  @override
  int get shopCount;
  @override
  int get partnerCount;

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZoneModelImplCopyWith<_$ZoneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
