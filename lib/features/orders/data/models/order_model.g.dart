// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: json['orderId'] as String,
      orderNumber: json['orderNumber'] as String,
      trackingId: json['trackingId'] as String,
      customerId: json['customerId'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      lifecycleState:
          $enumDecode(_$OrderLifecycleStateEnumMap, json['lifecycleState']),
      paymentStatus:
          $enumDecode(_$OrderPaymentStatusEnumMap, json['paymentStatus']),
      shopOrders: (json['shopOrders'] as List<dynamic>)
          .map((e) => ShopOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryAddressSnapshot: AddressModel.fromJson(
          json['deliveryAddressSnapshot'] as Map<String, dynamic>),
      deliverySlotSnapshot: DeliverySlotModel.fromJson(
          json['deliverySlotSnapshot'] as Map<String, dynamic>),
      paymentMethodSnapshot: PaymentMethodModel.fromJson(
          json['paymentMethodSnapshot'] as Map<String, dynamic>),
      invoiceSnapshot: InvoiceModel.fromJson(
          json['invoiceSnapshot'] as Map<String, dynamic>),
      timeline: (json['timeline'] as List<dynamic>)
          .map((e) => OrderTimelineModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      confirmedAt: json['confirmedAt'] == null
          ? null
          : DateTime.parse(json['confirmedAt'] as String),
      preparingAt: json['preparingAt'] == null
          ? null
          : DateTime.parse(json['preparingAt'] as String),
      packedAt: json['packedAt'] == null
          ? null
          : DateTime.parse(json['packedAt'] as String),
      partnerAssignedAt: json['partnerAssignedAt'] == null
          ? null
          : DateTime.parse(json['partnerAssignedAt'] as String),
      pickedUpAt: json['pickedUpAt'] == null
          ? null
          : DateTime.parse(json['pickedUpAt'] as String),
      onTheWayAt: json['onTheWayAt'] == null
          ? null
          : DateTime.parse(json['onTheWayAt'] as String),
      nearbyAt: json['nearbyAt'] == null
          ? null
          : DateTime.parse(json['nearbyAt'] as String),
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      orderNote: json['orderNote'] as String?,
      specialInstructions: (json['specialInstructions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'orderNumber': instance.orderNumber,
      'trackingId': instance.trackingId,
      'customerId': instance.customerId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'lifecycleState': _$OrderLifecycleStateEnumMap[instance.lifecycleState]!,
      'paymentStatus': _$OrderPaymentStatusEnumMap[instance.paymentStatus]!,
      'shopOrders': instance.shopOrders,
      'deliveryAddressSnapshot': instance.deliveryAddressSnapshot,
      'deliverySlotSnapshot': instance.deliverySlotSnapshot,
      'paymentMethodSnapshot': instance.paymentMethodSnapshot,
      'invoiceSnapshot': instance.invoiceSnapshot,
      'timeline': instance.timeline,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'confirmedAt': instance.confirmedAt?.toIso8601String(),
      'preparingAt': instance.preparingAt?.toIso8601String(),
      'packedAt': instance.packedAt?.toIso8601String(),
      'partnerAssignedAt': instance.partnerAssignedAt?.toIso8601String(),
      'pickedUpAt': instance.pickedUpAt?.toIso8601String(),
      'onTheWayAt': instance.onTheWayAt?.toIso8601String(),
      'nearbyAt': instance.nearbyAt?.toIso8601String(),
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'orderNote': instance.orderNote,
      'specialInstructions': instance.specialInstructions,
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

const _$OrderLifecycleStateEnumMap = {
  OrderLifecycleState.orderPlaced: 'orderPlaced',
  OrderLifecycleState.confirmed: 'confirmed',
  OrderLifecycleState.preparing: 'preparing',
  OrderLifecycleState.packed: 'packed',
  OrderLifecycleState.deliveryPartnerAssigned: 'deliveryPartnerAssigned',
  OrderLifecycleState.pickedUp: 'pickedUp',
  OrderLifecycleState.onTheWay: 'onTheWay',
  OrderLifecycleState.nearby: 'nearby',
  OrderLifecycleState.delivered: 'delivered',
  OrderLifecycleState.cancelled: 'cancelled',
  OrderLifecycleState.failed: 'failed',
  OrderLifecycleState.refunded: 'refunded',
  OrderLifecycleState.returned: 'returned',
};

const _$OrderPaymentStatusEnumMap = {
  OrderPaymentStatus.pending: 'pending',
  OrderPaymentStatus.paid: 'paid',
  OrderPaymentStatus.failed: 'failed',
  OrderPaymentStatus.cancelled: 'cancelled',
  OrderPaymentStatus.refunded: 'refunded',
  OrderPaymentStatus.partiallyRefunded: 'partiallyRefunded',
};

_$ShopOrderModelImpl _$$ShopOrderModelImplFromJson(Map<String, dynamic> json) =>
    _$ShopOrderModelImpl(
      shopOrderId: json['shopOrderId'] as String,
      masterOrderId: json['masterOrderId'] as String,
      shopId: json['shopId'] as String,
      shopName: json['shopName'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      subTotal: (json['subTotal'] as num?)?.toDouble() ?? 0.0,
      deliveryCharge: (json['deliveryCharge'] as num?)?.toDouble() ?? 0.0,
      shopDiscount: (json['shopDiscount'] as num?)?.toDouble() ?? 0.0,
      totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0.0,
      acceptedAt: json['acceptedAt'] == null
          ? null
          : DateTime.parse(json['acceptedAt'] as String),
      preparedAt: json['preparedAt'] == null
          ? null
          : DateTime.parse(json['preparedAt'] as String),
      pickedAt: json['pickedAt'] == null
          ? null
          : DateTime.parse(json['pickedAt'] as String),
    );

Map<String, dynamic> _$$ShopOrderModelImplToJson(
        _$ShopOrderModelImpl instance) =>
    <String, dynamic>{
      'shopOrderId': instance.shopOrderId,
      'masterOrderId': instance.masterOrderId,
      'shopId': instance.shopId,
      'shopName': instance.shopName,
      'items': instance.items,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'subTotal': instance.subTotal,
      'deliveryCharge': instance.deliveryCharge,
      'shopDiscount': instance.shopDiscount,
      'totalAmount': instance.totalAmount,
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'preparedAt': instance.preparedAt?.toIso8601String(),
      'pickedAt': instance.pickedAt?.toIso8601String(),
    };

_$OrderTimelineModelImpl _$$OrderTimelineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderTimelineModelImpl(
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      timestamp: DateTime.parse(json['timestamp'] as String),
      title: json['title'] as String,
      description: json['description'] as String?,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$OrderTimelineModelImplToJson(
        _$OrderTimelineModelImpl instance) =>
    <String, dynamic>{
      'status': _$OrderStatusEnumMap[instance.status]!,
      'timestamp': instance.timestamp.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
    };
