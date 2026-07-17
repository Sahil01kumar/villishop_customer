// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_tracking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderTrackingModel _$OrderTrackingModelFromJson(Map<String, dynamic> json) {
  return _OrderTrackingModel.fromJson(json);
}

/// @nodoc
mixin _$OrderTrackingModel {
  String get trackingId => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  TrackingStatus get status => throw _privateConstructorUsedError;
  List<TrackingTimelineItem> get timeline => throw _privateConstructorUsedError;
  GeoPoint get sourceLocation => throw _privateConstructorUsedError;
  GeoPoint get destinationLocation => throw _privateConstructorUsedError;
  String get deliveryAddress => throw _privateConstructorUsedError;
  GeoPoint? get currentRiderLocation => throw _privateConstructorUsedError;
  double get estimatedDistanceKm => throw _privateConstructorUsedError;
  int get estimatedEtaMinutes => throw _privateConstructorUsedError;
  String? get riderName => throw _privateConstructorUsedError;
  String? get riderPhone => throw _privateConstructorUsedError;
  String? get riderPhoto => throw _privateConstructorUsedError;
  double get riderRating => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  String? get polylinePoints => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  DeliveryHealth get health => throw _privateConstructorUsedError;
  bool get isReroutingActive => throw _privateConstructorUsedError;
  bool get inCustomerRadius => throw _privateConstructorUsedError;

  /// Serializes this OrderTrackingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTrackingModelCopyWith<OrderTrackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTrackingModelCopyWith<$Res> {
  factory $OrderTrackingModelCopyWith(
          OrderTrackingModel value, $Res Function(OrderTrackingModel) then) =
      _$OrderTrackingModelCopyWithImpl<$Res, OrderTrackingModel>;
  @useResult
  $Res call(
      {String trackingId,
      String orderId,
      TrackingStatus status,
      List<TrackingTimelineItem> timeline,
      GeoPoint sourceLocation,
      GeoPoint destinationLocation,
      String deliveryAddress,
      GeoPoint? currentRiderLocation,
      double estimatedDistanceKm,
      int estimatedEtaMinutes,
      String? riderName,
      String? riderPhone,
      String? riderPhoto,
      double riderRating,
      String? vehicleNumber,
      String? polylinePoints,
      String? otp,
      DeliveryHealth health,
      bool isReroutingActive,
      bool inCustomerRadius});

  $GeoPointCopyWith<$Res> get sourceLocation;
  $GeoPointCopyWith<$Res> get destinationLocation;
  $GeoPointCopyWith<$Res>? get currentRiderLocation;
}

