import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/notifications/domain/repositories/notification_repository.dart';
import 'package:villishop_customer/features/notifications/providers/notification_provider.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';
import 'package:villishop_customer/features/tracking/providers/tracking_provider.dart';
import 'package:villishop_customer/features/tracking/data/models/rider_model.dart';
import 'package:villishop_customer/features/tracking/providers/rider_provider.dart';

class NotificationEngine {
  final NotificationRepository _repository;
  final FirebaseMessaging? _fcm;

  NotificationEngine(this._repository, [this._fcm]) {
    if (_fcm != null) {
      _initFCM();
    }
  }

  Future<void> _initFCM() async {
    if (_fcm == null) return;

    NotificationSettings settings = await _fcm!.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('FCM Authorized');
    }

    // Handle incoming notification taps for routing
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      final orderId = message.data['orderId'];
      if (orderId != null) {
        debugPrint('Navigating to tracking for order: $orderId');
      }
    });

    // Foreground notifications
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Logic for local notification
    });
  }

  void handleRiderUpdate(RiderModel? previous, RiderModel rider) {
    if (rider.distanceToDestinationKm < 0.3 &&
        (previous?.distanceToDestinationKm ?? 1.0) >= 0.3) {
      _showSystemNotification(
        title: 'Partner is arriving!',
        message: '${rider.name} is near your location.',
      );
    }
  }

  void handleStatusChange(
      OrderTrackingModel? previous, OrderTrackingModel next) {
    if (previous != null && next.status != previous.status) {
      String title = '';
      String message = '';

      switch (next.status) {
        case TrackingStatus.orderConfirmed:
          title = 'Order Placed';
          message = 'Confirmed at store.';
          break;
        case TrackingStatus.riderAssigned:
          title = 'Partner Assigned';
          message = '${next.riderName ?? "Rahul"} is reaching store.';
          break;
        case TrackingStatus.onTheWay:
          title = 'Partner on the way';
          message = '${next.riderName ?? "Rahul"} picked up your order.';
          break;
        case TrackingStatus.nearby:
          title = 'Partner is nearby';
          message = '${next.riderName ?? "Rahul"} is almost at your doorstep.';
          break;
        case TrackingStatus.delivered:
          title = 'Delivered';
          message = 'Order successfully received. Rate your partner!';
          break;
        default:
          break;
      }

      if (title.isNotEmpty) {
        _showSystemNotification(title: title, message: message);
      }
    }
  }

  Future<void> _showSystemNotification(
      {required String title, required String message}) async {
    debugPrint('SYSTEM TRAY NOTIFICATION: $title - $message');
  }

  NotificationRepository get repository => _repository;
}

final firebaseMessagingProvider = Provider<FirebaseMessaging?>((ref) {
  try {
    return FirebaseMessaging.instance;
  } catch (e) {
    return null;
  }
});

final notificationEngineProvider = Provider<NotificationEngine>((ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  final fcm = ref.watch(firebaseMessagingProvider);
  final engine = NotificationEngine(repository, fcm);

  ref.listen<AsyncValue<RiderModel>>(riderStreamProvider('mock_rider_id'),
      (previous, next) {
    final rider = next.value;
    if (rider != null) {
      engine.handleRiderUpdate(previous?.value, rider);
    }
  });

  ref.listen<AsyncValue<OrderTrackingModel>>(trackingProvider('active_order'),
      (previous, next) {
    final order = next.value;
    if (order != null) {
      engine.handleStatusChange(previous?.value, order);
    }
  });

  return engine;
});
