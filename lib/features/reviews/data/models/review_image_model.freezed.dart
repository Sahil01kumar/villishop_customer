// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewImageModel _$ReviewImageModelFromJson(Map<String, dynamic> json) {
  return _ReviewImageModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewImageModel {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this ReviewImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewImageModelCopyWith<ReviewImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewImageModelCopyWith<$Res> {
  factory $ReviewImageModelCopyWith(
          ReviewImageModel value, $Res Function(ReviewImageModel) then) =
      _$ReviewImageModelCopyWithImpl<$Res, ReviewImageModel>;
  @useResult
  $Res call({String id, String url, String? thumbnailUrl});
}

/// @nodoc
class _$ReviewImageModelCopyWithImpl<$Res, $Val extends ReviewImageModel>
    implements $ReviewImageModelCopyWith<$Res> {
  _$ReviewImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImageModelImplCopyWith<$Res>
    implements $ReviewImageModelCopyWith<$Res> {
  factory _$$ReviewImageModelImplCopyWith(_$ReviewImageModelImpl value,
          $Res Function(_$ReviewImageModelImpl) then) =
      __$$ReviewImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url, String? thumbnailUrl});
}

/// @nodoc
class __$$ReviewImageModelImplCopyWithImpl<$Res>
    extends _$ReviewImageModelCopyWithImpl<$Res, _$ReviewImageModelImpl>
    implements _$$ReviewImageModelImplCopyWith<$Res> {
  __$$ReviewImageModelImplCopyWithImpl(_$ReviewImageModelImpl _value,
      $Res Function(_$ReviewImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$ReviewImageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImageModelImpl implements _ReviewImageModel {
  const _$ReviewImageModelImpl(
      {required this.id, required this.url, this.thumbnailUrl});

  factory _$ReviewImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImageModelImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'ReviewImageModel(id: $id, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, thumbnailUrl);

  /// Create a copy of ReviewImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImageModelImplCopyWith<_$ReviewImageModelImpl> get copyWith =>
      __$$ReviewImageModelImplCopyWithImpl<_$ReviewImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImageModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewImageModel implements ReviewImageModel {
  const factory _ReviewImageModel(
      {required final String id,
      required final String url,
      final String? thumbnailUrl}) = _$ReviewImageModelImpl;

  factory _ReviewImageModel.fromJson(Map<String, dynamic> json) =
      _$ReviewImageModelImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  String? get thumbnailUrl;

  /// Create a copy of ReviewImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImageModelImplCopyWith<_$ReviewImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