/// @nodoc
class _$OrderTrackingModelCopyWithImpl<$Res, $Val extends OrderTrackingModel>
    implements $OrderTrackingModelCopyWith<$Res> {
  _$OrderTrackingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingId = null,
    Object? orderId = null,
    Object? status = null,
    Object? timeline = null,
    Object? sourceLocation = null,
    Object? destinationLocation = null,
    Object? deliveryAddress = null,
    Object? currentRiderLocation = freezed,
    Object? estimatedDistanceKm = null,
    Object? estimatedEtaMinutes = null,
    Object? riderName = freezed,
    Object? riderPhone = freezed,
    Object? riderPhoto = freezed,
    Object? riderRating = null,
    Object? vehicleNumber = freezed,
    Object? polylinePoints = freezed,
    Object? otp = freezed,
    Object? health = null,
    Object? isReroutingActive = null,
    Object? inCustomerRadius = null,
  }) {
    return _then(_value.copyWith(
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<TrackingTimelineItem>,
      sourceLocation: null == sourceLocation
          ? _value.sourceLocation
          : sourceLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      destinationLocation: null == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentRiderLocation: freezed == currentRiderLocation
          ? _value.currentRiderLocation
          : currentRiderLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      estimatedDistanceKm: null == estimatedDistanceKm
          ? _value.estimatedDistanceKm
          : estimatedDistanceKm // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedEtaMinutes: null == estimatedEtaMinutes
          ? _value.estimatedEtaMinutes
          : estimatedEtaMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      riderName: freezed == riderName
          ? _value.riderName
          : riderName // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPhone: freezed == riderPhone
          ? _value.riderPhone
          : riderPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPhoto: freezed == riderPhoto
          ? _value.riderPhoto
          : riderPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      riderRating: null == riderRating
          ? _value.riderRating
          : riderRating // ignore: cast_nullable_to_non_nullable
              as double,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      polylinePoints: freezed == polylinePoints
          ? _value.polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as DeliveryHealth,
      isReroutingActive: null == isReroutingActive
          ? _value.isReroutingActive
          : isReroutingActive // ignore: cast_nullable_to_non_nullable
              as bool,
      inCustomerRadius: null == inCustomerRadius
          ? _value.inCustomerRadius
          : inCustomerRadius // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoPointCopyWith<$Res> get sourceLocation {
    return $GeoPointCopyWith<$Res>(_value.sourceLocation, (value) {
      return _then(_value.copyWith(sourceLocation: value) as $Val);
    });
  }

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoPointCopyWith<$Res> get destinationLocation {
    return $GeoPointCopyWith<$Res>(_value.destinationLocation, (value) {
      return _then(_value.copyWith(destinationLocation: value) as $Val);
    });
  }

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoPointCopyWith<$Res>? get currentRiderLocation {
    if (_value.currentRiderLocation == null) {
      return null;
    }

    return $GeoPointCopyWith<$Res>(_value.currentRiderLocation!, (value) {
      return _then(_value.copyWith(currentRiderLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderTrackingModelImplCopyWith<$Res>
    implements $OrderTrackingModelCopyWith<$Res> {
  factory _$$OrderTrackingModelImplCopyWith(_$OrderTrackingModelImpl value,
          $Res Function(_$OrderTrackingModelImpl) then) =
      __$$OrderTrackingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String trackingId,
      String orderId,
      TrackingStatus status,
      List<TrackingTimelineItem> timeline,
      GeoPoint sourceLocation,
      GeoPoint destinationLocation,
      String deliveryAddress,
      GeoPoint? currentRiderLocation,
      double estimatedDistanceKm,
      int estimatedEtaMinutes,
      String? riderName,
      String? riderPhone,
      String? riderPhoto,
      double riderRating,
      String? vehicleNumber,
      String? polylinePoints,
      String? otp,
      DeliveryHealth health,
      bool isReroutingActive,
      bool inCustomerRadius});

  @override
  $GeoPointCopyWith<$Res> get sourceLocation;
  @override
  $GeoPointCopyWith<$Res> get destinationLocation;
  @override
  $GeoPointCopyWith<$Res>? get currentRiderLocation;
}

/// @nodoc
class __$$OrderTrackingModelImplCopyWithImpl<$Res>
    extends _$OrderTrackingModelCopyWithImpl<$Res, _$OrderTrackingModelImpl>
    implements _$$OrderTrackingModelImplCopyWith<$Res> {
  __$$OrderTrackingModelImplCopyWithImpl(_$OrderTrackingModelImpl _value,
      $Res Function(_$OrderTrackingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingId = null,
    Object? orderId = null,
    Object? status = null,
    Object? timeline = null,
    Object? sourceLocation = null,
    Object? destinationLocation = null,
    Object? deliveryAddress = null,
    Object? currentRiderLocation = freezed,
    Object? estimatedDistanceKm = null,
    Object? estimatedEtaMinutes = null,
    Object? riderName = freezed,
    Object? riderPhone = freezed,
    Object? riderPhoto = freezed,
    Object? riderRating = null,
    Object? vehicleNumber = freezed,
    Object? polylinePoints = freezed,
    Object? otp = freezed,
    Object? health = null,
    Object? isReroutingActive = null,
    Object? inCustomerRadius = null,
  }) {
    return _then(_$OrderTrackingModelImpl(
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus,
      timeline: null == timeline
          ? _value._timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<TrackingTimelineItem>,
      sourceLocation: null == sourceLocation
          ? _value.sourceLocation
          : sourceLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      destinationLocation: null == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentRiderLocation: freezed == currentRiderLocation
          ? _value.currentRiderLocation
          : currentRiderLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      estimatedDistanceKm: null == estimatedDistanceKm
          ? _value.estimatedDistanceKm
          : estimatedDistanceKm // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedEtaMinutes: null == estimatedEtaMinutes
          ? _value.estimatedEtaMinutes
          : estimatedEtaMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      riderName: freezed == riderName
          ? _value.riderName
          : riderName // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPhone: freezed == riderPhone
          ? _value.riderPhone
          : riderPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPhoto: freezed == riderPhoto
          ? _value.riderPhoto
          : riderPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      riderRating: null == riderRating
          ? _value.riderRating
          : riderRating // ignore: cast_nullable_to_non_nullable
              as double,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      polylinePoints: freezed == polylinePoints
          ? _value.polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as DeliveryHealth,
      isReroutingActive: null == isReroutingActive
          ? _value.isReroutingActive
          : isReroutingActive // ignore: cast_nullable_to_non_nullable
              as bool,
      inCustomerRadius: null == inCustomerRadius
          ? _value.inCustomerRadius
          : inCustomerRadius // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTrackingModelImpl implements _OrderTrackingModel {
  const _$OrderTrackingModelImpl(
      {required this.trackingId,
      required this.orderId,
      required this.status,
      required final List<TrackingTimelineItem> timeline,
      required this.sourceLocation,
      required this.destinationLocation,
      required this.deliveryAddress,
      this.currentRiderLocation,
      this.estimatedDistanceKm = 0.0,
      this.estimatedEtaMinutes = 0,
      this.riderName,
      this.riderPhone,
      this.riderPhoto,
      this.riderRating = 4.8,
      this.vehicleNumber,
      this.polylinePoints,
      this.otp,
      this.health = DeliveryHealth.excellent,
      this.isReroutingActive = false,
      this.inCustomerRadius = false})
      : _timeline = timeline;

  factory _$OrderTrackingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTrackingModelImplFromJson(json);

  @override
  final String trackingId;
  @override
  final String orderId;
  @override
  final TrackingStatus status;
  final List<TrackingTimelineItem> _timeline;
  @override
  List<TrackingTimelineItem> get timeline {
    if (_timeline is EqualUnmodifiableListView) return _timeline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeline);
  }

  @override
  final GeoPoint sourceLocation;
  @override
  final GeoPoint destinationLocation;
  @override
  final String deliveryAddress;
  @override
  final GeoPoint? currentRiderLocation;
  @override
  @JsonKey()
  final double estimatedDistanceKm;
  @override
  @JsonKey()
  final int estimatedEtaMinutes;
  @override
  final String? riderName;
  @override
  final String? riderPhone;
  @override
  final String? riderPhoto;
  @override
  @JsonKey()
  final double riderRating;
  @override
  final String? vehicleNumber;
  @override
  final String? polylinePoints;
  @override
  final String? otp;
  @override
  @JsonKey()
  final DeliveryHealth health;
  @override
  @JsonKey()
  final bool isReroutingActive;
  @override
  @JsonKey()
  final bool inCustomerRadius;

  @override
  String toString() {
    return 'OrderTrackingModel(trackingId: $trackingId, orderId: $orderId, status: $status, timeline: $timeline, sourceLocation: $sourceLocation, destinationLocation: $destinationLocation, deliveryAddress: $deliveryAddress, currentRiderLocation: $currentRiderLocation, estimatedDistanceKm: $estimatedDistanceKm, estimatedEtaMinutes: $estimatedEtaMinutes, riderName: $riderName, riderPhone: $riderPhone, riderPhoto: $riderPhoto, riderRating: $riderRating, vehicleNumber: $vehicleNumber, polylinePoints: $polylinePoints, otp: $otp, health: $health, isReroutingActive: $isReroutingActive, inCustomerRadius: $inCustomerRadius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTrackingModelImpl &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._timeline, _timeline) &&
            (identical(other.sourceLocation, sourceLocation) ||
                other.sourceLocation == sourceLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.currentRiderLocation, currentRiderLocation) ||
                other.currentRiderLocation == currentRiderLocation) &&
            (identical(other.estimatedDistanceKm, estimatedDistanceKm) ||
                other.estimatedDistanceKm == estimatedDistanceKm) &&
            (identical(other.estimatedEtaMinutes, estimatedEtaMinutes) ||
                other.estimatedEtaMinutes == estimatedEtaMinutes) &&
            (identical(other.riderName, riderName) ||
                other.riderName == riderName) &&
            (identical(other.riderPhone, riderPhone) ||
                other.riderPhone == riderPhone) &&
            (identical(other.riderPhoto, riderPhoto) ||
                other.riderPhoto == riderPhoto) &&
            (identical(other.riderRating, riderRating) ||
                other.riderRating == riderRating) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.polylinePoints, polylinePoints) ||
                other.polylinePoints == polylinePoints) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.isReroutingActive, isReroutingActive) ||
                other.isReroutingActive == isReroutingActive) &&
            (identical(other.inCustomerRadius, inCustomerRadius) ||
                other.inCustomerRadius == inCustomerRadius));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        trackingId,
        orderId,
        status,
        const DeepCollectionEquality().hash(_timeline),
        sourceLocation,
        destinationLocation,
        deliveryAddress,
        currentRiderLocation,
        estimatedDistanceKm,
        estimatedEtaMinutes,
        riderName,
        riderPhone,
        riderPhoto,
        riderRating,
        vehicleNumber,
        polylinePoints,
        otp,
        health,
        isReroutingActive,
        inCustomerRadius
      ]);

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTrackingModelImplCopyWith<_$OrderTrackingModelImpl> get copyWith =>
      __$$OrderTrackingModelImplCopyWithImpl<_$OrderTrackingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTrackingModelImplToJson(
      this,
    );
  }
}

