// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderReviewModelImpl _$$OrderReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderReviewModelImpl(
      cart: CartModel.fromJson(json['cart'] as Map<String, dynamic>),
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      deliverySlot: DeliverySlotModel.fromJson(
          json['deliverySlot'] as Map<String, dynamic>),
      specialInstructions: (json['specialInstructions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      otherInstructions: json['otherInstructions'] as String?,
      orderNote: json['orderNote'] as String?,
    );

Map<String, dynamic> _$$OrderReviewModelImplToJson(
        _$OrderReviewModelImpl instance) =>
    <String, dynamic>{
      'cart': instance.cart,
      'address': instance.address,
      'deliverySlot': instance.deliverySlot,
      'specialInstructions': instance.specialInstructions,
      'otherInstructions': instance.otherInstructions,
      'orderNote': instance.orderNote,
    };
