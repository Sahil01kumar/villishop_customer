// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get originalPrice => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get discountPercentage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get unit =>
      throw _privateConstructorUsedError; // e.g. kg, ltr, gm, packet
  StockStatus get stockStatus => throw _privateConstructorUsedError;
  bool get isVeg => throw _privateConstructorUsedError;
  bool get isBestseller => throw _privateConstructorUsedError;
  bool get isNewArrival => throw _privateConstructorUsedError;
  bool get isLimitedOffer => throw _privateConstructorUsedError;
  String? get expiryDate => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  int get quantityInCart => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      double originalPrice,
      String weight,
      String imageUrl,
      int discountPercentage,
      double rating,
      String? brand,
      String? description,
      String? unit,
      StockStatus stockStatus,
      bool isVeg,
      bool isBestseller,
      bool isNewArrival,
      bool isLimitedOffer,
      String? expiryDate,
      List<String> categories,
      int quantityInCart});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? originalPrice = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? brand = freezed,
    Object? description = freezed,
    Object? unit = freezed,
    Object? stockStatus = null,
    Object? isVeg = null,
    Object? isBestseller = null,
    Object? isNewArrival = null,
    Object? isLimitedOffer = null,
    Object? expiryDate = freezed,
    Object? categories = null,
    Object? quantityInCart = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as StockStatus,
      isVeg: null == isVeg
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestseller: null == isBestseller
          ? _value.isBestseller
          : isBestseller // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewArrival: null == isNewArrival
          ? _value.isNewArrival
          : isNewArrival // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedOffer: null == isLimitedOffer
          ? _value.isLimitedOffer
          : isLimitedOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quantityInCart: null == quantityInCart
          ? _value.quantityInCart
          : quantityInCart // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double price,
      double originalPrice,
      String weight,
      String imageUrl,
      int discountPercentage,
      double rating,
      String? brand,
      String? description,
      String? unit,
      StockStatus stockStatus,
      bool isVeg,
      bool isBestseller,
      bool isNewArrival,
      bool isLimitedOffer,
      String? expiryDate,
      List<String> categories,
      int quantityInCart});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? originalPrice = null,
    Object? weight = null,
    Object? imageUrl = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? brand = freezed,
    Object? description = freezed,
    Object? unit = freezed,
    Object? stockStatus = null,
    Object? isVeg = null,
    Object? isBestseller = null,
    Object? isNewArrival = null,
    Object? isLimitedOffer = null,
    Object? expiryDate = freezed,
    Object? categories = null,
    Object? quantityInCart = null,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      stockStatus: null == stockStatus
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as StockStatus,
      isVeg: null == isVeg
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool,
      isBestseller: null == isBestseller
          ? _value.isBestseller
          : isBestseller // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewArrival: null == isNewArrival
          ? _value.isNewArrival
          : isNewArrival // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedOffer: null == isLimitedOffer
          ? _value.isLimitedOffer
          : isLimitedOffer // ignore: cast_nullable_to_non_nullable
              as bool,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quantityInCart: null == quantityInCart
          ? _value.quantityInCart
          : quantityInCart // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      required this.originalPrice,
      required this.weight,
      required this.imageUrl,
      this.discountPercentage = 0,
      this.rating = 0.0,
      this.brand,
      this.description,
      this.unit,
      this.stockStatus = StockStatus.inStock,
      this.isVeg = false,
      this.isBestseller = false,
      this.isNewArrival = false,
      this.isLimitedOffer = false,
      this.expiryDate,
      final List<String> categories = const [],
      this.quantityInCart = 0})
      : _categories = categories;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final double originalPrice;
  @override
  final String weight;
  @override
  final String imageUrl;
  @override
  @JsonKey()
  final int discountPercentage;
  @override
  @JsonKey()
  final double rating;
  @override
  final String? brand;
  @override
  final String? description;
  @override
  final String? unit;
// e.g. kg, ltr, gm, packet
  @override
  @JsonKey()
  final StockStatus stockStatus;
  @override
  @JsonKey()
  final bool isVeg;
  @override
  @JsonKey()
  final bool isBestseller;
  @override
  @JsonKey()
  final bool isNewArrival;
  @override
  @JsonKey()
  final bool isLimitedOffer;
  @override
  final String? expiryDate;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int quantityInCart;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, originalPrice: $originalPrice, weight: $weight, imageUrl: $imageUrl, discountPercentage: $discountPercentage, rating: $rating, brand: $brand, description: $description, unit: $unit, stockStatus: $stockStatus, isVeg: $isVeg, isBestseller: $isBestseller, isNewArrival: $isNewArrival, isLimitedOffer: $isLimitedOffer, expiryDate: $expiryDate, categories: $categories, quantityInCart: $quantityInCart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.stockStatus, stockStatus) ||
                other.stockStatus == stockStatus) &&
            (identical(other.isVeg, isVeg) || other.isVeg == isVeg) &&
            (identical(other.isBestseller, isBestseller) ||
                other.isBestseller == isBestseller) &&
            (identical(other.isNewArrival, isNewArrival) ||
                other.isNewArrival == isNewArrival) &&
            (identical(other.isLimitedOffer, isLimitedOffer) ||
                other.isLimitedOffer == isLimitedOffer) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.quantityInCart, quantityInCart) ||
                other.quantityInCart == quantityInCart));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        price,
        originalPrice,
        weight,
        imageUrl,
        discountPercentage,
        rating,
        brand,
        description,
        unit,
        stockStatus,
        isVeg,
        isBestseller,
        isNewArrival,
        isLimitedOffer,
        expiryDate,
        const DeepCollectionEquality().hash(_categories),
        quantityInCart
      ]);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final String id,
      required final String name,
      required final double price,
      required final double originalPrice,
      required final String weight,
      required final String imageUrl,
      final int discountPercentage,
      final double rating,
      final String? brand,
      final String? description,
      final String? unit,
      final StockStatus stockStatus,
      final bool isVeg,
      final bool isBestseller,
      final bool isNewArrival,
      final bool isLimitedOffer,
      final String? expiryDate,
      final List<String> categories,
      final int quantityInCart}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  double get originalPrice;
  @override
  String get weight;
  @override
  String get imageUrl;
  @override
  int get discountPercentage;
  @override
  double get rating;
  @override
  String? get brand;
  @override
  String? get description;
  @override
  String? get unit; // e.g. kg, ltr, gm, packet
  @override
  StockStatus get stockStatus;
  @override
  bool get isVeg;
  @override
  bool get isBestseller;
  @override
  bool get isNewArrival;
  @override
  bool get isLimitedOffer;
  @override
  String? get expiryDate;
  @override
  List<String> get categories;
  @override
  int get quantityInCart;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
