// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      summary: json['summary'] == null
          ? const CartSummaryModel()
          : CartSummaryModel.fromJson(json['summary'] as Map<String, dynamic>),
      appliedCouponCode: json['appliedCouponCode'] as String?,
      deliveryInstruction: json['deliveryInstruction'] as String?,
      itemsByShop: (json['itemsByShop'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) =>
                        CartItemModel.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'summary': instance.summary,
      'appliedCouponCode': instance.appliedCouponCode,
      'deliveryInstruction': instance.deliveryInstruction,
      'itemsByShop': instance.itemsByShop,
    };
