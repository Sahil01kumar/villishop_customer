// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteShopModel _$FavouriteShopModelFromJson(Map<String, dynamic> json) {
  return _FavouriteShopModel.fromJson(json);
}

/// @nodoc
mixin _$FavouriteShopModel {
  ShopModel get shop => throw _privateConstructorUsedError;
  DateTime get addedAt => throw _privateConstructorUsedError;
  double get aiFavouriteScore => throw _privateConstructorUsedError;
  bool get isRecentlyVisited => throw _privateConstructorUsedError;

  /// Serializes this FavouriteShopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavouriteShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouriteShopModelCopyWith<FavouriteShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteShopModelCopyWith<$Res> {
  factory $FavouriteShopModelCopyWith(
          FavouriteShopModel value, $Res Function(FavouriteShopModel) then) =
      _$FavouriteShopModelCopyWithImpl<$Res, FavouriteShopModel>;
  @useResult
  $Res call(
      {ShopModel shop,
      DateTime addedAt,
      double aiFavouriteScore,
      bool isRecentlyVisited});

  $ShopModelCopyWith<$Res> get shop;
}

/// @nodoc
class _$FavouriteShopModelCopyWithImpl<$Res, $Val extends FavouriteShopModel>
    implements $FavouriteShopModelCopyWith<$Res> {
  _$FavouriteShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouriteShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = null,
    Object? addedAt = null,
    Object? aiFavouriteScore = null,
    Object? isRecentlyVisited = null,
  }) {
    return _then(_value.copyWith(
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiFavouriteScore: null == aiFavouriteScore
          ? _value.aiFavouriteScore
          : aiFavouriteScore // ignore: cast_nullable_to_non_nullable
              as double,
      isRecentlyVisited: null == isRecentlyVisited
          ? _value.isRecentlyVisited
          : isRecentlyVisited // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of FavouriteShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopModelCopyWith<$Res> get shop {
    return $ShopModelCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavouriteShopModelImplCopyWith<$Res>
    implements $FavouriteShopModelCopyWith<$Res> {
  factory _$$FavouriteShopModelImplCopyWith(_$FavouriteShopModelImpl value,
          $Res Function(_$FavouriteShopModelImpl) then) =
      __$$FavouriteShopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShopModel shop,
      DateTime addedAt,
      double aiFavouriteScore,
      bool isRecentlyVisited});

  @override
  $ShopModelCopyWith<$Res> get shop;
}

/// @nodoc
class __$$FavouriteShopModelImplCopyWithImpl<$Res>
    extends _$FavouriteShopModelCopyWithImpl<$Res, _$FavouriteShopModelImpl>
    implements _$$FavouriteShopModelImplCopyWith<$Res> {
  __$$FavouriteShopModelImplCopyWithImpl(_$FavouriteShopModelImpl _value,
      $Res Function(_$FavouriteShopModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shop = null,
    Object? addedAt = null,
    Object? aiFavouriteScore = null,
    Object? isRecentlyVisited = null,
  }) {
    return _then(_$FavouriteShopModelImpl(
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiFavouriteScore: null == aiFavouriteScore
          ? _value.aiFavouriteScore
          : aiFavouriteScore // ignore: cast_nullable_to_non_nullable
              as double,
      isRecentlyVisited: null == isRecentlyVisited
          ? _value.isRecentlyVisited
          : isRecentlyVisited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteShopModelImpl implements _FavouriteShopModel {
  const _$FavouriteShopModelImpl(
      {required this.shop,
      required this.addedAt,
      this.aiFavouriteScore = 0.0,
      this.isRecentlyVisited = false});

  factory _$FavouriteShopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteShopModelImplFromJson(json);

  @override
  final ShopModel shop;
  @override
  final DateTime addedAt;
  @override
  @JsonKey()
  final double aiFavouriteScore;
  @override
  @JsonKey()
  final bool isRecentlyVisited;

  @override
  String toString() {
    return 'FavouriteShopModel(shop: $shop, addedAt: $addedAt, aiFavouriteScore: $aiFavouriteScore, isRecentlyVisited: $isRecentlyVisited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteShopModelImpl &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.aiFavouriteScore, aiFavouriteScore) ||
                other.aiFavouriteScore == aiFavouriteScore) &&
            (identical(other.isRecentlyVisited, isRecentlyVisited) ||
                other.isRecentlyVisited == isRecentlyVisited));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, shop, addedAt, aiFavouriteScore, isRecentlyVisited);

  /// Create a copy of FavouriteShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteShopModelImplCopyWith<_$FavouriteShopModelImpl> get copyWith =>
      __$$FavouriteShopModelImplCopyWithImpl<_$FavouriteShopModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteShopModelImplToJson(
      this,
    );
  }
}

abstract class _FavouriteShopModel implements FavouriteShopModel {
  const factory _FavouriteShopModel(
      {required final ShopModel shop,
      required final DateTime addedAt,
      final double aiFavouriteScore,
      final bool isRecentlyVisited}) = _$FavouriteShopModelImpl;

  factory _FavouriteShopModel.fromJson(Map<String, dynamic> json) =
      _$FavouriteShopModelImpl.fromJson;

  @override
  ShopModel get shop;
  @override
  DateTime get addedAt;
  @override
  double get aiFavouriteScore;
  @override
  bool get isRecentlyVisited;

  /// Create a copy of FavouriteShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouriteShopModelImplCopyWith<_$FavouriteShopModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
