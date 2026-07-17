import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/notifications/data/models/notification_model.dart';
import '../../../features/notifications/domain/repositories/notification_repository.dart';
import '../../../features/notifications/providers/notification_provider.dart';
import '../../utils/logger.dart';

class MockNotificationService {
  final NotificationRepository _repository;

  MockNotificationService(this._repository);

  void triggerMockNotification({
    required String title,
    required String message,
    NotificationCategory category = NotificationCategory.orders,
    String? orderId,
  }) {
    AppLogger.i('Triggering Mock Notification: $title');

    final notification = NotificationModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      message: message,
      timestamp: DateTime.now(),
      category: category,
      orderId: orderId,
    );

    _repository.addNotification(notification);
  }

  void simulateDeliveryFlow(String orderId) {
    Timer(const Duration(seconds: 5), () {
      triggerMockNotification(
        title: 'Partner Assigned',
        message: 'Rahul Singh is on the way to the store.',
        orderId: orderId,
      );
    });

    Timer(const Duration(seconds: 15), () {
      triggerMockNotification(
        title: 'Order Picked Up',
        message: 'Your order has been picked up and is on the way.',
        orderId: orderId,
      );
    });

    Timer(const Duration(seconds: 30), () {
      triggerMockNotification(
        title: 'Order Delivered',
        message: 'Your order has been delivered. Enjoy!',
        orderId: orderId,
      );
    });
  }
}

final mockNotificationServiceProvider =
    Provider<MockNotificationService>((ref) {
  return MockNotificationService(ref.watch(notificationRepositoryProvider));
});
