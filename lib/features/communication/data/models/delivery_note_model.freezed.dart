// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryNoteModel _$DeliveryNoteModelFromJson(Map<String, dynamic> json) {
  return _DeliveryNoteModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryNoteModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isPersistent => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this DeliveryNoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryNoteModelCopyWith<DeliveryNoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryNoteModelCopyWith<$Res> {
  factory $DeliveryNoteModelCopyWith(
          DeliveryNoteModel value, $Res Function(DeliveryNoteModel) then) =
      _$DeliveryNoteModelCopyWithImpl<$Res, DeliveryNoteModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      bool isPersistent,
      bool isActive});
}

/// @nodoc
class _$DeliveryNoteModelCopyWithImpl<$Res, $Val extends DeliveryNoteModel>
    implements $DeliveryNoteModelCopyWith<$Res> {
  _$DeliveryNoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isPersistent = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPersistent: null == isPersistent
          ? _value.isPersistent
          : isPersistent // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryNoteModelImplCopyWith<$Res>
    implements $DeliveryNoteModelCopyWith<$Res> {
  factory _$$DeliveryNoteModelImplCopyWith(_$DeliveryNoteModelImpl value,
          $Res Function(_$DeliveryNoteModelImpl) then) =
      __$$DeliveryNoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      bool isPersistent,
      bool isActive});
}

/// @nodoc
class __$$DeliveryNoteModelImplCopyWithImpl<$Res>
    extends _$DeliveryNoteModelCopyWithImpl<$Res, _$DeliveryNoteModelImpl>
    implements _$$DeliveryNoteModelImplCopyWith<$Res> {
  __$$DeliveryNoteModelImplCopyWithImpl(_$DeliveryNoteModelImpl _value,
      $Res Function(_$DeliveryNoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isPersistent = null,
    Object? isActive = null,
  }) {
    return _then(_$DeliveryNoteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPersistent: null == isPersistent
          ? _value.isPersistent
          : isPersistent // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryNoteModelImpl implements _DeliveryNoteModel {
  const _$DeliveryNoteModelImpl(
      {required this.id,
      required this.title,
      required this.content,
      this.isPersistent = false,
      this.isActive = true});

  factory _$DeliveryNoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryNoteModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final bool isPersistent;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'DeliveryNoteModel(id: $id, title: $title, content: $content, isPersistent: $isPersistent, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryNoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPersistent, isPersistent) ||
                other.isPersistent == isPersistent) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, isPersistent, isActive);

  /// Create a copy of DeliveryNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryNoteModelImplCopyWith<_$DeliveryNoteModelImpl> get copyWith =>
      __$$DeliveryNoteModelImplCopyWithImpl<_$DeliveryNoteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryNoteModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryNoteModel implements DeliveryNoteModel {
  const factory _DeliveryNoteModel(
      {required final String id,
      required final String title,
      required final String content,
      final bool isPersistent,
      final bool isActive}) = _$DeliveryNoteModelImpl;

  factory _DeliveryNoteModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryNoteModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get isPersistent;
  @override
  bool get isActive;

  /// Create a copy of DeliveryNoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryNoteModelImplCopyWith<_$DeliveryNoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
