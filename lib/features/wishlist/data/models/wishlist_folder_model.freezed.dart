// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_folder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistFolderModel _$WishlistFolderModelFromJson(Map<String, dynamic> json) {
  return _WishlistFolderModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistFolderModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError; // Emoji or URL
  List<WishlistProductModel> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isSystemFolder => throw _privateConstructorUsedError;

  /// Serializes this WishlistFolderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistFolderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistFolderModelCopyWith<WishlistFolderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistFolderModelCopyWith<$Res> {
  factory $WishlistFolderModelCopyWith(
          WishlistFolderModel value, $Res Function(WishlistFolderModel) then) =
      _$WishlistFolderModelCopyWithImpl<$Res, WishlistFolderModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String icon,
      List<WishlistProductModel> items,
      DateTime createdAt,
      String? description,
      bool isSystemFolder});
}

/// @nodoc
class _$WishlistFolderModelCopyWithImpl<$Res, $Val extends WishlistFolderModel>
    implements $WishlistFolderModelCopyWith<$Res> {
  _$WishlistFolderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistFolderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? items = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? isSystemFolder = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
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
      isSystemFolder: null == isSystemFolder
          ? _value.isSystemFolder
          : isSystemFolder // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistFolderModelImplCopyWith<$Res>
    implements $WishlistFolderModelCopyWith<$Res> {
  factory _$$WishlistFolderModelImplCopyWith(_$WishlistFolderModelImpl value,
          $Res Function(_$WishlistFolderModelImpl) then) =
      __$$WishlistFolderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String icon,
      List<WishlistProductModel> items,
      DateTime createdAt,
      String? description,
      bool isSystemFolder});
}

/// @nodoc
class __$$WishlistFolderModelImplCopyWithImpl<$Res>
    extends _$WishlistFolderModelCopyWithImpl<$Res, _$WishlistFolderModelImpl>
    implements _$$WishlistFolderModelImplCopyWith<$Res> {
  __$$WishlistFolderModelImplCopyWithImpl(_$WishlistFolderModelImpl _value,
      $Res Function(_$WishlistFolderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistFolderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? items = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? isSystemFolder = null,
  }) {
    return _then(_$WishlistFolderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
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
      isSystemFolder: null == isSystemFolder
          ? _value.isSystemFolder
          : isSystemFolder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistFolderModelImpl implements _WishlistFolderModel {
  const _$WishlistFolderModelImpl(
      {required this.id,
      required this.name,
      required this.icon,
      final List<WishlistProductModel> items = const [],
      required this.createdAt,
      this.description,
      this.isSystemFolder = false})
      : _items = items;

  factory _$WishlistFolderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistFolderModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
// Emoji or URL
  final List<WishlistProductModel> _items;
// Emoji or URL
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
  @JsonKey()
  final bool isSystemFolder;

  @override
  String toString() {
    return 'WishlistFolderModel(id: $id, name: $name, icon: $icon, items: $items, createdAt: $createdAt, description: $description, isSystemFolder: $isSystemFolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistFolderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSystemFolder, isSystemFolder) ||
                other.isSystemFolder == isSystemFolder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      icon,
      const DeepCollectionEquality().hash(_items),
      createdAt,
      description,
      isSystemFolder);

  /// Create a copy of WishlistFolderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistFolderModelImplCopyWith<_$WishlistFolderModelImpl> get copyWith =>
      __$$WishlistFolderModelImplCopyWithImpl<_$WishlistFolderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistFolderModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistFolderModel implements WishlistFolderModel {
  const factory _WishlistFolderModel(
      {required final String id,
      required final String name,
      required final String icon,
      final List<WishlistProductModel> items,
      required final DateTime createdAt,
      final String? description,
      final bool isSystemFolder}) = _$WishlistFolderModelImpl;

  factory _WishlistFolderModel.fromJson(Map<String, dynamic> json) =
      _$WishlistFolderModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get icon; // Emoji or URL
  @override
  List<WishlistProductModel> get items;
  @override
  DateTime get createdAt;
  @override
  String? get description;
  @override
  bool get isSystemFolder;

  /// Create a copy of WishlistFolderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistFolderModelImplCopyWith<_$WishlistFolderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
