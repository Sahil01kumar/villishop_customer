// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistProductModelImpl _$$WishlistProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistProductModelImpl(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      addedAt: DateTime.parse(json['addedAt'] as String),
      aiFavouriteScore: (json['aiFavouriteScore'] as num?)?.toDouble() ?? 0.0,
      isSavedForLater: json['isSavedForLater'] as bool? ?? false,
    );

Map<String, dynamic> _$$WishlistProductModelImplToJson(
        _$WishlistProductModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'addedAt': instance.addedAt.toIso8601String(),
      'aiFavouriteScore': instance.aiFavouriteScore,
      'isSavedForLater': instance.isSavedForLater,
    };
