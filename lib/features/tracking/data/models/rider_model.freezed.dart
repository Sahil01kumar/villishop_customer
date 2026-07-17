// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RiderModel _$RiderModelFromJson(Map<String, dynamic> json) {
  return _RiderModel.fromJson(json);
}

/// @nodoc
mixin _$RiderModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get completedDeliveries => throw _privateConstructorUsedError;
  String get vehicleNumber => throw _privateConstructorUsedError;
  String get vehicleType => throw _privateConstructorUsedError;
  GeoPoint get currentLocation => throw _privateConstructorUsedError;
  double get heading => throw _privateConstructorUsedError;
  double get currentSpeedKmph => throw _privateConstructorUsedError;
  RiderActivityStatus get status => throw _privateConstructorUsedError;
  int get batteryPercentage => throw _privateConstructorUsedError;
  String get networkQuality => throw _privateConstructorUsedError;
  double get distanceToDestinationKm => throw _privateConstructorUsedError;
  int get etaToDestinationMinutes =>
      throw _privateConstructorUsedError; // Task 5: Premium Profile Fields
  double get experienceYears => throw _privateConstructorUsedError;
  bool get isHelmetVerified => throw _privateConstructorUsedError;
  bool get isIdentityVerified => throw _privateConstructorUsedError;
  bool get isPoliceVerified => throw _privateConstructorUsedError;
  bool get isBackgroundVerified => throw _privateConstructorUsedError;
  String get partnerId => throw _privateConstructorUsedError;
  int get todayDeliveries => throw _privateConstructorUsedError;
  double get acceptanceRate => throw _privateConstructorUsedError;
  int get avgDeliveryTimeMinutes => throw _privateConstructorUsedError;
  DateTime? get lastActive => throw _privateConstructorUsedError;
  String get currentShift => throw _privateConstructorUsedError;
  String get vehicleFuelType => throw _privateConstructorUsedError;
  bool get isEV => throw _privateConstructorUsedError;
  String? get safetyMessage => throw _privateConstructorUsedError;
  bool get handleWithCare => throw _privateConstructorUsedError;
  bool get temperatureControlled =>
      throw _privateConstructorUsedError; // Task 8: Optimization & Telemetry
  double get averageSpeedKmph => throw _privateConstructorUsedError;
  int get idleTimeSeconds => throw _privateConstructorUsedError;
  int get movingTimeSeconds => throw _privateConstructorUsedError;
  int get pausedTimeSeconds => throw _privateConstructorUsedError;
  double get gpsAccuracyMeters => throw _privateConstructorUsedError;
  String get internetQuality => throw _privateConstructorUsedError;
  int get locationFreshnessMs =>
      throw _privateConstructorUsedError; // AI Insights Preparation
  double get trafficScore => throw _privateConstructorUsedError;
  String get roadQuality => throw _privateConstructorUsedError;
  String get weatherStatus => throw _privateConstructorUsedError;
  bool get isDelayed => throw _privateConstructorUsedError;
  double get aiRiderScore => throw _privateConstructorUsedError;
  double get aiSafetyScore => throw _privateConstructorUsedError;
  String get aiDrivingBehaviour => throw _privateConstructorUsedError;
  bool get aiFatigueDetected => throw _privateConstructorUsedError;
  double get aiDeliveryConfidence => throw _privateConstructorUsedError;

  /// Serializes this RiderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderModelCopyWith<RiderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderModelCopyWith<$Res> {
  factory $RiderModelCopyWith(
          RiderModel value, $Res Function(RiderModel) then) =
      _$RiderModelCopyWithImpl<$Res, RiderModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String photoUrl,
      double rating,
      int completedDeliveries,
      String vehicleNumber,
      String vehicleType,
      GeoPoint currentLocation,
      double heading,
      double currentSpeedKmph,
      RiderActivityStatus status,
      int batteryPercentage,
      String networkQuality,
      double distanceToDestinationKm,
      int etaToDestinationMinutes,
      double experienceYears,
      bool isHelmetVerified,
      bool isIdentityVerified,
      bool isPoliceVerified,
      bool isBackgroundVerified,
      String partnerId,
      int todayDeliveries,
      double acceptanceRate,
      int avgDeliveryTimeMinutes,
      DateTime? lastActive,
      String currentShift,
      String vehicleFuelType,
      bool isEV,
      String? safetyMessage,
      bool handleWithCare,
      bool temperatureControlled,
      double averageSpeedKmph,
      int idleTimeSeconds,
      int movingTimeSeconds,
      int pausedTimeSeconds,
      double gpsAccuracyMeters,
      String internetQuality,
      int locationFreshnessMs,
      double trafficScore,
      String roadQuality,
      String weatherStatus,
      bool isDelayed,
      double aiRiderScore,
      double aiSafetyScore,
      String aiDrivingBehaviour,
      bool aiFatigueDetected,
      double aiDeliveryConfidence});

  $GeoPointCopyWith<$Res> get currentLocation;
}

