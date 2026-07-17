import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import '../../data/models/order_model.dart';
import '../../data/models/order_review_model.dart';
import '../../../payment/data/models/payment_method_model.dart';
import '../../../finance/data/models/invoice_model.dart';
import '../entities/order_lifecycle_state.dart';

class PlaceOrderEngine {
  static const _uuid = Uuid();

  /// Generates a unique order number: VS + YYMMDD + 6 digit random suffix
  static String generateOrderNumber() {
    final now = DateTime.now();
    final dateStr = DateFormat('yyMMdd').format(now);
    final randomSuffix =
        _uuid.v4().split('-').first.toUpperCase().substring(0, 6);
    return 'VS$dateStr$randomSuffix';
  }

  /// Generates a unique tracking ID: TRK + YYMMDD + random suffix
  static String generateTrackingId() {
    final now = DateTime.now();
    final dateStr = DateFormat('yyMMdd').format(now);
    final randomSuffix =
        _uuid.v4().split('-').first.toUpperCase().substring(0, 6);
    return 'TRK-$dateStr-$randomSuffix';
  }

  /// Creates a master order and splits it into shop-specific child orders
  static OrderModel buildOrderModel({
    required OrderReviewModel review,
    required PaymentMethodModel paymentMethod,
    required InvoiceModel invoice,
    required String customerId,
  }) {
    final masterOrderId = _uuid.v4();
    final orderNumber = generateOrderNumber();
    final trackingId = generateTrackingId();
    final now = DateTime.now();

    // Map cart into shop-specific sub-orders
    final shopOrders = review.cart.shopCarts.map((shopCart) {
      return ShopOrderModel(
        shopOrderId: _uuid.v4(),
        masterOrderId: masterOrderId,
        shopId: shopCart.shopId,
        shopName: shopCart.shopName,
        items: shopCart.items,
        status: OrderStatus.placed,
        subTotal: shopCart.summary.subTotal,
        deliveryCharge: shopCart.summary.deliveryCharge,
        shopDiscount: shopCart.summary.totalDiscount,
        totalAmount: shopCart.summary.grandTotal,
      );
    }).toList();

    // Create Initial Timeline
    final timeline = [
      OrderTimelineModel(
        status: OrderStatus.placed,
        timestamp: now,
        title: 'Order Placed',
        description: 'Successfully received by VilliShop',
        isCompleted: true,
      ),
      OrderTimelineModel(
        status: OrderStatus.confirmed,
        timestamp: now.add(const Duration(seconds: 5)),
        title: 'Awaiting Shop Acceptance',
        description: 'Village partner is verifying your items',
      ),
    ];

    return OrderModel(
      orderId: masterOrderId,
      orderNumber: orderNumber,
      trackingId: trackingId,
      customerId: customerId,
      status: OrderStatus.placed,
      lifecycleState: OrderLifecycleState.orderPlaced,
      paymentStatus: paymentMethod.type == PaymentType.cod
          ? OrderPaymentStatus.pending
          : OrderPaymentStatus.paid,
      shopOrders: shopOrders,
      deliveryAddressSnapshot: review.address,
      deliverySlotSnapshot: review.deliverySlot,
      paymentMethodSnapshot: paymentMethod,
      invoiceSnapshot: invoice,
      timeline: timeline,
      createdAt: now,
      orderNote: review.orderNote,
      specialInstructions: review.specialInstructions,
    );
  }

  /// Simulation: Lock inventory to prevent overselling during checkout
  static Future<void> reserveInventory(OrderModel order) async {
    // In production: Connect to Redis or DB locking service
    await Future.delayed(const Duration(milliseconds: 300));
  }

  /// Simulation: Release inventory locks if order fails
  static Future<void> rollbackInventory(OrderModel order) async {
    await Future.delayed(const Duration(milliseconds: 200));
  }
}
