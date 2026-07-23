import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_tracking_model.freezed.dart';
part 'order_tracking_model.g.dart';

enum TrackingStatus {
  @JsonValue('order_confirmed')
  orderConfirmed,
  @JsonValue('preparing')
  preparing,
  @JsonValue('rider_assigned')
  riderAssigned,
  @JsonValue('on_the_way')
  onTheWay,
  @JsonValue('nearby')
  nearby,
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

enum DelayReason {
  @JsonValue('none')
  none,
  @JsonValue('traffic')
  traffic,
  @JsonValue('rain')
  heavyRain,
  @JsonValue('festival')
  festivalRush,
  @JsonValue('high_demand')
  highDemand,
  @JsonValue('store_delay')
  storeDelay,
  @JsonValue('vehicle_issue')
  vehicleIssue,
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
    @Default(0) int completedDeliveries,
    String? vehicleType,
    String? vehicleNumber,
    @Default(0.0) double currentSpeedKmph,
    String? polylinePoints,
    String? otp,
    @Default(DeliveryHealth.excellent) DeliveryHealth health,
    @Default(DelayReason.none) DelayReason delayReason,
    @Default(false) bool isReroutingActive,
    @Default(false) bool inCustomerRadius,
    @Default(false) bool isNearbyZoneDelivery,
    String? nearbyZoneName,
    @Default(false) bool isExpress,
    @Default(false) bool isPriority,
    @Default(false) bool isColdChain,
    @Default(false) bool isFragile,
    @Default(false) bool isCOD,
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
