import 'package:villishop_customer/features/orders/data/models/order_review_model.dart';
import 'package:villishop_customer/features/orders/data/models/order_model.dart';
import '../entities/order_lifecycle_state.dart';

abstract class OrderRepository {
  Future<bool> validateOrder(OrderReviewModel review);

  Future<OrderModel> createOrder(OrderModel order);

  Future<OrderModel?> getOrderById(String orderId);

  Future<List<OrderModel>> getCustomerOrders(String customerId);

  Stream<List<OrderModel>> watchCustomerOrders(String customerId);

  Future<OrderModel?> updateOrderStatus(String orderId, OrderLifecycleState newState);

  Stream<OrderModel?> observeOrder(String orderId);

  // Failure Recovery
  Future<void> savePendingOrder(OrderModel order);
  Future<OrderModel?> getPendingOrder();
  Future<void> clearPendingOrder();
}