abstract class _OrderTrackingModel implements OrderTrackingModel {
  const factory _OrderTrackingModel(
      {required final String trackingId,
      required final String orderId,
      required final TrackingStatus status,
      required final List<TrackingTimelineItem> timeline,
      required final GeoPoint sourceLocation,
      required final GeoPoint destinationLocation,
      required final String deliveryAddress,
      final GeoPoint? currentRiderLocation,
      final double estimatedDistanceKm,
      final int estimatedEtaMinutes,
      final String? riderName,
      final String? riderPhone,
      final String? riderPhoto,
      final double riderRating,
      final String? vehicleNumber,
      final String? polylinePoints,
      final String? otp,
      final DeliveryHealth health,
      final bool isReroutingActive,
      final bool inCustomerRadius}) = _$OrderTrackingModelImpl;

  factory _OrderTrackingModel.fromJson(Map<String, dynamic> json) =
      _$OrderTrackingModelImpl.fromJson;

  @override
  String get trackingId;
  @override
  String get orderId;
  @override
  TrackingStatus get status;
  @override
  List<TrackingTimelineItem> get timeline;
  @override
  GeoPoint get sourceLocation;
  @override
  GeoPoint get destinationLocation;
  @override
  String get deliveryAddress;
  @override
  GeoPoint? get currentRiderLocation;
  @override
  double get estimatedDistanceKm;
  @override
  int get estimatedEtaMinutes;
  @override
  String? get riderName;
  @override
  String? get riderPhone;
  @override
  String? get riderPhoto;
  @override
  double get riderRating;
  @override
  String? get vehicleNumber;
  @override
  String? get polylinePoints;
  @override
  String? get otp;
  @override
  DeliveryHealth get health;
  @override
  bool get isReroutingActive;
  @override
  bool get inCustomerRadius;

