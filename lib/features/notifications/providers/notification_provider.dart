import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/notification_service.dart';
import '../data/models/notification_model.dart';
import '../domain/repositories/notification_repository.dart';
import '../data/repositories/notification_repository_impl.dart';

import '../../../core/services/shared_pref_service.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepositoryImpl(
      ref.watch(sharedPreferencesServiceProvider));
});

/// Stream of all notifications from the repository
final notificationHistoryProvider =
    StreamProvider<List<NotificationModel>>((ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return repository.getNotificationStream();
});

/// Current notification badge count (unread)
final notificationBadgeProvider = Provider<int>((ref) {
  final notifications = ref.watch(notificationHistoryProvider).value ?? [];
  return notifications.where((n) => !n.isRead).length;
});

/// Current notification permission status
final notificationPermissionProvider =
    FutureProvider<NotificationSettings>((ref) async {
  return await ref.watch(notificationServiceProvider).requestPermission();
});

final categoryFilterProvider =
    StateProvider<NotificationCategory?>((ref) => null);

final filteredNotificationsProvider = Provider<List<NotificationModel>>((ref) {
  final notifications = ref.watch(notificationHistoryProvider).value ?? [];
  final filter = ref.watch(categoryFilterProvider);

  if (filter == null) return notifications;
  return notifications.where((n) => n.category == filter).toList();
});

class NotificationNotifier extends StateNotifier<List<NotificationModel>> {
  final NotificationRepository _repository;

  NotificationNotifier(this._repository) : super([]);

  Future<void> markAsRead(String id) async => await _repository.markAsRead(id);
  Future<void> markAllAsRead(NotificationCategory category) async =>
      await _repository.markAllAsRead(category);
  Future<void> delete(String id) async =>
      await _repository.deleteNotification(id);
}

/// Global notification provider for handling active notifications
final notificationProvider = Provider<NotificationNotifier>((ref) {
  return NotificationNotifier(ref.watch(notificationRepositoryProvider));
});
