// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteShopModelImpl _$$FavouriteShopModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouriteShopModelImpl(
      shop: ShopModel.fromJson(json['shop'] as Map<String, dynamic>),
      addedAt: DateTime.parse(json['addedAt'] as String),
      aiFavouriteScore: (json['aiFavouriteScore'] as num?)?.toDouble() ?? 0.0,
      isRecentlyVisited: json['isRecentlyVisited'] as bool? ?? false,
    );

Map<String, dynamic> _$$FavouriteShopModelImplToJson(
        _$FavouriteShopModelImpl instance) =>
    <String, dynamic>{
      'shop': instance.shop,
      'addedAt': instance.addedAt.toIso8601String(),
      'aiFavouriteScore': instance.aiFavouriteScore,
      'isRecentlyVisited': instance.isRecentlyVisited,
    };
