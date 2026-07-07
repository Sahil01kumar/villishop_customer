// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_shop_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiShopCartModelImpl _$$MultiShopCartModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MultiShopCartModelImpl(
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

Map<String, dynamic> _$$MultiShopCartModelImplToJson(
        _$MultiShopCartModelImpl instance) =>
    <String, dynamic>{
      'shopCarts': instance.shopCarts,
      'overallSummary': instance.overallSummary,
      'appliedCouponCode': instance.appliedCouponCode,
      'isSyncing': instance.isSyncing,
    };
