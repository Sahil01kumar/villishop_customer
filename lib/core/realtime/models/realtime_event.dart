import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime_event.freezed.dart';
part 'realtime_event.g.dart';

@freezed
class RealtimeEvent with _$RealtimeEvent {
  const factory RealtimeEvent.orderCreated({
    required String orderId,
    required Map<String, dynamic> data,
    required DateTime timestamp,
  }) = OrderCreatedEvent;

  const factory RealtimeEvent.orderUpdated({
    required String orderId,
    required String status,
    required DateTime timestamp,
  }) = OrderUpdatedEvent;

  const factory RealtimeEvent.partnerAssigned({
    required String orderId,
    required String partnerId,
    required Map<String, dynamic> partnerData,
    required DateTime timestamp,
  }) = PartnerAssignedEvent;

  const factory RealtimeEvent.partnerLocationChanged({
    required String orderId,
    required double latitude,
    required double longitude,
    required double heading,
    required DateTime timestamp,
  }) = PartnerLocationChangedEvent;

  const factory RealtimeEvent.orderDelivered({
    required String orderId,
    required DateTime timestamp,
  }) = OrderDeliveredEvent;

  const factory RealtimeEvent.orderCancelled({
    required String orderId,
    required String reason,
    required DateTime timestamp,
  }) = OrderCancelledEvent;

  const factory RealtimeEvent.shopStatusChanged({
    required String shopId,
    required bool isOpen,
    required DateTime timestamp,
  }) = ShopStatusChangedEvent;

  const factory RealtimeEvent.notificationReceived({
    required String id,
    required String title,
    required String body,
    required Map<String, dynamic> payload,
    required DateTime timestamp,
  }) = NotificationReceivedEvent;

  const factory RealtimeEvent.supportMessageReceived({
    required String threadId,
    required String messageId,
    required String text,
    required DateTime timestamp,
  }) = SupportMessageReceivedEvent;

  factory RealtimeEvent.fromJson(Map<String, dynamic> json) =>
      _$RealtimeEventFromJson(json);
}
