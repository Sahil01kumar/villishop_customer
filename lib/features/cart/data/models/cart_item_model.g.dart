// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemModelImpl _$$CartItemModelImplFromJson(Map<String, dynamic> json) =>
    _$CartItemModelImpl(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      isSavedForLater: json['isSavedForLater'] as bool? ?? false,
      isSelected: json['isSelected'] as bool? ?? false,
      addedAt: DateTime.parse(json['addedAt'] as String),
      shopCommissionAmount:
          (json['shopCommissionAmount'] as num?)?.toDouble() ?? 0.0,
      platformCommissionAmount:
          (json['platformCommissionAmount'] as num?)?.toDouble() ?? 0.0,
      taxAmount: (json['taxAmount'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CartItemModelImplToJson(_$CartItemModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'isSavedForLater': instance.isSavedForLater,
      'isSelected': instance.isSelected,
      'addedAt': instance.addedAt.toIso8601String(),
      'shopCommissionAmount': instance.shopCommissionAmount,
      'platformCommissionAmount': instance.platformCommissionAmount,
      'taxAmount': instance.taxAmount,
    };
