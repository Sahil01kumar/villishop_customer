// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryInfoImpl _$$InventoryInfoImplFromJson(Map<String, dynamic> json) =>
    _$InventoryInfoImpl(
      stockQuantity: (json['stockQuantity'] as num?)?.toInt() ?? 0,
      reservedQuantity: (json['reservedQuantity'] as num?)?.toInt() ?? 0,
      availableQuantity: (json['availableQuantity'] as num?)?.toInt() ?? 100,
      lowStockThreshold: (json['lowStockThreshold'] as num?)?.toInt() ?? 5,
      stockStatus:
          $enumDecodeNullable(_$StockStatusEnumMap, json['stockStatus']) ??
              StockStatus.inStock,
      isTrending: json['isTrending'] as bool? ?? false,
      isBestseller: json['isBestseller'] as bool? ?? false,
      isRecommended: json['isRecommended'] as bool? ?? false,
      isNewArrival: json['isNewArrival'] as bool? ?? false,
      minOrderQuantity: (json['minOrderQuantity'] as num?)?.toInt() ?? 1,
      maxOrderQuantity: (json['maxOrderQuantity'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$InventoryInfoImplToJson(_$InventoryInfoImpl instance) =>
    <String, dynamic>{
      'stockQuantity': instance.stockQuantity,
      'reservedQuantity': instance.reservedQuantity,
      'availableQuantity': instance.availableQuantity,
      'lowStockThreshold': instance.lowStockThreshold,
      'stockStatus': _$StockStatusEnumMap[instance.stockStatus]!,
      'isTrending': instance.isTrending,
      'isBestseller': instance.isBestseller,
      'isRecommended': instance.isRecommended,
      'isNewArrival': instance.isNewArrival,
      'minOrderQuantity': instance.minOrderQuantity,
      'maxOrderQuantity': instance.maxOrderQuantity,
    };

const _$StockStatusEnumMap = {
  StockStatus.inStock: 'inStock',
  StockStatus.lowStock: 'lowStock',
  StockStatus.outOfStock: 'outOfStock',
};
