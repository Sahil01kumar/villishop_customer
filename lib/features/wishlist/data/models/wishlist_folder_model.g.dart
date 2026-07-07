// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_folder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistFolderModelImpl _$$WishlistFolderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistFolderModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  WishlistProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
      isSystemFolder: json['isSystemFolder'] as bool? ?? false,
    );

Map<String, dynamic> _$$WishlistFolderModelImplToJson(
        _$WishlistFolderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'items': instance.items,
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'isSystemFolder': instance.isSystemFolder,
    };