/// @nodoc
class _$RiderModelCopyWithImpl<$Res, $Val extends RiderModel>
    implements $RiderModelCopyWith<$Res> {
  _$RiderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? rating = null,
    Object? completedDeliveries = null,
    Object? vehicleNumber = null,
    Object? vehicleType = null,
    Object? currentLocation = null,
    Object? heading = null,
    Object? currentSpeedKmph = null,
    Object? status = null,
    Object? batteryPercentage = null,
    Object? networkQuality = null,
    Object? distanceToDestinationKm = null,
    Object? etaToDestinationMinutes = null,
    Object? experienceYears = null,
    Object? isHelmetVerified = null,
    Object? isIdentityVerified = null,
    Object? isPoliceVerified = null,
    Object? isBackgroundVerified = null,
    Object? partnerId = null,
    Object? todayDeliveries = null,
    Object? acceptanceRate = null,
    Object? avgDeliveryTimeMinutes = null,
    Object? lastActive = freezed,
    Object? currentShift = null,
    Object? vehicleFuelType = null,
    Object? isEV = null,
    Object? safetyMessage = freezed,
    Object? handleWithCare = null,
    Object? temperatureControlled = null,
    Object? averageSpeedKmph = null,
    Object? idleTimeSeconds = null,
    Object? movingTimeSeconds = null,
    Object? pausedTimeSeconds = null,
    Object? gpsAccuracyMeters = null,
    Object? internetQuality = null,
    Object? locationFreshnessMs = null,
    Object? trafficScore = null,
    Object? roadQuality = null,
    Object? weatherStatus = null,
    Object? isDelayed = null,
    Object? aiRiderScore = null,
    Object? aiSafetyScore = null,
    Object? aiDrivingBehaviour = null,
    Object? aiFatigueDetected = null,
    Object? aiDeliveryConfidence = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      completedDeliveries: null == completedDeliveries
          ? _value.completedDeliveries
          : completedDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
      currentSpeedKmph: null == currentSpeedKmph
          ? _value.currentSpeedKmph
          : currentSpeedKmph // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RiderActivityStatus,
      batteryPercentage: null == batteryPercentage
          ? _value.batteryPercentage
          : batteryPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      networkQuality: null == networkQuality
          ? _value.networkQuality
          : networkQuality // ignore: cast_nullable_to_non_nullable
              as String,
      distanceToDestinationKm: null == distanceToDestinationKm
          ? _value.distanceToDestinationKm
          : distanceToDestinationKm // ignore: cast_nullable_to_non_nullable
              as double,
      etaToDestinationMinutes: null == etaToDestinationMinutes
          ? _value.etaToDestinationMinutes
          : etaToDestinationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      experienceYears: null == experienceYears
          ? _value.experienceYears
          : experienceYears // ignore: cast_nullable_to_non_nullable
              as double,
      isHelmetVerified: null == isHelmetVerified
          ? _value.isHelmetVerified
          : isHelmetVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isIdentityVerified: null == isIdentityVerified
          ? _value.isIdentityVerified
          : isIdentityVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isPoliceVerified: null == isPoliceVerified
          ? _value.isPoliceVerified
          : isPoliceVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isBackgroundVerified: null == isBackgroundVerified
          ? _value.isBackgroundVerified
          : isBackgroundVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      todayDeliveries: null == todayDeliveries
          ? _value.todayDeliveries
          : todayDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      acceptanceRate: null == acceptanceRate
          ? _value.acceptanceRate
          : acceptanceRate // ignore: cast_nullable_to_non_nullable
              as double,
      avgDeliveryTimeMinutes: null == avgDeliveryTimeMinutes
          ? _value.avgDeliveryTimeMinutes
          : avgDeliveryTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentShift: null == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleFuelType: null == vehicleFuelType
          ? _value.vehicleFuelType
          : vehicleFuelType // ignore: cast_nullable_to_non_nullable
              as String,
      isEV: null == isEV
          ? _value.isEV
          : isEV // ignore: cast_nullable_to_non_nullable
              as bool,
      safetyMessage: freezed == safetyMessage
          ? _value.safetyMessage
          : safetyMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      handleWithCare: null == handleWithCare
          ? _value.handleWithCare
          : handleWithCare // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureControlled: null == temperatureControlled
          ? _value.temperatureControlled
          : temperatureControlled // ignore: cast_nullable_to_non_nullable
              as bool,
      averageSpeedKmph: null == averageSpeedKmph
          ? _value.averageSpeedKmph
          : averageSpeedKmph // ignore: cast_nullable_to_non_nullable
              as double,
      idleTimeSeconds: null == idleTimeSeconds
          ? _value.idleTimeSeconds
          : idleTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      movingTimeSeconds: null == movingTimeSeconds
          ? _value.movingTimeSeconds
          : movingTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      pausedTimeSeconds: null == pausedTimeSeconds
          ? _value.pausedTimeSeconds
          : pausedTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      gpsAccuracyMeters: null == gpsAccuracyMeters
          ? _value.gpsAccuracyMeters
          : gpsAccuracyMeters // ignore: cast_nullable_to_non_nullable
              as double,
      internetQuality: null == internetQuality
          ? _value.internetQuality
          : internetQuality // ignore: cast_nullable_to_non_nullable
              as String,
      locationFreshnessMs: null == locationFreshnessMs
          ? _value.locationFreshnessMs
          : locationFreshnessMs // ignore: cast_nullable_to_non_nullable
              as int,
      trafficScore: null == trafficScore
          ? _value.trafficScore
          : trafficScore // ignore: cast_nullable_to_non_nullable
              as double,
      roadQuality: null == roadQuality
          ? _value.roadQuality
          : roadQuality // ignore: cast_nullable_to_non_nullable
              as String,
      weatherStatus: null == weatherStatus
          ? _value.weatherStatus
          : weatherStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isDelayed: null == isDelayed
          ? _value.isDelayed
          : isDelayed // ignore: cast_nullable_to_non_nullable
              as bool,
      aiRiderScore: null == aiRiderScore
          ? _value.aiRiderScore
          : aiRiderScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiSafetyScore: null == aiSafetyScore
          ? _value.aiSafetyScore
          : aiSafetyScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiDrivingBehaviour: null == aiDrivingBehaviour
          ? _value.aiDrivingBehaviour
          : aiDrivingBehaviour // ignore: cast_nullable_to_non_nullable
              as String,
      aiFatigueDetected: null == aiFatigueDetected
          ? _value.aiFatigueDetected
          : aiFatigueDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      aiDeliveryConfidence: null == aiDeliveryConfidence
          ? _value.aiDeliveryConfidence
          : aiDeliveryConfidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoPointCopyWith<$Res> get currentLocation {
    return $GeoPointCopyWith<$Res>(_value.currentLocation, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RiderModelImplCopyWith<$Res>
    implements $RiderModelCopyWith<$Res> {
  factory _$$RiderModelImplCopyWith(
          _$RiderModelImpl value, $Res Function(_$RiderModelImpl) then) =
      __$$RiderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String photoUrl,
      double rating,
      int completedDeliveries,
      String vehicleNumber,
      String vehicleType,
      GeoPoint currentLocation,
      double heading,
      double currentSpeedKmph,
      RiderActivityStatus status,
      int batteryPercentage,
      String networkQuality,
      double distanceToDestinationKm,
      int etaToDestinationMinutes,
      double experienceYears,
      bool isHelmetVerified,
      bool isIdentityVerified,
      bool isPoliceVerified,
      bool isBackgroundVerified,
      String partnerId,
      int todayDeliveries,
      double acceptanceRate,
      int avgDeliveryTimeMinutes,
      DateTime? lastActive,
      String currentShift,
      String vehicleFuelType,
      bool isEV,
      String? safetyMessage,
      bool handleWithCare,
      bool temperatureControlled,
      double averageSpeedKmph,
      int idleTimeSeconds,
      int movingTimeSeconds,
      int pausedTimeSeconds,
      double gpsAccuracyMeters,
      String internetQuality,
      int locationFreshnessMs,
      double trafficScore,
      String roadQuality,
      String weatherStatus,
      bool isDelayed,
      double aiRiderScore,
      double aiSafetyScore,
      String aiDrivingBehaviour,
      bool aiFatigueDetected,
      double aiDeliveryConfidence});

  @override
  $GeoPointCopyWith<$Res> get currentLocation;
}

/// @nodoc
class __$$RiderModelImplCopyWithImpl<$Res>
    extends _$RiderModelCopyWithImpl<$Res, _$RiderModelImpl>
    implements _$$RiderModelImplCopyWith<$Res> {
  __$$RiderModelImplCopyWithImpl(
      _$RiderModelImpl _value, $Res Function(_$RiderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? rating = null,
    Object? completedDeliveries = null,
    Object? vehicleNumber = null,
    Object? vehicleType = null,
    Object? currentLocation = null,
    Object? heading = null,
    Object? currentSpeedKmph = null,
    Object? status = null,
    Object? batteryPercentage = null,
    Object? networkQuality = null,
    Object? distanceToDestinationKm = null,
    Object? etaToDestinationMinutes = null,
    Object? experienceYears = null,
    Object? isHelmetVerified = null,
    Object? isIdentityVerified = null,
    Object? isPoliceVerified = null,
    Object? isBackgroundVerified = null,
    Object? partnerId = null,
    Object? todayDeliveries = null,
    Object? acceptanceRate = null,
    Object? avgDeliveryTimeMinutes = null,
    Object? lastActive = freezed,
    Object? currentShift = null,
    Object? vehicleFuelType = null,
    Object? isEV = null,
    Object? safetyMessage = freezed,
    Object? handleWithCare = null,
    Object? temperatureControlled = null,
    Object? averageSpeedKmph = null,
    Object? idleTimeSeconds = null,
    Object? movingTimeSeconds = null,
    Object? pausedTimeSeconds = null,
    Object? gpsAccuracyMeters = null,
    Object? internetQuality = null,
    Object? locationFreshnessMs = null,
    Object? trafficScore = null,
    Object? roadQuality = null,
    Object? weatherStatus = null,
    Object? isDelayed = null,
    Object? aiRiderScore = null,
    Object? aiSafetyScore = null,
    Object? aiDrivingBehaviour = null,
    Object? aiFatigueDetected = null,
    Object? aiDeliveryConfidence = null,
  }) {
    return _then(_$RiderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      completedDeliveries: null == completedDeliveries
          ? _value.completedDeliveries
          : completedDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
      currentSpeedKmph: null == currentSpeedKmph
          ? _value.currentSpeedKmph
          : currentSpeedKmph // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RiderActivityStatus,
      batteryPercentage: null == batteryPercentage
          ? _value.batteryPercentage
          : batteryPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      networkQuality: null == networkQuality
          ? _value.networkQuality
          : networkQuality // ignore: cast_nullable_to_non_nullable
              as String,
      distanceToDestinationKm: null == distanceToDestinationKm
          ? _value.distanceToDestinationKm
          : distanceToDestinationKm // ignore: cast_nullable_to_non_nullable
              as double,
      etaToDestinationMinutes: null == etaToDestinationMinutes
          ? _value.etaToDestinationMinutes
          : etaToDestinationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      experienceYears: null == experienceYears
          ? _value.experienceYears
          : experienceYears // ignore: cast_nullable_to_non_nullable
              as double,
      isHelmetVerified: null == isHelmetVerified
          ? _value.isHelmetVerified
          : isHelmetVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isIdentityVerified: null == isIdentityVerified
          ? _value.isIdentityVerified
          : isIdentityVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isPoliceVerified: null == isPoliceVerified
          ? _value.isPoliceVerified
          : isPoliceVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isBackgroundVerified: null == isBackgroundVerified
          ? _value.isBackgroundVerified
          : isBackgroundVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      todayDeliveries: null == todayDeliveries
          ? _value.todayDeliveries
          : todayDeliveries // ignore: cast_nullable_to_non_nullable
              as int,
      acceptanceRate: null == acceptanceRate
          ? _value.acceptanceRate
          : acceptanceRate // ignore: cast_nullable_to_non_nullable
              as double,
      avgDeliveryTimeMinutes: null == avgDeliveryTimeMinutes
          ? _value.avgDeliveryTimeMinutes
          : avgDeliveryTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentShift: null == currentShift
          ? _value.currentShift
          : currentShift // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleFuelType: null == vehicleFuelType
          ? _value.vehicleFuelType
          : vehicleFuelType // ignore: cast_nullable_to_non_nullable
              as String,
      isEV: null == isEV
          ? _value.isEV
          : isEV // ignore: cast_nullable_to_non_nullable
              as bool,
      safetyMessage: freezed == safetyMessage
          ? _value.safetyMessage
          : safetyMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      handleWithCare: null == handleWithCare
          ? _value.handleWithCare
          : handleWithCare // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureControlled: null == temperatureControlled
          ? _value.temperatureControlled
          : temperatureControlled // ignore: cast_nullable_to_non_nullable
              as bool,
      averageSpeedKmph: null == averageSpeedKmph
          ? _value.averageSpeedKmph
          : averageSpeedKmph // ignore: cast_nullable_to_non_nullable
              as double,
      idleTimeSeconds: null == idleTimeSeconds
          ? _value.idleTimeSeconds
          : idleTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      movingTimeSeconds: null == movingTimeSeconds
          ? _value.movingTimeSeconds
          : movingTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      pausedTimeSeconds: null == pausedTimeSeconds
          ? _value.pausedTimeSeconds
          : pausedTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      gpsAccuracyMeters: null == gpsAccuracyMeters
          ? _value.gpsAccuracyMeters
          : gpsAccuracyMeters // ignore: cast_nullable_to_non_nullable
              as double,
      internetQuality: null == internetQuality
          ? _value.internetQuality
          : internetQuality // ignore: cast_nullable_to_non_nullable
              as String,
      locationFreshnessMs: null == locationFreshnessMs
          ? _value.locationFreshnessMs
          : locationFreshnessMs // ignore: cast_nullable_to_non_nullable
              as int,
      trafficScore: null == trafficScore
          ? _value.trafficScore
          : trafficScore // ignore: cast_nullable_to_non_nullable
              as double,
      roadQuality: null == roadQuality
          ? _value.roadQuality
          : roadQuality // ignore: cast_nullable_to_non_nullable
              as String,
      weatherStatus: null == weatherStatus
          ? _value.weatherStatus
          : weatherStatus // ignore: cast_nullable_to_non_nullable
              as String,
      isDelayed: null == isDelayed
          ? _value.isDelayed
          : isDelayed // ignore: cast_nullable_to_non_nullable
              as bool,
      aiRiderScore: null == aiRiderScore
          ? _value.aiRiderScore
          : aiRiderScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiSafetyScore: null == aiSafetyScore
          ? _value.aiSafetyScore
          : aiSafetyScore // ignore: cast_nullable_to_non_nullable
              as double,
      aiDrivingBehaviour: null == aiDrivingBehaviour
          ? _value.aiDrivingBehaviour
          : aiDrivingBehaviour // ignore: cast_nullable_to_non_nullable
              as String,
      aiFatigueDetected: null == aiFatigueDetected
          ? _value.aiFatigueDetected
          : aiFatigueDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      aiDeliveryConfidence: null == aiDeliveryConfidence
          ? _value.aiDeliveryConfidence
          : aiDeliveryConfidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiderModelImpl implements _RiderModel {
  const _$RiderModelImpl(
      {required this.id,
      required this.name,
      required this.photoUrl,
      required this.rating,
      required this.completedDeliveries,
      required this.vehicleNumber,
      required this.vehicleType,
      required this.currentLocation,
      required this.heading,
      required this.currentSpeedKmph,
      required this.status,
      this.batteryPercentage = 100,
      this.networkQuality = 'Excellent',
      this.distanceToDestinationKm = 0.0,
      this.etaToDestinationMinutes = 0,
      this.experienceYears = 2.5,
      this.isHelmetVerified = true,
      this.isIdentityVerified = true,
      this.isPoliceVerified = true,
      this.isBackgroundVerified = true,
      this.partnerId = 'VS-PARTNER-1024',
      this.todayDeliveries = 14,
      this.acceptanceRate = 98.5,
      this.avgDeliveryTimeMinutes = 18,
      this.lastActive,
      this.currentShift = 'Day Shift',
      this.vehicleFuelType = 'Electric',
      this.isEV = true,
      this.safetyMessage,
      this.handleWithCare = true,
      this.temperatureControlled = false,
      this.averageSpeedKmph = 22.5,
      this.idleTimeSeconds = 0,
      this.movingTimeSeconds = 1200,
      this.pausedTimeSeconds = 0,
      this.gpsAccuracyMeters = 5.0,
      this.internetQuality = '4G+',
      this.locationFreshnessMs = 0,
      this.trafficScore = 1.0,
      this.roadQuality = 'Good',
      this.weatherStatus = 'Clear',
      this.isDelayed = false,
      this.aiRiderScore = 9.8,
      this.aiSafetyScore = 9.9,
      this.aiDrivingBehaviour = 'Professional',
      this.aiFatigueDetected = false,
      this.aiDeliveryConfidence = 0.98});

  factory _$RiderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiderModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  final double rating;
  @override
  final int completedDeliveries;
  @override
  final String vehicleNumber;
  @override
  final String vehicleType;
  @override
  final GeoPoint currentLocation;
  @override
  final double heading;
  @override
  final double currentSpeedKmph;
  @override
  final RiderActivityStatus status;
  @override
  @JsonKey()
  final int batteryPercentage;
  @override
  @JsonKey()
  final String networkQuality;
  @override
  @JsonKey()
  final double distanceToDestinationKm;
  @override
  @JsonKey()
  final int etaToDestinationMinutes;
// Task 5: Premium Profile Fields
  @override
  @JsonKey()
  final double experienceYears;
  @override
  @JsonKey()
  final bool isHelmetVerified;
  @override
  @JsonKey()
  final bool isIdentityVerified;
  @override
  @JsonKey()
  final bool isPoliceVerified;
  @override
  @JsonKey()
  final bool isBackgroundVerified;
  @override
  @JsonKey()
  final String partnerId;
  @override
  @JsonKey()
  final int todayDeliveries;
  @override
  @JsonKey()
  final double acceptanceRate;
  @override
  @JsonKey()
  final int avgDeliveryTimeMinutes;
  @override
  final DateTime? lastActive;
  @override
  @JsonKey()
  final String currentShift;
  @override
  @JsonKey()
  final String vehicleFuelType;
  @override
  @JsonKey()
  final bool isEV;
  @override
  final String? safetyMessage;
  @override
  @JsonKey()
  final bool handleWithCare;
  @override
  @JsonKey()
  final bool temperatureControlled;
// Task 8: Optimization & Telemetry
  @override
  @JsonKey()
  final double averageSpeedKmph;
  @override
  @JsonKey()
  final int idleTimeSeconds;
  @override
  @JsonKey()
  final int movingTimeSeconds;
  @override
  @JsonKey()
  final int pausedTimeSeconds;
  @override
  @JsonKey()
  final double gpsAccuracyMeters;
  @override
  @JsonKey()
  final String internetQuality;
  @override
  @JsonKey()
  final int locationFreshnessMs;
// AI Insights Preparation
  @override
  @JsonKey()
  final double trafficScore;
  @override
  @JsonKey()
  final String roadQuality;
  @override
  @JsonKey()
  final String weatherStatus;
  @override
  @JsonKey()
  final bool isDelayed;
  @override
  @JsonKey()
  final double aiRiderScore;
  @override
  @JsonKey()
  final double aiSafetyScore;
  @override
  @JsonKey()
  final String aiDrivingBehaviour;
  @override
  @JsonKey()
  final bool aiFatigueDetected;
  @override
  @JsonKey()
  final double aiDeliveryConfidence;

  @override
  String toString() {
    return 'RiderModel(id: $id, name: $name, photoUrl: $photoUrl, rating: $rating, completedDeliveries: $completedDeliveries, vehicleNumber: $vehicleNumber, vehicleType: $vehicleType, currentLocation: $currentLocation, heading: $heading, currentSpeedKmph: $currentSpeedKmph, status: $status, batteryPercentage: $batteryPercentage, networkQuality: $networkQuality, distanceToDestinationKm: $distanceToDestinationKm, etaToDestinationMinutes: $etaToDestinationMinutes, experienceYears: $experienceYears, isHelmetVerified: $isHelmetVerified, isIdentityVerified: $isIdentityVerified, isPoliceVerified: $isPoliceVerified, isBackgroundVerified: $isBackgroundVerified, partnerId: $partnerId, todayDeliveries: $todayDeliveries, acceptanceRate: $acceptanceRate, avgDeliveryTimeMinutes: $avgDeliveryTimeMinutes, lastActive: $lastActive, currentShift: $currentShift, vehicleFuelType: $vehicleFuelType, isEV: $isEV, safetyMessage: $safetyMessage, handleWithCare: $handleWithCare, temperatureControlled: $temperatureControlled, averageSpeedKmph: $averageSpeedKmph, idleTimeSeconds: $idleTimeSeconds, movingTimeSeconds: $movingTimeSeconds, pausedTimeSeconds: $pausedTimeSeconds, gpsAccuracyMeters: $gpsAccuracyMeters, internetQuality: $internetQuality, locationFreshnessMs: $locationFreshnessMs, trafficScore: $trafficScore, roadQuality: $roadQuality, weatherStatus: $weatherStatus, isDelayed: $isDelayed, aiRiderScore: $aiRiderScore, aiSafetyScore: $aiSafetyScore, aiDrivingBehaviour: $aiDrivingBehaviour, aiFatigueDetected: $aiFatigueDetected, aiDeliveryConfidence: $aiDeliveryConfidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.completedDeliveries, completedDeliveries) ||
                other.completedDeliveries == completedDeliveries) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.currentSpeedKmph, currentSpeedKmph) ||
                other.currentSpeedKmph == currentSpeedKmph) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.batteryPercentage, batteryPercentage) ||
                other.batteryPercentage == batteryPercentage) &&
            (identical(other.networkQuality, networkQuality) ||
                other.networkQuality == networkQuality) &&
            (identical(other.distanceToDestinationKm, distanceToDestinationKm) ||
                other.distanceToDestinationKm == distanceToDestinationKm) &&
            (identical(other.etaToDestinationMinutes, etaToDestinationMinutes) ||
                other.etaToDestinationMinutes == etaToDestinationMinutes) &&
            (identical(other.experienceYears, experienceYears) ||
                other.experienceYears == experienceYears) &&
            (identical(other.isHelmetVerified, isHelmetVerified) ||
                other.isHelmetVerified == isHelmetVerified) &&
            (identical(other.isIdentityVerified, isIdentityVerified) ||
                other.isIdentityVerified == isIdentityVerified) &&
            (identical(other.isPoliceVerified, isPoliceVerified) ||
                other.isPoliceVerified == isPoliceVerified) &&
            (identical(other.isBackgroundVerified, isBackgroundVerified) ||
                other.isBackgroundVerified == isBackgroundVerified) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.todayDeliveries, todayDeliveries) ||
                other.todayDeliveries == todayDeliveries) &&
            (identical(other.acceptanceRate, acceptanceRate) ||
                other.acceptanceRate == acceptanceRate) &&
            (identical(other.avgDeliveryTimeMinutes, avgDeliveryTimeMinutes) ||
                other.avgDeliveryTimeMinutes == avgDeliveryTimeMinutes) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.currentShift, currentShift) ||
                other.currentShift == currentShift) &&
            (identical(other.vehicleFuelType, vehicleFuelType) ||
                other.vehicleFuelType == vehicleFuelType) &&
            (identical(other.isEV, isEV) || other.isEV == isEV) &&
            (identical(other.safetyMessage, safetyMessage) ||
                other.safetyMessage == safetyMessage) &&
            (identical(other.handleWithCare, handleWithCare) ||
                other.handleWithCare == handleWithCare) &&
            (identical(other.temperatureControlled, temperatureControlled) ||
                other.temperatureControlled == temperatureControlled) &&
            (identical(other.averageSpeedKmph, averageSpeedKmph) ||
                other.averageSpeedKmph == averageSpeedKmph) &&
            (identical(other.idleTimeSeconds, idleTimeSeconds) ||
                other.idleTimeSeconds == idleTimeSeconds) &&
            (identical(other.movingTimeSeconds, movingTimeSeconds) ||
                other.movingTimeSeconds == movingTimeSeconds) &&
            (identical(other.pausedTimeSeconds, pausedTimeSeconds) ||
                other.pausedTimeSeconds == pausedTimeSeconds) &&
            (identical(other.gpsAccuracyMeters, gpsAccuracyMeters) ||
                other.gpsAccuracyMeters == gpsAccuracyMeters) &&
            (identical(other.internetQuality, internetQuality) ||
                other.internetQuality == internetQuality) &&
            (identical(other.locationFreshnessMs, locationFreshnessMs) || other.locationFreshnessMs == locationFreshnessMs) &&
            (identical(other.trafficScore, trafficScore) || other.trafficScore == trafficScore) &&
            (identical(other.roadQuality, roadQuality) || other.roadQuality == roadQuality) &&
            (identical(other.weatherStatus, weatherStatus) || other.weatherStatus == weatherStatus) &&
            (identical(other.isDelayed, isDelayed) || other.isDelayed == isDelayed) &&
            (identical(other.aiRiderScore, aiRiderScore) || other.aiRiderScore == aiRiderScore) &&
            (identical(other.aiSafetyScore, aiSafetyScore) || other.aiSafetyScore == aiSafetyScore) &&
            (identical(other.aiDrivingBehaviour, aiDrivingBehaviour) || other.aiDrivingBehaviour == aiDrivingBehaviour) &&
            (identical(other.aiFatigueDetected, aiFatigueDetected) || other.aiFatigueDetected == aiFatigueDetected) &&
            (identical(other.aiDeliveryConfidence, aiDeliveryConfidence) || other.aiDeliveryConfidence == aiDeliveryConfidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        photoUrl,
        rating,
        completedDeliveries,
        vehicleNumber,
        vehicleType,
        currentLocation,
        heading,
        currentSpeedKmph,
        status,
        batteryPercentage,
        networkQuality,
        distanceToDestinationKm,
        etaToDestinationMinutes,
        experienceYears,
        isHelmetVerified,
        isIdentityVerified,
        isPoliceVerified,
        isBackgroundVerified,
        partnerId,
        todayDeliveries,
        acceptanceRate,
        avgDeliveryTimeMinutes,
        lastActive,
        currentShift,
        vehicleFuelType,
        isEV,
        safetyMessage,
        handleWithCare,
        temperatureControlled,
        averageSpeedKmph,
        idleTimeSeconds,
        movingTimeSeconds,
        pausedTimeSeconds,
        gpsAccuracyMeters,
        internetQuality,
        locationFreshnessMs,
        trafficScore,
        roadQuality,
        weatherStatus,
        isDelayed,
        aiRiderScore,
        aiSafetyScore,
        aiDrivingBehaviour,
        aiFatigueDetected,
        aiDeliveryConfidence
      ]);

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderModelImplCopyWith<_$RiderModelImpl> get copyWith =>
      __$$RiderModelImplCopyWithImpl<_$RiderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiderModelImplToJson(
      this,
    );
  }
}