  /// Create a copy of OrderTrackingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTrackingModelImplCopyWith<_$OrderTrackingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackingTimelineItem _$TrackingTimelineItemFromJson(Map<String, dynamic> json) {
  return _TrackingTimelineItem.fromJson(json);
}

/// @nodoc
mixin _$TrackingTimelineItem {
  TrackingStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get isCurrent => throw _privateConstructorUsedError;

  /// Serializes this TrackingTimelineItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackingTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingTimelineItemCopyWith<TrackingTimelineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingTimelineItemCopyWith<$Res> {
  factory $TrackingTimelineItemCopyWith(TrackingTimelineItem value,
          $Res Function(TrackingTimelineItem) then) =
      _$TrackingTimelineItemCopyWithImpl<$Res, TrackingTimelineItem>;
  @useResult
  $Res call(
      {TrackingStatus status,
      String title,
      String description,
      DateTime timestamp,
      bool isCompleted,
      bool isCurrent});
}

/// @nodoc
class _$TrackingTimelineItemCopyWithImpl<$Res,
        $Val extends TrackingTimelineItem>
    implements $TrackingTimelineItemCopyWith<$Res> {
  _$TrackingTimelineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? description = null,
    Object? timestamp = null,
    Object? isCompleted = null,
    Object? isCurrent = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackingTimelineItemImplCopyWith<$Res>
    implements $TrackingTimelineItemCopyWith<$Res> {
  factory _$$TrackingTimelineItemImplCopyWith(_$TrackingTimelineItemImpl value,
          $Res Function(_$TrackingTimelineItemImpl) then) =
      __$$TrackingTimelineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingStatus status,
      String title,
      String description,
      DateTime timestamp,
      bool isCompleted,
      bool isCurrent});
}

