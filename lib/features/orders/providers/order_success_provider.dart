import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/order_model.dart';
import '../data/models/order_success_model.dart';

final orderSuccessProvider =
    StateProvider.family<OrderSuccessModel?, OrderModel>((ref, order) {
  return OrderSuccessModel.fromOrder(order);
});

final successSummaryProvider =
    Provider.family<Map<String, dynamic>, OrderModel>((ref, order) {
  final successModel = ref.watch(orderSuccessProvider(order));
  if (successModel == null) return {};

  return {
    'orderId': successModel.orderId,
    'trackingId': successModel.trackingId,
    'grandTotal': successModel.grandTotal,
    'savings': successModel.savings,
    'eta': successModel.deliveryETA,
    'itemsCount': successModel.totalItems,
  };
});

/// Architecture Ready: AI ETA Prediction & Delay detection
final aiOrderInsightsProvider =
    Provider.family<String?, OrderModel>((ref, order) {
  // Placeholder for AI logic that analyzes traffic/rider availability
  return "Our AI predicts a faster delivery than usual today!";
});

/// Architecture Ready: Notifications Flow
final orderNotificationProvider = Provider((ref) {
  return OrderNotificationService();
});

class OrderNotificationService {
  void notifyStatusChange(String orderId, OrderStatus newStatus) {
    // Integration with Firebase Messaging for real-time alerts
  }
}
