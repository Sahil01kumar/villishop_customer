import 'package:villishop_customer/features/notifications/data/models/notification_model.dart';

abstract class NotificationRepository {
  /// Fetches a stream of notifications for real-time updates (FCM/Socket)
  Stream<List<NotificationModel>> getNotificationStream();

  /// Adds a new notification to local/remote storage
  Future<void> addNotification(NotificationModel notification);

  /// Marks a specific notification as read
  Future<void> markAsRead(String notificationId);

  /// Marks all notifications in a category as read
  Future<void> markAllAsRead(NotificationCategory category);

  /// Deletes a notification
  Future<void> deleteNotification(String notificationId);

  /// Saves user notification preferences
  Future<void> updatePreferences(Map<String, bool> preferences);
}
