import 'package:freezed_annotation/freezed_annotation.dart';
import 'order_model.dart';

part 'order_success_model.freezed.dart';
part 'order_success_model.g.dart';

@freezed
class OrderSuccessModel with _$OrderSuccessModel {
  const factory OrderSuccessModel({
    required String orderId,
    required String orderNumber,
    required String trackingId,
    required int deliveryETA,
    required String deliveryType,
    required String paymentMethod,
    required String paymentStatus,
    required String invoiceNumber,
    required OrderStatus orderStatus,
    required double grandTotal,
    required double savings,
    required int totalQuantity,
    required int totalItems,
    @Default(false) bool isRiderAssigned,
    String? riderName,

    // Fee breakdown for Success UI
    @Default(0.0) double platformFee,
    @Default(0.0) double packingCharge,
    @Default(0.0) double deliveryCharge,
    @Default(0.0) double gstAmount,
  }) = _OrderSuccessModel;

  factory OrderSuccessModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSuccessModelFromJson(json);

  factory OrderSuccessModel.fromOrder(OrderModel order) {
    final inv = order.invoiceSnapshot;
    return OrderSuccessModel(
      orderId: order.orderId,
      orderNumber: order.orderNumber,
      trackingId: order.trackingId,
      deliveryETA: order.deliverySlotSnapshot.estimatedMinutes,
      deliveryType: order.deliverySlotSnapshot.label ?? 'Standard',
      paymentMethod: order.paymentMethodSnapshot.name,
      paymentStatus: order.paymentStatus.name,
      invoiceNumber: 'INV-${order.orderNumber}',
      orderStatus: order.status,
      grandTotal: inv.grandTotal,
      savings: inv.savedAmount,
      totalQuantity: order.shopOrders.fold(
          0,
          (sum, shopOrder) =>
              sum +
              shopOrder.items.fold(0, (iSum, item) => iSum + item.quantity)),
      totalItems: order.shopOrders
          .fold(0, (sum, shopOrder) => sum + shopOrder.items.length),
      platformFee: inv.platformFee,
      packingCharge: inv.packingCharge,
      deliveryCharge: inv.deliveryCharge,
      gstAmount: inv.gstAmount,
      isRiderAssigned: false,
    );
  }
}
