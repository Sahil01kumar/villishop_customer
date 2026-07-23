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
      totalReviews: (json['totalReviews'] as num?)?.toInt() ?? 0,
      description: json['description'] as String?,
      storeTiming: json['storeTiming'] as String?,
      address: json['address'] as String?,
      isFavourite: json['isFavourite'] as bool? ?? false,
      offers: (json['offers'] as List<dynamic>?)
              ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'totalReviews': instance.totalReviews,
      'description': instance.description,
      'storeTiming': instance.storeTiming,
      'address': instance.address,
      'isFavourite': instance.isFavourite,
      'offers': instance.offers,
      'policies': instance.policies,
    };