abstract class _RiderModel implements RiderModel {
  const factory _RiderModel(
      {required final String id,
      required final String name,
      required final String photoUrl,
      required final double rating,
      required final int completedDeliveries,
      required final String vehicleNumber,
      required final String vehicleType,
      required final GeoPoint currentLocation,
      required final double heading,
      required final double currentSpeedKmph,
      required final RiderActivityStatus status,
      final int batteryPercentage,
      final String networkQuality,
      final double distanceToDestinationKm,
      final int etaToDestinationMinutes,
      final double experienceYears,
      final bool isHelmetVerified,
      final bool isIdentityVerified,
      final bool isPoliceVerified,
      final bool isBackgroundVerified,
      final String partnerId,
      final int todayDeliveries,
      final double acceptanceRate,
      final int avgDeliveryTimeMinutes,
      final DateTime? lastActive,
      final String currentShift,
      final String vehicleFuelType,
      final bool isEV,
      final String? safetyMessage,
      final bool handleWithCare,
      final bool temperatureControlled,
      final double averageSpeedKmph,
      final int idleTimeSeconds,
      final int movingTimeSeconds,
      final int pausedTimeSeconds,
      final double gpsAccuracyMeters,
      final String internetQuality,
      final int locationFreshnessMs,
      final double trafficScore,
      final String roadQuality,
      final String weatherStatus,
      final bool isDelayed,
      final double aiRiderScore,
      final double aiSafetyScore,
      final String aiDrivingBehaviour,
      final bool aiFatigueDetected,
      final double aiDeliveryConfidence}) = _$RiderModelImpl;

