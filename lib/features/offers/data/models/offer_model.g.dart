// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferModelImpl _$$OfferModelImplFromJson(Map<String, dynamic> json) =>
    _$OfferModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$OfferTypeEnumMap, json['type']),
      value: (json['value'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      shopId: json['shopId'] as String?,
      brandId: json['brandId'] as String?,
      categoryId: json['categoryId'] as String?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      isFlashSale: json['isFlashSale'] as bool? ?? false,
      isTrending: json['isTrending'] as bool? ?? false,
      aiRelevanceScore: (json['aiRelevanceScore'] as num?)?.toDouble() ?? 0.0,
      termsAndConditions: (json['termsAndConditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OfferModelImplToJson(_$OfferModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$OfferTypeEnumMap[instance.type]!,
      'value': instance.value,
      'imageUrl': instance.imageUrl,
      'shopId': instance.shopId,
      'brandId': instance.brandId,
      'categoryId': instance.categoryId,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'isFlashSale': instance.isFlashSale,
      'isTrending': instance.isTrending,
      'aiRelevanceScore': instance.aiRelevanceScore,
      'termsAndConditions': instance.termsAndConditions,
    };

const _$OfferTypeEnumMap = {
  OfferType.flat: 'flat',
  OfferType.percentage: 'percentage',
  OfferType.bogo: 'bogo',
  OfferType.combo: 'combo',
  OfferType.cashback: 'cashback',
  OfferType.freeDelivery: 'freeDelivery',
  OfferType.freeGift: 'freeGift',
};
