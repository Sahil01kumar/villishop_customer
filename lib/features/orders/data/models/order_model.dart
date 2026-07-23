import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:villishop_customer/features/cart/data/models/cart_item_model.dart';
import 'package:villishop_customer/features/location/data/models/address_model.dart';
import 'package:villishop_customer/features/delivery/data/models/delivery_slot_model.dart';
import 'package:villishop_customer/features/finance/data/models/invoice_model.dart';
import 'package:villishop_customer/features/payment/data/models/payment_method_model.dart';
import '../../domain/entities/order_lifecycle_state.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

enum OrderStatus {
  @JsonValue('placed')
  placed,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('preparing')
  preparing,
  @JsonValue('packed')
  packed,
  @JsonValue('readyForPickup')
  readyForPickup,
  @JsonValue('outForDelivery')
  outForDelivery,
  @JsonValue('delivered')
  delivered,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('failed')
  failed,
  @JsonValue('refunded')
  refunded,
  @JsonValue('returned')
  returned,
}

enum OrderPaymentStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('paid')
  paid,
  @JsonValue('failed')
  failed,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('refunded')
  refunded,
  @JsonValue('partiallyRefunded')
  partiallyRefunded,
}

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String orderId,
    required String orderNumber,
    required String trackingId,
    required String customerId,
    required OrderStatus status,
    required OrderLifecycleState lifecycleState,
    required OrderPaymentStatus paymentStatus,
    required List<ShopOrderModel> shopOrders,

    // Snapshots (Immutable)
    required AddressModel deliveryAddressSnapshot,
    required DeliverySlotModel deliverySlotSnapshot,
    required PaymentMethodModel paymentMethodSnapshot,
    required InvoiceModel invoiceSnapshot,
    required List<OrderTimelineModel> timeline,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? confirmedAt,
    DateTime? preparingAt,
    DateTime? packedAt,
    DateTime? partnerAssignedAt,
    DateTime? pickedUpAt,
    DateTime? onTheWayAt,
    DateTime? nearbyAt,
    DateTime? deliveredAt,
    DateTime? cancelledAt,
    String? orderNote,
    @Default([]) List<String> specialInstructions,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class ShopOrderModel with _$ShopOrderModel {
  const factory ShopOrderModel({
    required String shopOrderId,
    required String masterOrderId,
    required String shopId,
    required String shopName,
    required List<CartItemModel> items,
    required OrderStatus status,
    @Default(0.0) double subTotal,
    @Default(0.0) double deliveryCharge,
    @Default(0.0) double shopDiscount,
    @Default(0.0) double totalAmount,
    DateTime? acceptedAt,
    DateTime? preparedAt,
    DateTime? pickedAt,
  }) = _ShopOrderModel;

  factory ShopOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ShopOrderModelFromJson(json);
}

@freezed
class OrderTimelineModel with _$OrderTimelineModel {
  const factory OrderTimelineModel({
    required OrderStatus status,
    required DateTime timestamp,
    required String title,
    String? description,
    @Default(false) bool isCompleted,
  }) = _OrderTimelineModel;

  factory OrderTimelineModel.fromJson(Map<String, dynamic> json) =>
      _$OrderTimelineModelFromJson(json);
}
