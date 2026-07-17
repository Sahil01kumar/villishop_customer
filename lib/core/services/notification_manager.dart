import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/notifications/data/models/notification_model.dart';
import '../../features/notifications/domain/repositories/notification_repository.dart';
import '../../features/notifications/providers/notification_provider.dart';
import '../router/notification_router.dart';
import 'notification_service.dart';
import '../utils/logger.dart';

class NotificationManager {
  final NotificationService _service;
  final NotificationRepository _repository;
  final Ref _ref;

  NotificationManager(this._service, this._repository, this._ref);

  Future<void> initialize() async {
    await _service.initialize();

    // Listen for incoming notifications and store them
    _service.messageStream.listen((message) {
      _processRemoteMessage(message);
    });

    // Listen for notification taps
    _service.tapStream.listen((data) {
      _ref.read(notificationRouterProvider).routeTo(data);
    });
  }

  Future<void> _processRemoteMessage(dynamic message) async {
    AppLogger.i('Processing Notification: ${message.notification?.title}');

    final notification = NotificationModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: message.notification?.title ?? 'VilliShop Update',
      message: message.notification?.body ?? 'Tap to see details',
      timestamp: DateTime.now(),
      category: _parseCategory(message.data['category']),
      priority: _parsePriority(message.data['priority']),
      orderId: message.data['orderId'],
      deepLink: message.data['deepLink'],
    );

    await _repository.addNotification(notification);
  }

  NotificationCategory _parseCategory(String? category) {
    switch (category) {
      case 'orders':
        return NotificationCategory.orders;
      case 'offers':
        return NotificationCategory.offers;
      case 'support':
        return NotificationCategory.support;
      default:
        return NotificationCategory.general;
    }
  }

  NotificationPriority _parsePriority(String? priority) {
    switch (priority) {
      case 'high':
        return NotificationPriority.high;
      case 'critical':
        return NotificationPriority.critical;
      default:
        return NotificationPriority.normal;
    }
  }
}

final notificationManagerProvider = Provider<NotificationManager>((ref) {
  return NotificationManager(
    ref.watch(notificationServiceProvider),
    ref.watch(notificationRepositoryProvider),
    ref,
  );
});
