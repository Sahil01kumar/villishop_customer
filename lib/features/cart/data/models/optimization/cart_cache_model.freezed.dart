// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cache_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartCacheModel _$CartCacheModelFromJson(Map<String, dynamic> json) {
  return _CartCacheModel.fromJson(json);
}

/// @nodoc
mixin _$CartCacheModel {
  String get sessionId => throw _privateConstructorUsedError;
  DateTime get cachedAt => throw _privateConstructorUsedError;
  String get cartJson =>
      throw _privateConstructorUsedError; // Serialized MultiShopCartModel
  bool get isAutoRestoreEnabled => throw _privateConstructorUsedError;

  /// Serializes this CartCacheModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartCacheModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCacheModelCopyWith<CartCacheModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCacheModelCopyWith<$Res> {
  factory $CartCacheModelCopyWith(
          CartCacheModel value, $Res Function(CartCacheModel) then) =
      _$CartCacheModelCopyWithImpl<$Res, CartCacheModel>;
  @useResult
  $Res call(
      {String sessionId,
      DateTime cachedAt,
      String cartJson,
      bool isAutoRestoreEnabled});
}

/// @nodoc
class _$CartCacheModelCopyWithImpl<$Res, $Val extends CartCacheModel>
    implements $CartCacheModelCopyWith<$Res> {
  _$CartCacheModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartCacheModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? cachedAt = null,
    Object? cartJson = null,
    Object? isAutoRestoreEnabled = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      cachedAt: null == cachedAt
          ? _value.cachedAt
          : cachedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cartJson: null == cartJson
          ? _value.cartJson
          : cartJson // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoRestoreEnabled: null == isAutoRestoreEnabled
          ? _value.isAutoRestoreEnabled
          : isAutoRestoreEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartCacheModelImplCopyWith<$Res>
    implements $CartCacheModelCopyWith<$Res> {
  factory _$$CartCacheModelImplCopyWith(_$CartCacheModelImpl value,
          $Res Function(_$CartCacheModelImpl) then) =
      __$$CartCacheModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sessionId,
      DateTime cachedAt,
      String cartJson,
      bool isAutoRestoreEnabled});
}

/// @nodoc
class __$$CartCacheModelImplCopyWithImpl<$Res>
    extends _$CartCacheModelCopyWithImpl<$Res, _$CartCacheModelImpl>
    implements _$$CartCacheModelImplCopyWith<$Res> {
  __$$CartCacheModelImplCopyWithImpl(
      _$CartCacheModelImpl _value, $Res Function(_$CartCacheModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartCacheModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? cachedAt = null,
    Object? cartJson = null,
    Object? isAutoRestoreEnabled = null,
  }) {
    return _then(_$CartCacheModelImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      cachedAt: null == cachedAt
          ? _value.cachedAt
          : cachedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cartJson: null == cartJson
          ? _value.cartJson
          : cartJson // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoRestoreEnabled: null == isAutoRestoreEnabled
          ? _value.isAutoRestoreEnabled
          : isAutoRestoreEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartCacheModelImpl implements _CartCacheModel {
  const _$CartCacheModelImpl(
      {required this.sessionId,
      required this.cachedAt,
      required this.cartJson,
      this.isAutoRestoreEnabled = true});

  factory _$CartCacheModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartCacheModelImplFromJson(json);

  @override
  final String sessionId;
  @override
  final DateTime cachedAt;
  @override
  final String cartJson;
// Serialized MultiShopCartModel
  @override
  @JsonKey()
  final bool isAutoRestoreEnabled;

  @override
  String toString() {
    return 'CartCacheModel(sessionId: $sessionId, cachedAt: $cachedAt, cartJson: $cartJson, isAutoRestoreEnabled: $isAutoRestoreEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartCacheModelImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.cachedAt, cachedAt) ||
                other.cachedAt == cachedAt) &&
            (identical(other.cartJson, cartJson) ||
                other.cartJson == cartJson) &&
            (identical(other.isAutoRestoreEnabled, isAutoRestoreEnabled) ||
                other.isAutoRestoreEnabled == isAutoRestoreEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, sessionId, cachedAt, cartJson, isAutoRestoreEnabled);

  /// Create a copy of CartCacheModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartCacheModelImplCopyWith<_$CartCacheModelImpl> get copyWith =>
      __$$CartCacheModelImplCopyWithImpl<_$CartCacheModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartCacheModelImplToJson(
      this,
    );
  }
}

abstract class _CartCacheModel implements CartCacheModel {
  const factory _CartCacheModel(
      {required final String sessionId,
      required final DateTime cachedAt,
      required final String cartJson,
      final bool isAutoRestoreEnabled}) = _$CartCacheModelImpl;

  factory _CartCacheModel.fromJson(Map<String, dynamic> json) =
      _$CartCacheModelImpl.fromJson;

  @override
  String get sessionId;
  @override
  DateTime get cachedAt;
  @override
  String get cartJson; // Serialized MultiShopCartModel
  @override
  bool get isAutoRestoreEnabled;

  /// Create a copy of CartCacheModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartCacheModelImplCopyWith<_$CartCacheModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
