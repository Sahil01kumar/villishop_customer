// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopCartModelImpl _$$ShopCartModelImplFromJson(Map<String, dynamic> json) =>
    _$ShopCartModelImpl(
      shopId: json['shopId'] as String,
      shopName: json['shopName'] as String,
      shopLogo: json['shopLogo'] as String?,
      isOpen: json['isOpen'] as bool? ?? true,
      shopRating: (json['shopRating'] as num?)?.toDouble() ?? 0.0,
      deliveryTime: json['deliveryTime'] as String? ?? '10 mins',
      minOrderValue: (json['minOrderValue'] as num?)?.toDouble() ?? 0.0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      summary: json['summary'] == null
          ? const ShopSummaryModel()
          : ShopSummaryModel.fromJson(json['summary'] as Map<String, dynamic>),
      isExpanded: json['isExpanded'] as bool? ?? true,
      isSelected: json['isSelected'] as bool? ?? true,
    );

Map<String, dynamic> _$$ShopCartModelImplToJson(_$ShopCartModelImpl instance) =>
    <String, dynamic>{
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'shopLogo': instance.shopLogo,
      'isOpen': instance.isOpen,
      'shopRating': instance.shopRating,
      'deliveryTime': instance.deliveryTime,
      'minOrderValue': instance.minOrderValue,
      'items': instance.items,
      'summary': instance.summary,
      'isExpanded': instance.isExpanded,
      'isSelected': instance.isSelected,
    };
