// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      shopCarts: (json['shopCarts'] as List<dynamic>?)
              ?.map((e) => ShopCartModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      overallSummary: json['overallSummary'] == null
          ? const CartSummaryModel()
          : CartSummaryModel.fromJson(
              json['overallSummary'] as Map<String, dynamic>),
      appliedCouponCode: json['appliedCouponCode'] as String?,
      isSyncing: json['isSyncing'] as bool? ?? false,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'shopCarts': instance.shopCarts,
      'overallSummary': instance.overallSummary,
      'appliedCouponCode': instance.appliedCouponCode,
      'isSyncing': instance.isSyncing,
    };
