// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      parentId: json['parentId'] as String?,
      level: $enumDecodeNullable(_$CategoryLevelEnumMap, json['level']) ??
          CategoryLevel.category,
      image: json['image'] as String,
      icon: json['icon'] as String?,
      banner: json['banner'] as String?,
      slug: json['slug'] as String?,
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
      priority: (json['priority'] as num?)?.toInt() ?? 0,
      isVisible: json['isVisible'] as bool? ?? true,
      isActive: json['isActive'] as bool? ?? true,
      isTrending: json['isTrending'] as bool? ?? false,
      isFeatured: json['isFeatured'] as bool? ?? false,
      isSeasonal: json['isSeasonal'] as bool? ?? false,
      isFestival: json['isFestival'] as bool? ?? false,
      isRecommended: json['isRecommended'] as bool? ?? false,
      isPremium: json['isPremium'] as bool? ?? false,
      productCount: (json['productCount'] as num?)?.toInt() ?? 0,
      departmentId: json['departmentId'] as String?,
      aiRecommendationScore:
          (json['aiRecommendationScore'] as num?)?.toDouble() ?? 0.0,
      aiTrendingScore: (json['aiTrendingScore'] as num?)?.toDouble() ?? 0.0,
      aiSeasonalRanking: (json['aiSeasonalRanking'] as num?)?.toDouble() ?? 0.0,
      subCategories: (json['subCategories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
      'level': _$CategoryLevelEnumMap[instance.level]!,
      'image': instance.image,
      'icon': instance.icon,
      'banner': instance.banner,
      'slug': instance.slug,
      'displayOrder': instance.displayOrder,
      'priority': instance.priority,
      'isVisible': instance.isVisible,
      'isActive': instance.isActive,
      'isTrending': instance.isTrending,
      'isFeatured': instance.isFeatured,
      'isSeasonal': instance.isSeasonal,
      'isFestival': instance.isFestival,
      'isRecommended': instance.isRecommended,
      'isPremium': instance.isPremium,
      'productCount': instance.productCount,
      'departmentId': instance.departmentId,
      'aiRecommendationScore': instance.aiRecommendationScore,
      'aiTrendingScore': instance.aiTrendingScore,
      'aiSeasonalRanking': instance.aiSeasonalRanking,
      'subCategories': instance.subCategories,
      'metadata': instance.metadata,
    };

const _$CategoryLevelEnumMap = {
  CategoryLevel.department: 'department',
  CategoryLevel.category: 'category',
  CategoryLevel.subCategory: 'subCategory',
  CategoryLevel.productGroup: 'productGroup',
  CategoryLevel.variant: 'variant',
};
