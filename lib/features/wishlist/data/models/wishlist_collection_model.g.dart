// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistCollectionModelImpl _$$WishlistCollectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistCollectionModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  WishlistProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$WishlistCollectionModelImplToJson(
        _$WishlistCollectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items,
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
    };
