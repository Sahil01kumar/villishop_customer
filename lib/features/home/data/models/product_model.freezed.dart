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
// Basic Product
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String? get videoUrl =>
      throw _privateConstructorUsedError; // Taxonomy Engine Fields
  String get category => throw _privateConstructorUsedError; // Legacy support
  String? get departmentId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get subCategoryId => throw _privateConstructorUsedError;
  String? get productGroupId => throw _privateConstructorUsedError;
  String? get variantGroupId => throw _privateConstructorUsedError;
  String? get subCategory => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError; // Usage & Safety
  String? get usageInstructions => throw _privateConstructorUsedError;
  String? get safetyWarning => throw _privateConstructorUsedError;
  String? get careInstructions =>
      throw _privateConstructorUsedError; // Complex Info Objects
  PackagingInfo get packaging => throw _privateConstructorUsedError;
  ManufacturingInfo get manufacturing => throw _privateConstructorUsedError;
  StorageInfo get storage => throw _privateConstructorUsedError;
  NutritionInfo get nutrition => throw _privateConstructorUsedError;
  HealthLabels get healthLabels => throw _privateConstructorUsedError;
  InventoryInfo get inventory => throw _privateConstructorUsedError;
  PricingInfo get pricing => throw _privateConstructorUsedError;
  SubscriptionInfo get subscription => throw _privateConstructorUsedError;
  DeliveryInfo get delivery => throw _privateConstructorUsedError;
  AiIntelligence get ai => throw _privateConstructorUsedError;
  CustomerDiscovery get discovery =>
      throw _privateConstructorUsedError; // Metadata
  double get rating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  int get quantityInCart => throw _privateConstructorUsedError;
  String? get shopId => throw _privateConstructorUsedError;
  String? get shopName => throw _privateConstructorUsedError;
  List<ProductModel> get relatedProducts =>
      throw _privateConstructorUsedError; // Attributes for Enterprise Taxonomy
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;

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
      String imageUrl,
      List<String> imageUrls,
      String? videoUrl,
      String category,
      String? departmentId,
      String? categoryId,
      String? subCategoryId,
      String? productGroupId,
      String? variantGroupId,
      String? subCategory,
      String? brand,
      String? description,
      String? shortDescription,
      String? sku,
      String? barcode,
      String? usageInstructions,
      String? safetyWarning,
      String? careInstructions,
      PackagingInfo packaging,
      ManufacturingInfo manufacturing,
      StorageInfo storage,
      NutritionInfo nutrition,
      HealthLabels healthLabels,
      InventoryInfo inventory,
      PricingInfo pricing,
      SubscriptionInfo subscription,
      DeliveryInfo delivery,
      AiIntelligence ai,
      CustomerDiscovery discovery,
      double rating,
      int totalReviews,
      int quantityInCart,
      String? shopId,
      String? shopName,
      List<ProductModel> relatedProducts,
      Map<String, dynamic> attributes});

  $PackagingInfoCopyWith<$Res> get packaging;
  $ManufacturingInfoCopyWith<$Res> get manufacturing;
  $StorageInfoCopyWith<$Res> get storage;
  $NutritionInfoCopyWith<$Res> get nutrition;
  $HealthLabelsCopyWith<$Res> get healthLabels;
  $InventoryInfoCopyWith<$Res> get inventory;
  $PricingInfoCopyWith<$Res> get pricing;
  $SubscriptionInfoCopyWith<$Res> get subscription;
  $DeliveryInfoCopyWith<$Res> get delivery;
  $AiIntelligenceCopyWith<$Res> get ai;
  $CustomerDiscoveryCopyWith<$Res> get discovery;
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
    Object? imageUrl = null,
    Object? imageUrls = null,
    Object? videoUrl = freezed,
    Object? category = null,
    Object? departmentId = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? productGroupId = freezed,
    Object? variantGroupId = freezed,
    Object? subCategory = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? usageInstructions = freezed,
    Object? safetyWarning = freezed,
    Object? careInstructions = freezed,
    Object? packaging = null,
    Object? manufacturing = null,
    Object? storage = null,
    Object? nutrition = null,
    Object? healthLabels = null,
    Object? inventory = null,
    Object? pricing = null,
    Object? subscription = null,
    Object? delivery = null,
    Object? ai = null,
    Object? discovery = null,
    Object? rating = null,
    Object? totalReviews = null,
    Object? quantityInCart = null,
    Object? shopId = freezed,
    Object? shopName = freezed,
    Object? relatedProducts = null,
    Object? attributes = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      productGroupId: freezed == productGroupId
          ? _value.productGroupId
          : productGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantGroupId: freezed == variantGroupId
          ? _value.variantGroupId
          : variantGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      usageInstructions: freezed == usageInstructions
          ? _value.usageInstructions
          : usageInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      safetyWarning: freezed == safetyWarning
          ? _value.safetyWarning
          : safetyWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      careInstructions: freezed == careInstructions
          ? _value.careInstructions
          : careInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      packaging: null == packaging
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as PackagingInfo,
      manufacturing: null == manufacturing
          ? _value.manufacturing
          : manufacturing // ignore: cast_nullable_to_non_nullable
              as ManufacturingInfo,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as StorageInfo,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionInfo,
      healthLabels: null == healthLabels
          ? _value.healthLabels
          : healthLabels // ignore: cast_nullable_to_non_nullable
              as HealthLabels,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryInfo,
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as PricingInfo,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionInfo,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryInfo,
      ai: null == ai
          ? _value.ai
          : ai // ignore: cast_nullable_to_non_nullable
              as AiIntelligence,
      discovery: null == discovery
          ? _value.discovery
          : discovery // ignore: cast_nullable_to_non_nullable
              as CustomerDiscovery,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      quantityInCart: null == quantityInCart
          ? _value.quantityInCart
          : quantityInCart // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      shopName: freezed == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedProducts: null == relatedProducts
          ? _value.relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackagingInfoCopyWith<$Res> get packaging {
    return $PackagingInfoCopyWith<$Res>(_value.packaging, (value) {
      return _then(_value.copyWith(packaging: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ManufacturingInfoCopyWith<$Res> get manufacturing {
    return $ManufacturingInfoCopyWith<$Res>(_value.manufacturing, (value) {
      return _then(_value.copyWith(manufacturing: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StorageInfoCopyWith<$Res> get storage {
    return $StorageInfoCopyWith<$Res>(_value.storage, (value) {
      return _then(_value.copyWith(storage: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionInfoCopyWith<$Res> get nutrition {
    return $NutritionInfoCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthLabelsCopyWith<$Res> get healthLabels {
    return $HealthLabelsCopyWith<$Res>(_value.healthLabels, (value) {
      return _then(_value.copyWith(healthLabels: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryInfoCopyWith<$Res> get inventory {
    return $InventoryInfoCopyWith<$Res>(_value.inventory, (value) {
      return _then(_value.copyWith(inventory: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PricingInfoCopyWith<$Res> get pricing {
    return $PricingInfoCopyWith<$Res>(_value.pricing, (value) {
      return _then(_value.copyWith(pricing: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionInfoCopyWith<$Res> get subscription {
    return $SubscriptionInfoCopyWith<$Res>(_value.subscription, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryInfoCopyWith<$Res> get delivery {
    return $DeliveryInfoCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AiIntelligenceCopyWith<$Res> get ai {
    return $AiIntelligenceCopyWith<$Res>(_value.ai, (value) {
      return _then(_value.copyWith(ai: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDiscoveryCopyWith<$Res> get discovery {
    return $CustomerDiscoveryCopyWith<$Res>(_value.discovery, (value) {
      return _then(_value.copyWith(discovery: value) as $Val);
    });
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
      String imageUrl,
      List<String> imageUrls,
      String? videoUrl,
      String category,
      String? departmentId,
      String? categoryId,
      String? subCategoryId,
      String? productGroupId,
      String? variantGroupId,
      String? subCategory,
      String? brand,
      String? description,
      String? shortDescription,
      String? sku,
      String? barcode,
      String? usageInstructions,
      String? safetyWarning,
      String? careInstructions,
      PackagingInfo packaging,
      ManufacturingInfo manufacturing,
      StorageInfo storage,
      NutritionInfo nutrition,
      HealthLabels healthLabels,
      InventoryInfo inventory,
      PricingInfo pricing,
      SubscriptionInfo subscription,
      DeliveryInfo delivery,
      AiIntelligence ai,
      CustomerDiscovery discovery,
      double rating,
      int totalReviews,
      int quantityInCart,
      String? shopId,
      String? shopName,
      List<ProductModel> relatedProducts,
      Map<String, dynamic> attributes});

  @override
  $PackagingInfoCopyWith<$Res> get packaging;
  @override
  $ManufacturingInfoCopyWith<$Res> get manufacturing;
  @override
  $StorageInfoCopyWith<$Res> get storage;
  @override
  $NutritionInfoCopyWith<$Res> get nutrition;
  @override
  $HealthLabelsCopyWith<$Res> get healthLabels;
  @override
  $InventoryInfoCopyWith<$Res> get inventory;
  @override
  $PricingInfoCopyWith<$Res> get pricing;
  @override
  $SubscriptionInfoCopyWith<$Res> get subscription;
  @override
  $DeliveryInfoCopyWith<$Res> get delivery;
  @override
  $AiIntelligenceCopyWith<$Res> get ai;
  @override
  $CustomerDiscoveryCopyWith<$Res> get discovery;
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
    Object? imageUrl = null,
    Object? imageUrls = null,
    Object? videoUrl = freezed,
    Object? category = null,
    Object? departmentId = freezed,
    Object? categoryId = freezed,
    Object? subCategoryId = freezed,
    Object? productGroupId = freezed,
    Object? variantGroupId = freezed,
    Object? subCategory = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? sku = freezed,
    Object? barcode = freezed,
    Object? usageInstructions = freezed,
    Object? safetyWarning = freezed,
    Object? careInstructions = freezed,
    Object? packaging = null,
    Object? manufacturing = null,
    Object? storage = null,
    Object? nutrition = null,
    Object? healthLabels = null,
    Object? inventory = null,
    Object? pricing = null,
    Object? subscription = null,
    Object? delivery = null,
    Object? ai = null,
    Object? discovery = null,
    Object? rating = null,
    Object? totalReviews = null,
    Object? quantityInCart = null,
    Object? shopId = freezed,
    Object? shopName = freezed,
    Object? relatedProducts = null,
    Object? attributes = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      productGroupId: freezed == productGroupId
          ? _value.productGroupId
          : productGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantGroupId: freezed == variantGroupId
          ? _value.variantGroupId
          : variantGroupId // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      usageInstructions: freezed == usageInstructions
          ? _value.usageInstructions
          : usageInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      safetyWarning: freezed == safetyWarning
          ? _value.safetyWarning
          : safetyWarning // ignore: cast_nullable_to_non_nullable
              as String?,
      careInstructions: freezed == careInstructions
          ? _value.careInstructions
          : careInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      packaging: null == packaging
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as PackagingInfo,
      manufacturing: null == manufacturing
          ? _value.manufacturing
          : manufacturing // ignore: cast_nullable_to_non_nullable
              as ManufacturingInfo,
      storage: null == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as StorageInfo,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionInfo,
      healthLabels: null == healthLabels
          ? _value.healthLabels
          : healthLabels // ignore: cast_nullable_to_non_nullable
              as HealthLabels,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as InventoryInfo,
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as PricingInfo,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionInfo,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryInfo,
      ai: null == ai
          ? _value.ai
          : ai // ignore: cast_nullable_to_non_nullable
              as AiIntelligence,
      discovery: null == discovery
          ? _value.discovery
          : discovery // ignore: cast_nullable_to_non_nullable
              as CustomerDiscovery,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      quantityInCart: null == quantityInCart
          ? _value.quantityInCart
          : quantityInCart // ignore: cast_nullable_to_non_nullable
              as int,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      shopName: freezed == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedProducts: null == relatedProducts
          ? _value._relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      final List<String> imageUrls = const [],
      this.videoUrl,
      required this.category,
      this.departmentId,
      this.categoryId,
      this.subCategoryId,
      this.productGroupId,
      this.variantGroupId,
      this.subCategory,
      this.brand,
      this.description,
      this.shortDescription,
      this.sku,
      this.barcode,
      this.usageInstructions,
      this.safetyWarning,
      this.careInstructions,
      required this.packaging,
      required this.manufacturing,
      this.storage = const StorageInfo(),
      this.nutrition = const NutritionInfo(),
      this.healthLabels = const HealthLabels(),
      this.inventory = const InventoryInfo(),
      required this.pricing,
      this.subscription = const SubscriptionInfo(),
      this.delivery = const DeliveryInfo(),
      this.ai = const AiIntelligence(),
      this.discovery = const CustomerDiscovery(),
      this.rating = 0.0,
      this.totalReviews = 0,
      this.quantityInCart = 0,
      this.shopId,
      this.shopName,
      final List<ProductModel> relatedProducts = const [],
      final Map<String, dynamic> attributes = const {}})
      : _imageUrls = imageUrls,
        _relatedProducts = relatedProducts,
        _attributes = attributes;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

// Basic Product
  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final String? videoUrl;
// Taxonomy Engine Fields
  @override
  final String category;
// Legacy support
  @override
  final String? departmentId;
  @override
  final String? categoryId;
  @override
  final String? subCategoryId;
  @override
  final String? productGroupId;
  @override
  final String? variantGroupId;
  @override
  final String? subCategory;
  @override
  final String? brand;
  @override
  final String? description;
  @override
  final String? shortDescription;
  @override
  final String? sku;
  @override
  final String? barcode;
// Usage & Safety
  @override
  final String? usageInstructions;
  @override
  final String? safetyWarning;
  @override
  final String? careInstructions;
// Complex Info Objects
  @override
  final PackagingInfo packaging;
  @override
  final ManufacturingInfo manufacturing;
  @override
  @JsonKey()
  final StorageInfo storage;
  @override
  @JsonKey()
  final NutritionInfo nutrition;
  @override
  @JsonKey()
  final HealthLabels healthLabels;
  @override
  @JsonKey()
  final InventoryInfo inventory;
  @override
  final PricingInfo pricing;
  @override
  @JsonKey()
  final SubscriptionInfo subscription;
  @override
  @JsonKey()
  final DeliveryInfo delivery;
  @override
  @JsonKey()
  final AiIntelligence ai;
  @override
  @JsonKey()
  final CustomerDiscovery discovery;
// Metadata
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int totalReviews;
  @override
  @JsonKey()
  final int quantityInCart;
  @override
  final String? shopId;
  @override
  final String? shopName;
  final List<ProductModel> _relatedProducts;
  @override
  @JsonKey()
  List<ProductModel> get relatedProducts {
    if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProducts);
  }

// Attributes for Enterprise Taxonomy
  final Map<String, dynamic> _attributes;
// Attributes for Enterprise Taxonomy
  @override
  @JsonKey()
  Map<String, dynamic> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, imageUrl: $imageUrl, imageUrls: $imageUrls, videoUrl: $videoUrl, category: $category, departmentId: $departmentId, categoryId: $categoryId, subCategoryId: $subCategoryId, productGroupId: $productGroupId, variantGroupId: $variantGroupId, subCategory: $subCategory, brand: $brand, description: $description, shortDescription: $shortDescription, sku: $sku, barcode: $barcode, usageInstructions: $usageInstructions, safetyWarning: $safetyWarning, careInstructions: $careInstructions, packaging: $packaging, manufacturing: $manufacturing, storage: $storage, nutrition: $nutrition, healthLabels: $healthLabels, inventory: $inventory, pricing: $pricing, subscription: $subscription, delivery: $delivery, ai: $ai, discovery: $discovery, rating: $rating, totalReviews: $totalReviews, quantityInCart: $quantityInCart, shopId: $shopId, shopName: $shopName, relatedProducts: $relatedProducts, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.productGroupId, productGroupId) ||
                other.productGroupId == productGroupId) &&
            (identical(other.variantGroupId, variantGroupId) ||
                other.variantGroupId == variantGroupId) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.usageInstructions, usageInstructions) ||
                other.usageInstructions == usageInstructions) &&
            (identical(other.safetyWarning, safetyWarning) ||
                other.safetyWarning == safetyWarning) &&
            (identical(other.careInstructions, careInstructions) ||
                other.careInstructions == careInstructions) &&
            (identical(other.packaging, packaging) ||
                other.packaging == packaging) &&
            (identical(other.manufacturing, manufacturing) ||
                other.manufacturing == manufacturing) &&
            (identical(other.storage, storage) || other.storage == storage) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.healthLabels, healthLabels) ||
                other.healthLabels == healthLabels) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.ai, ai) || other.ai == ai) &&
            (identical(other.discovery, discovery) ||
                other.discovery == discovery) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.quantityInCart, quantityInCart) ||
                other.quantityInCart == quantityInCart) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            const DeepCollectionEquality()
                .equals(other._relatedProducts, _relatedProducts) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        imageUrl,
        const DeepCollectionEquality().hash(_imageUrls),
        videoUrl,
        category,
        departmentId,
        categoryId,
        subCategoryId,
        productGroupId,
        variantGroupId,
        subCategory,
        brand,
        description,
        shortDescription,
        sku,
        barcode,
        usageInstructions,
        safetyWarning,
        careInstructions,
        packaging,
        manufacturing,
        storage,
        nutrition,
        healthLabels,
        inventory,
        pricing,
        subscription,
        delivery,
        ai,
        discovery,
        rating,
        totalReviews,
        quantityInCart,
        shopId,
        shopName,
        const DeepCollectionEquality().hash(_relatedProducts),
        const DeepCollectionEquality().hash(_attributes)
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
      required final String imageUrl,
      final List<String> imageUrls,
      final String? videoUrl,
      required final String category,
      final String? departmentId,
      final String? categoryId,
      final String? subCategoryId,
      final String? productGroupId,
      final String? variantGroupId,
      final String? subCategory,
      final String? brand,
      final String? description,
      final String? shortDescription,
      final String? sku,
      final String? barcode,
      final String? usageInstructions,
      final String? safetyWarning,
      final String? careInstructions,
      required final PackagingInfo packaging,
      required final ManufacturingInfo manufacturing,
      final StorageInfo storage,
      final NutritionInfo nutrition,
      final HealthLabels healthLabels,
      final InventoryInfo inventory,
      required final PricingInfo pricing,
      final SubscriptionInfo subscription,
      final DeliveryInfo delivery,
      final AiIntelligence ai,
      final CustomerDiscovery discovery,
      final double rating,
      final int totalReviews,
      final int quantityInCart,
      final String? shopId,
      final String? shopName,
      final List<ProductModel> relatedProducts,
      final Map<String, dynamic> attributes}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

// Basic Product
  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  List<String> get imageUrls;
  @override
  String? get videoUrl; // Taxonomy Engine Fields
  @override
  String get category; // Legacy support
  @override
  String? get departmentId;
  @override
  String? get categoryId;
  @override
  String? get subCategoryId;
  @override
  String? get productGroupId;
  @override
  String? get variantGroupId;
  @override
  String? get subCategory;
  @override
  String? get brand;
  @override
  String? get description;
  @override
  String? get shortDescription;
  @override
  String? get sku;
  @override
  String? get barcode; // Usage & Safety
  @override
  String? get usageInstructions;
  @override
  String? get safetyWarning;
  @override
  String? get careInstructions; // Complex Info Objects
  @override
  PackagingInfo get packaging;
  @override
  ManufacturingInfo get manufacturing;
  @override
  StorageInfo get storage;
  @override
  NutritionInfo get nutrition;
  @override
  HealthLabels get healthLabels;
  @override
  InventoryInfo get inventory;
  @override
  PricingInfo get pricing;
  @override
  SubscriptionInfo get subscription;
  @override
  DeliveryInfo get delivery;
  @override
  AiIntelligence get ai;
  @override
  CustomerDiscovery get discovery; // Metadata
  @override
  double get rating;
  @override
  int get totalReviews;
  @override
  int get quantityInCart;
  @override
  String? get shopId;
  @override
  String? get shopName;
  @override
  List<ProductModel> get relatedProducts; // Attributes for Enterprise Taxonomy
  @override
  Map<String, dynamic> get attributes;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
