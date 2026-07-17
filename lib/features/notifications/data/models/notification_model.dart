import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

enum NotificationPriority {
  @JsonValue('critical')
  critical,
  @JsonValue('high')
  high,
  @JsonValue('normal')
  normal,
  @JsonValue('low')
  low,
}

enum NotificationCategory {
  @JsonValue('orders')
  orders,
  @JsonValue('offers')
  offers,
  @JsonValue('payments')
  payments,
  @JsonValue('wallet')
  wallet,
  @JsonValue('support')
  support,
  @JsonValue('announcements')
  announcements,
  @JsonValue('general')
  general,
}

enum NotificationActionType {
  @JsonValue('track_order')
  trackOrder,
  @JsonValue('call_rider')
  callRider,
  @JsonValue('chat_rider')
  chatRider,
  @JsonValue('view_offer')
  viewOffers,
  @JsonValue('open_wallet')
  openWallet,
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required String id,
    required String title,
    required String message,
    required DateTime timestamp,
    required NotificationCategory category,
    @Default(NotificationPriority.normal) NotificationPriority priority,
    @Default(false) bool isRead,
    String? orderId,
    String? imageUrl,
    String? deepLink,
    List<NotificationAction>? actions,

    // UI Metadata
    double? progress, // For live order progress in notifications
    String? eta,

    // AI Readiness
    @Default(1.0) double relevanceScore,
    DateTime? scheduledTime, // For AI optimized timing
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class NotificationAction with _$NotificationAction {
  const factory NotificationAction({
    required String label,
    required NotificationActionType actionType,
    String? payload,
  }) = _NotificationAction;

  factory NotificationAction.fromJson(Map<String, dynamic> json) =>
      _$NotificationActionFromJson(json);
}
