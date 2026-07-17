import 'package:freezed_annotation/freezed_annotation.dart';
import 'order_tracking_model.dart';

part 'rider_model.freezed.dart';
part 'rider_model.g.dart';

enum RiderActivityStatus {
  @JsonValue('assigned')
  assigned,
  @JsonValue('heading_to_store')
  headingToStore,
  @JsonValue('waiting_at_store')
  waitingAtStore,
  @JsonValue('picking_items')
  pickingItems,
  @JsonValue('leaving_store')
  leavingStore,
  @JsonValue('on_the_way')
  onTheWay,
  @JsonValue('near_you')
  nearYou,
  @JsonValue('arrived')
  arrived,
  @JsonValue('delivered')
  delivered,
}

@freezed
class RiderModel with _$RiderModel {
  const factory RiderModel({
    required String id,
    required String name,
    required String photoUrl,
    required double rating,
    required int completedDeliveries,
    required String vehicleNumber,
    required String vehicleType,
    required GeoPoint currentLocation,
    required double heading,
    required double currentSpeedKmph,
    required RiderActivityStatus status,
    @Default(100) int batteryPercentage,
    @Default('Excellent') String networkQuality,
    @Default(0.0) double distanceToDestinationKm,
    @Default(0) int etaToDestinationMinutes,

    // Task 5: Premium Profile Fields
    @Default(2.5) double experienceYears,
    @Default(true) bool isHelmetVerified,
    @Default(true) bool isIdentityVerified,
    @Default(true) bool isPoliceVerified,
    @Default(true) bool isBackgroundVerified,
    @Default('VS-PARTNER-1024') String partnerId,
    @Default(14) int todayDeliveries,
    @Default(98.5) double acceptanceRate,
    @Default(18) int avgDeliveryTimeMinutes,
    DateTime? lastActive,
    @Default('Day Shift') String currentShift,
    @Default('Electric') String vehicleFuelType,
    @Default(true) bool isEV,
    String? safetyMessage,
    @Default(true) bool handleWithCare,
    @Default(false) bool temperatureControlled,

    // Task 8: Optimization & Telemetry
    @Default(22.5) double averageSpeedKmph,
    @Default(0) int idleTimeSeconds,
    @Default(1200) int movingTimeSeconds,
    @Default(0) int pausedTimeSeconds,
    @Default(5.0) double gpsAccuracyMeters,
    @Default('4G+') String internetQuality,
    @Default(0) int locationFreshnessMs,

    // AI Insights Preparation
    @Default(1.0) double trafficScore,
    @Default('Good') String roadQuality,
    @Default('Clear') String weatherStatus,
    @Default(false) bool isDelayed,
    @Default(9.8) double aiRiderScore,
    @Default(9.9) double aiSafetyScore,
    @Default('Professional') String aiDrivingBehaviour,
    @Default(false) bool aiFatigueDetected,
    @Default(0.98) double aiDeliveryConfidence,
  }) = _RiderModel;

  factory RiderModel.fromJson(Map<String, dynamic> json) =>
      _$RiderModelFromJson(json);
}
