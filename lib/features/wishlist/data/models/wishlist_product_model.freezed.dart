// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistProductModel _$WishlistProductModelFromJson(Map<String, dynamic> json) {
  return _WishlistProductModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistProductModel {
  ProductModel get product => throw _privateConstructorUsedError;
  DateTime get addedAt => throw _privateConstructorUsedError;
  double get aiFavouriteScore => throw _privateConstructorUsedError;
  bool get isSavedForLater => throw _privateConstructorUsedError;

  /// Serializes this WishlistProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistProductModelCopyWith<WishlistProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistProductModelCopyWith<$Res> {
  factory $WishlistProductModelCopyWith(WishlistProductModel value,
          $Res Function(WishlistProductModel) then) =
      _$WishlistProductModelCopyWithImpl<$Res, WishlistProductModel>;
  @useResult
  $Res call(
      {ProductModel product,
      DateTime addedAt,
      double aiFavouriteScore,
      bool isSavedForLater});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$WishlistProductModelCopyWithImpl<$Res,
        $Val extends WishlistProductModel>
    implements $WishlistProductModelCopyWith<$Res> {
  _$WishlistProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? addedAt = null,
    Object? aiFavouriteScore = null,
    Object? isSavedForLater = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiFavouriteScore: null == aiFavouriteScore
          ? _value.aiFavouriteScore
          : aiFavouriteScore // ignore: cast_nullable_to_non_nullable
              as double,
      isSavedForLater: null == isSavedForLater
          ? _value.isSavedForLater
          : isSavedForLater // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of WishlistProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishlistProductModelImplCopyWith<$Res>
    implements $WishlistProductModelCopyWith<$Res> {
  factory _$$WishlistProductModelImplCopyWith(_$WishlistProductModelImpl value,
          $Res Function(_$WishlistProductModelImpl) then) =
      __$$WishlistProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel product,
      DateTime addedAt,
      double aiFavouriteScore,
      bool isSavedForLater});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$WishlistProductModelImplCopyWithImpl<$Res>
    extends _$WishlistProductModelCopyWithImpl<$Res, _$WishlistProductModelImpl>
    implements _$$WishlistProductModelImplCopyWith<$Res> {
  __$$WishlistProductModelImplCopyWithImpl(_$WishlistProductModelImpl _value,
      $Res Function(_$WishlistProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? addedAt = null,
    Object? aiFavouriteScore = null,
    Object? isSavedForLater = null,
  }) {
    return _then(_$WishlistProductModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiFavouriteScore: null == aiFavouriteScore
          ? _value.aiFavouriteScore
          : aiFavouriteScore // ignore: cast_nullable_to_non_nullable
              as double,
      isSavedForLater: null == isSavedForLater
          ? _value.isSavedForLater
          : isSavedForLater // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistProductModelImpl implements _WishlistProductModel {
  const _$WishlistProductModelImpl(
      {required this.product,
      required this.addedAt,
      this.aiFavouriteScore = 0.0,
      this.isSavedForLater = false});

  factory _$WishlistProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistProductModelImplFromJson(json);

  @override
  final ProductModel product;
  @override
  final DateTime addedAt;
  @override
  @JsonKey()
  final double aiFavouriteScore;
  @override
  @JsonKey()
  final bool isSavedForLater;

  @override
  String toString() {
    return 'WishlistProductModel(product: $product, addedAt: $addedAt, aiFavouriteScore: $aiFavouriteScore, isSavedForLater: $isSavedForLater)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistProductModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.aiFavouriteScore, aiFavouriteScore) ||
                other.aiFavouriteScore == aiFavouriteScore) &&
            (identical(other.isSavedForLater, isSavedForLater) ||
                other.isSavedForLater == isSavedForLater));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, product, addedAt, aiFavouriteScore, isSavedForLater);

  /// Create a copy of WishlistProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistProductModelImplCopyWith<_$WishlistProductModelImpl>
      get copyWith =>
          __$$WishlistProductModelImplCopyWithImpl<_$WishlistProductModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistProductModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistProductModel implements WishlistProductModel {
  const factory _WishlistProductModel(
      {required final ProductModel product,
      required final DateTime addedAt,
      final double aiFavouriteScore,
      final bool isSavedForLater}) = _$WishlistProductModelImpl;

  factory _WishlistProductModel.fromJson(Map<String, dynamic> json) =
      _$WishlistProductModelImpl.fromJson;

  @override
  ProductModel get product;
  @override
  DateTime get addedAt;
  @override
  double get aiFavouriteScore;
  @override
  bool get isSavedForLater;

  /// Create a copy of WishlistProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistProductModelImplCopyWith<_$WishlistProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
