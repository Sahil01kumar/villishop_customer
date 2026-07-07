// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistCollectionModel _$WishlistCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _WishlistCollectionModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistCollectionModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<WishlistProductModel> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this WishlistCollectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistCollectionModelCopyWith<WishlistCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistCollectionModelCopyWith<$Res> {
  factory $WishlistCollectionModelCopyWith(WishlistCollectionModel value,
          $Res Function(WishlistCollectionModel) then) =
      _$WishlistCollectionModelCopyWithImpl<$Res, WishlistCollectionModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<WishlistProductModel> items,
      DateTime createdAt,
      String? description});
}

/// @nodoc
class _$WishlistCollectionModelCopyWithImpl<$Res,
        $Val extends WishlistCollectionModel>
    implements $WishlistCollectionModelCopyWith<$Res> {
  _$WishlistCollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? items = null,
    Object? createdAt = null,
    Object? description = freezed,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistProductModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistCollectionModelImplCopyWith<$Res>
    implements $WishlistCollectionModelCopyWith<$Res> {
  factory _$$WishlistCollectionModelImplCopyWith(
          _$WishlistCollectionModelImpl value,
          $Res Function(_$WishlistCollectionModelImpl) then) =
      __$$WishlistCollectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<WishlistProductModel> items,
      DateTime createdAt,
      String? description});
}

/// @nodoc
class __$$WishlistCollectionModelImplCopyWithImpl<$Res>
    extends _$WishlistCollectionModelCopyWithImpl<$Res,
        _$WishlistCollectionModelImpl>
    implements _$$WishlistCollectionModelImplCopyWith<$Res> {
  __$$WishlistCollectionModelImplCopyWithImpl(
      _$WishlistCollectionModelImpl _value,
      $Res Function(_$WishlistCollectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? items = null,
    Object? createdAt = null,
    Object? description = freezed,
  }) {
    return _then(_$WishlistCollectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistProductModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistCollectionModelImpl implements _WishlistCollectionModel {
  const _$WishlistCollectionModelImpl(
      {required this.id,
      required this.name,
      final List<WishlistProductModel> items = const [],
      required this.createdAt,
      this.description})
      : _items = items;

  factory _$WishlistCollectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistCollectionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<WishlistProductModel> _items;
  @override
  @JsonKey()
  List<WishlistProductModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime createdAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'WishlistCollectionModel(id: $id, name: $name, items: $items, createdAt: $createdAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistCollectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_items), createdAt, description);

  /// Create a copy of WishlistCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistCollectionModelImplCopyWith<_$WishlistCollectionModelImpl>
      get copyWith => __$$WishlistCollectionModelImplCopyWithImpl<
          _$WishlistCollectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistCollectionModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistCollectionModel implements WishlistCollectionModel {
  const factory _WishlistCollectionModel(
      {required final String id,
      required final String name,
      final List<WishlistProductModel> items,
      required final DateTime createdAt,
      final String? description}) = _$WishlistCollectionModelImpl;

  factory _WishlistCollectionModel.fromJson(Map<String, dynamic> json) =
      _$WishlistCollectionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<WishlistProductModel> get items;
  @override
  DateTime get createdAt;
  @override
  String? get description;

  /// Create a copy of WishlistCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistCollectionModelImplCopyWith<_$WishlistCollectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
