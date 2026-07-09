// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      videoUrl: json['videoUrl'] as String?,
      category: json['category'] as String,
      departmentId: json['departmentId'] as String?,
      categoryId: json['categoryId'] as String?,
      subCategoryId: json['subCategoryId'] as String?,
      productGroupId: json['productGroupId'] as String?,
      variantGroupId: json['variantGroupId'] as String?,
      subCategory: json['subCategory'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      sku: json['sku'] as String?,
      barcode: json['barcode'] as String?,
      usageInstructions: json['usageInstructions'] as String?,
      safetyWarning: json['safetyWarning'] as String?,
      careInstructions: json['careInstructions'] as String?,
      packaging:
          PackagingInfo.fromJson(json['packaging'] as Map<String, dynamic>),
      manufacturing: ManufacturingInfo.fromJson(
          json['manufacturing'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? const StorageInfo()
          : StorageInfo.fromJson(json['storage'] as Map<String, dynamic>),
      nutrition: json['nutrition'] == null
          ? const NutritionInfo()
          : NutritionInfo.fromJson(json['nutrition'] as Map<String, dynamic>),
      healthLabels: json['healthLabels'] == null
          ? const HealthLabels()
          : HealthLabels.fromJson(json['healthLabels'] as Map<String, dynamic>),
      inventory: json['inventory'] == null
          ? const InventoryInfo()
          : InventoryInfo.fromJson(json['inventory'] as Map<String, dynamic>),
      pricing: PricingInfo.fromJson(json['pricing'] as Map<String, dynamic>),
      subscription: json['subscription'] == null
          ? const SubscriptionInfo()
          : SubscriptionInfo.fromJson(
              json['subscription'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? const DeliveryInfo()
          : DeliveryInfo.fromJson(json['delivery'] as Map<String, dynamic>),
      ai: json['ai'] == null
          ? const AiIntelligence()
          : AiIntelligence.fromJson(json['ai'] as Map<String, dynamic>),
      discovery: json['discovery'] == null
          ? const CustomerDiscovery()
          : CustomerDiscovery.fromJson(
              json['discovery'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      totalReviews: (json['totalReviews'] as num?)?.toInt() ?? 0,
      quantityInCart: (json['quantityInCart'] as num?)?.toInt() ?? 0,
      shopId: json['shopId'] as String?,
      shopName: json['shopName'] as String?,
      relatedProducts: (json['relatedProducts'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      attributes: json['attributes'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'imageUrls': instance.imageUrls,
      'videoUrl': instance.videoUrl,
      'category': instance.category,
      'departmentId': instance.departmentId,
      'categoryId': instance.categoryId,
      'subCategoryId': instance.subCategoryId,
      'productGroupId': instance.productGroupId,
      'variantGroupId': instance.variantGroupId,
      'subCategory': instance.subCategory,
      'brand': instance.brand,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'sku': instance.sku,
      'barcode': instance.barcode,
      'usageInstructions': instance.usageInstructions,
      'safetyWarning': instance.safetyWarning,
      'careInstructions': instance.careInstructions,
      'packaging': instance.packaging,
      'manufacturing': instance.manufacturing,
      'storage': instance.storage,
      'nutrition': instance.nutrition,
      'healthLabels': instance.healthLabels,
      'inventory': instance.inventory,
      'pricing': instance.pricing,
      'subscription': instance.subscription,
      'delivery': instance.delivery,
      'ai': instance.ai,
      'discovery': instance.discovery,
      'rating': instance.rating,
      'totalReviews': instance.totalReviews,
      'quantityInCart': instance.quantityInCart,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'relatedProducts': instance.relatedProducts,
      'attributes': instance.attributes,
    };
