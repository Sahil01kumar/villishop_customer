// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      originalPrice: (json['originalPrice'] as num).toDouble(),
      weight: json['weight'] as String,
      imageUrl: json['imageUrl'] as String,
      discountPercentage: (json['discountPercentage'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      unit: json['unit'] as String?,
      stockStatus:
          $enumDecodeNullable(_$StockStatusEnumMap, json['stockStatus']) ??
              StockStatus.inStock,
      isVeg: json['isVeg'] as bool? ?? false,
      isBestseller: json['isBestseller'] as bool? ?? false,
      isNewArrival: json['isNewArrival'] as bool? ?? false,
      isLimitedOffer: json['isLimitedOffer'] as bool? ?? false,
      expiryDate: json['expiryDate'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      quantityInCart: (json['quantityInCart'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'originalPrice': instance.originalPrice,
      'weight': instance.weight,
      'imageUrl': instance.imageUrl,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'brand': instance.brand,
      'description': instance.description,
      'unit': instance.unit,
      'stockStatus': _$StockStatusEnumMap[instance.stockStatus]!,
      'isVeg': instance.isVeg,
      'isBestseller': instance.isBestseller,
      'isNewArrival': instance.isNewArrival,
      'isLimitedOffer': instance.isLimitedOffer,
      'expiryDate': instance.expiryDate,
      'categories': instance.categories,
      'quantityInCart': instance.quantityInCart,
    };

const _$StockStatusEnumMap = {
  StockStatus.inStock: 'inStock',
  StockStatus.lowStock: 'lowStock',
  StockStatus.outOfStock: 'outOfStock',
};
