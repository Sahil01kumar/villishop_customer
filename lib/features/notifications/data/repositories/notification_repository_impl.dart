import 'dart:async';
import 'dart:convert';
import '../models/notification_model.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../../../core/services/shared_pref_service.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final SharedPreferenceService? _prefs;
  static const String _notificationKey = 'persistent_notifications_v2';
  List<NotificationModel> _notifications = [];
  final _controller = StreamController<List<NotificationModel>>.broadcast();

  NotificationRepositoryImpl([this._prefs]) {
    _loadNotifications();
  }

  Future<void> _loadNotifications() async {
    if (_prefs == null) {
      _initMocks();
      return;
    }
    final jsonStr = _prefs!.getString(_notificationKey);
    if (jsonStr != null) {
      try {
        final List<dynamic> list = jsonDecode(jsonStr);
        _notifications =
            list.map((item) => NotificationModel.fromJson(item)).toList();
      } catch (_) {
        _initMocks();
      }
    } else {
      _initMocks();
    }
    _controller.add(_notifications);
  }

  Future<void> _saveNotifications() async {
    if (_prefs == null) return;
    await _prefs!.setString(_notificationKey,
        jsonEncode(_notifications.map((n) => n.toJson()).toList()));
  }

  void _initMocks() {
    if (_notifications.isNotEmpty) return;
    _notifications.addAll([
      NotificationModel(
        id: '1',
        title: 'Welcome to VilliShop',
        message: 'Your hyperlocal village commerce app is ready.',
        timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
        category: NotificationCategory.announcements,
        priority: NotificationPriority.high,
      ),
    ]);
  }

  @override
  Stream<List<NotificationModel>> getNotificationStream() {
    return _controller.stream;
  }

  @override
  Future<void> addNotification(NotificationModel notification) async {
    _notifications.insert(0, notification);
    _controller.add(_notifications);
    await _saveNotifications();
  }

  @override
  Future<void> markAsRead(String notificationId) async {
    final index = _notifications.indexWhere((n) => n.id == notificationId);
    if (index != -1) {
      _notifications[index] = _notifications[index].copyWith(isRead: true);
      _controller.add(_notifications);
      await _saveNotifications();
    }
  }

  @override
  Future<void> markAllAsRead(NotificationCategory category) async {
    for (int i = 0; i < _notifications.length; i++) {
      if (_notifications[i].category == category) {
        _notifications[i] = _notifications[i].copyWith(isRead: true);
      }
    }
    _controller.add(_notifications);
    await _saveNotifications();
  }

  @override
  Future<void> deleteNotification(String notificationId) async {
    _notifications.removeWhere((n) => n.id == notificationId);
    _controller.add(_notifications);
    await _saveNotifications();
  }

  @override
  Future<void> updatePreferences(Map<String, bool> preferences) async {
    // Sync with backend
  }
}
