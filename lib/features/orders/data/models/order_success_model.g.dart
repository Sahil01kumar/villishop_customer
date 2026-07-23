// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderSuccessModelImpl _$$OrderSuccessModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderSuccessModelImpl(
      orderId: json['orderId'] as String,
      orderNumber: json['orderNumber'] as String,
      trackingId: json['trackingId'] as String,
      deliveryETA: (json['deliveryETA'] as num).toInt(),
      deliveryType: json['deliveryType'] as String,
      paymentMethod: json['paymentMethod'] as String,
      paymentStatus: json['paymentStatus'] as String,
      invoiceNumber: json['invoiceNumber'] as String,
      orderStatus: $enumDecode(_$OrderStatusEnumMap, json['orderStatus']),
      grandTotal: (json['grandTotal'] as num).toDouble(),
      savings: (json['savings'] as num).toDouble(),
      totalQuantity: (json['totalQuantity'] as num).toInt(),
      totalItems: (json['totalItems'] as num).toInt(),
      isRiderAssigned: json['isRiderAssigned'] as bool? ?? false,
      riderName: json['riderName'] as String?,
      platformFee: (json['platformFee'] as num?)?.toDouble() ?? 0.0,
      packingCharge: (json['packingCharge'] as num?)?.toDouble() ?? 0.0,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      gstAmount: (json['gstAmount'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$OrderSuccessModelImplToJson(
        _$OrderSuccessModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderNumber': instance.orderNumber,
      'trackingId': instance.trackingId,
      'deliveryETA': instance.deliveryETA,
      'deliveryType': instance.deliveryType,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'invoiceNumber': instance.invoiceNumber,
      'orderStatus': _$OrderStatusEnumMap[instance.orderStatus]!,
      'grandTotal': instance.grandTotal,
      'savings': instance.savings,
      'totalQuantity': instance.totalQuantity,
      'totalItems': instance.totalItems,
      'isRiderAssigned': instance.isRiderAssigned,
      'riderName': instance.riderName,
      'platformFee': instance.platformFee,
      'packingCharge': instance.packingCharge,
      'deliveryCharge': instance.deliveryCharge,
      'gstAmount': instance.gstAmount,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.placed: 'placed',
  OrderStatus.confirmed: 'confirmed',
  OrderStatus.preparing: 'preparing',
  OrderStatus.packed: 'packed',
  OrderStatus.readyForPickup: 'readyForPickup',
  OrderStatus.outForDelivery: 'outForDelivery',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.failed: 'failed',
  OrderStatus.refunded: 'refunded',
  OrderStatus.returned: 'returned',
};