  factory _RiderModel.fromJson(Map<String, dynamic> json) =
      _$RiderModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  double get rating;
  @override
  int get completedDeliveries;
  @override
  String get vehicleNumber;
  @override
  String get vehicleType;
  @override
  GeoPoint get currentLocation;
  @override
  double get heading;
  @override
  double get currentSpeedKmph;
  @override
  RiderActivityStatus get status;
  @override
  int get batteryPercentage;
  @override
  String get networkQuality;
  @override
  double get distanceToDestinationKm;
  @override
  int get etaToDestinationMinutes; // Task 5: Premium Profile Fields
  @override
  double get experienceYears;
  @override
  bool get isHelmetVerified;
  @override
  bool get isIdentityVerified;
  @override
  bool get isPoliceVerified;
  @override
  bool get isBackgroundVerified;
  @override
  String get partnerId;
  @override
  int get todayDeliveries;
  @override
  double get acceptanceRate;
  @override
  int get avgDeliveryTimeMinutes;
  @override
  DateTime? get lastActive;
  @override
  String get currentShift;
  @override
  String get vehicleFuelType;
  @override
  bool get isEV;
  @override
  String? get safetyMessage;
  @override
  bool get handleWithCare;
  @override
  bool get temperatureControlled; // Task 8: Optimization & Telemetry
  @override
  double get averageSpeedKmph;
  @override
  int get idleTimeSeconds;
  @override
  int get movingTimeSeconds;
  @override
  int get pausedTimeSeconds;
  @override
  double get gpsAccuracyMeters;
  @override
  String get internetQuality;
  @override
  int get locationFreshnessMs; // AI Insights Preparation
  @override
  double get trafficScore;
  @override
  String get roadQuality;
  @override
  String get weatherStatus;
  @override
  bool get isDelayed;
  @override
  double get aiRiderScore;
  @override
  double get aiSafetyScore;
  @override
  String get aiDrivingBehaviour;
  @override
  bool get aiFatigueDetected;
  @override
  double get aiDeliveryConfidence;

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderModelImplCopyWith<_$RiderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
