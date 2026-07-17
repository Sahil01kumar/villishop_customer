import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_tracking_model.freezed.dart';
part 'order_tracking_model.g.dart';

enum TrackingStatus {
  @JsonValue('order_placed')
  orderPlaced,
  @JsonValue('partner_assigned')
  partnerAssigned,
  @JsonValue('live_tracking')
  liveTracking,
  @JsonValue('delivered')
  delivered,
}

enum DeliveryHealth {
  @JsonValue('excellent')
  excellent,
  @JsonValue('moderate')
  moderate,
  @JsonValue('delayed')
  delayed,
}

@freezed
class OrderTrackingModel with _$OrderTrackingModel {
  const factory OrderTrackingModel({
    required String trackingId,
    required String orderId,
    required TrackingStatus status,
    required List<TrackingTimelineItem> timeline,
    required GeoPoint sourceLocation,
    required GeoPoint destinationLocation,
    required String deliveryAddress,
    GeoPoint? currentRiderLocation,
    @Default(0.0) double estimatedDistanceKm,
    @Default(0) int estimatedEtaMinutes,
    String? riderName,
    String? riderPhone,
    String? riderPhoto,
    @Default(4.8) double riderRating,
    String? vehicleNumber,
    String? polylinePoints,
    String? otp,
    @Default(DeliveryHealth.excellent) DeliveryHealth health,
    @Default(false) bool isReroutingActive,
    @Default(false) bool inCustomerRadius,
  }) = _OrderTrackingModel;

  factory OrderTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$OrderTrackingModelFromJson(json);
}

@freezed
class TrackingTimelineItem with _$TrackingTimelineItem {
  const factory TrackingTimelineItem({
    required TrackingStatus status,
    required String title,
    required String description,
    required DateTime timestamp,
    @Default(false) bool isCompleted,
    @Default(false) bool isCurrent,
  }) = _TrackingTimelineItem;

  factory TrackingTimelineItem.fromJson(Map<String, dynamic> json) =>
      _$TrackingTimelineItemFromJson(json);
}

@freezed
class GeoPoint with _$GeoPoint {
  const factory GeoPoint({
    required double latitude,
    required double longitude,
  }) = _GeoPoint;

  factory GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$GeoPointFromJson(json);
}