/// @nodoc
class __$$TrackingTimelineItemImplCopyWithImpl<$Res>
    extends _$TrackingTimelineItemCopyWithImpl<$Res, _$TrackingTimelineItemImpl>
    implements _$$TrackingTimelineItemImplCopyWith<$Res> {
  __$$TrackingTimelineItemImplCopyWithImpl(_$TrackingTimelineItemImpl _value,
      $Res Function(_$TrackingTimelineItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? description = null,
    Object? timestamp = null,
    Object? isCompleted = null,
    Object? isCurrent = null,
  }) {
    return _then(_$TrackingTimelineItemImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrackingStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingTimelineItemImpl implements _TrackingTimelineItem {
  const _$TrackingTimelineItemImpl(
      {required this.status,
      required this.title,
      required this.description,
      required this.timestamp,
      this.isCompleted = false,
      this.isCurrent = false});

  factory _$TrackingTimelineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingTimelineItemImplFromJson(json);

  @override
  final TrackingStatus status;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final bool isCurrent;

  @override
  String toString() {
    return 'TrackingTimelineItem(status: $status, title: $title, description: $description, timestamp: $timestamp, isCompleted: $isCompleted, isCurrent: $isCurrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingTimelineItemImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, title, description,
      timestamp, isCompleted, isCurrent);

  /// Create a copy of TrackingTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingTimelineItemImplCopyWith<_$TrackingTimelineItemImpl>
      get copyWith =>
          __$$TrackingTimelineItemImplCopyWithImpl<_$TrackingTimelineItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingTimelineItemImplToJson(
      this,
    );
  }
}

abstract class _TrackingTimelineItem implements TrackingTimelineItem {
  const factory _TrackingTimelineItem(
      {required final TrackingStatus status,
      required final String title,
      required final String description,
      required final DateTime timestamp,
      final bool isCompleted,
      final bool isCurrent}) = _$TrackingTimelineItemImpl;

  factory _TrackingTimelineItem.fromJson(Map<String, dynamic> json) =
      _$TrackingTimelineItemImpl.fromJson;

  @override
  TrackingStatus get status;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get timestamp;
  @override
  bool get isCompleted;
  @override
  bool get isCurrent;

  /// Create a copy of TrackingTimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingTimelineItemImplCopyWith<_$TrackingTimelineItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeoPoint _$GeoPointFromJson(Map<String, dynamic> json) {
  return _GeoPoint.fromJson(json);
}

/// @nodoc
mixin _$GeoPoint {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this GeoPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPointCopyWith<$Res> {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) then) =
      _$GeoPointCopyWithImpl<$Res, GeoPoint>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$GeoPointCopyWithImpl<$Res, $Val extends GeoPoint>
    implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoPointImplCopyWith<$Res>
    implements $GeoPointCopyWith<$Res> {
  factory _$$GeoPointImplCopyWith(
          _$GeoPointImpl value, $Res Function(_$GeoPointImpl) then) =
      __$$GeoPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$GeoPointImplCopyWithImpl<$Res>
    extends _$GeoPointCopyWithImpl<$Res, _$GeoPointImpl>
    implements _$$GeoPointImplCopyWith<$Res> {
  __$$GeoPointImplCopyWithImpl(
      _$GeoPointImpl _value, $Res Function(_$GeoPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$GeoPointImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoPointImpl implements _GeoPoint {
  const _$GeoPointImpl({required this.latitude, required this.longitude});

  factory _$GeoPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoPointImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'GeoPoint(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPointImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPointImplCopyWith<_$GeoPointImpl> get copyWith =>
      __$$GeoPointImplCopyWithImpl<_$GeoPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoPointImplToJson(
      this,
    );
  }
}

abstract class _GeoPoint implements GeoPoint {
  const factory _GeoPoint(
      {required final double latitude,
      required final double longitude}) = _$GeoPointImpl;

  factory _GeoPoint.fromJson(Map<String, dynamic> json) =
      _$GeoPointImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of GeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoPointImplCopyWith<_$GeoPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
