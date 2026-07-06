// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopModelImpl _$$ShopModelImplFromJson(Map<String, dynamic> json) =>
    _$ShopModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      rating: (json['rating'] as num).toDouble(),
      deliveryTime: json['deliveryTime'] as String,
      imageUrl: json['imageUrl'] as String,
      distance: json['distance'] as String,
      minOrder: json['minOrder'] as String,
      isOpen: json['isOpen'] as bool? ?? true,
      deliveryCharge: json['deliveryCharge'] as String? ?? '0',
      offers: (json['offers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      isVeg: json['isVeg'] as bool? ?? true,
      isFavourite: json['isFavourite'] as bool? ?? false,
      logoUrl: json['logoUrl'] as String?,
      description: json['description'] as String?,
      totalReviews: (json['totalReviews'] as num?)?.toInt() ?? 0,
      storeTiming: json['storeTiming'] as String? ?? '8:00 AM - 10:00 PM',
      address: json['address'] as String?,
      policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ShopModelImplToJson(_$ShopModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'rating': instance.rating,
      'deliveryTime': instance.deliveryTime,
      'imageUrl': instance.imageUrl,
      'distance': instance.distance,
      'minOrder': instance.minOrder,
      'isOpen': instance.isOpen,
      'deliveryCharge': instance.deliveryCharge,
      'offers': instance.offers,
      'tags': instance.tags,
      'isVeg': instance.isVeg,
      'isFavourite': instance.isFavourite,
      'logoUrl': instance.logoUrl,
      'description': instance.description,
      'totalReviews': instance.totalReviews,
      'storeTiming': instance.storeTiming,
      'address': instance.address,
      'policies': instance.policies,
    };
