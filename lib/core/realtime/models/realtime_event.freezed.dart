// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realtime_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealtimeEvent _$RealtimeEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'orderCreated':
      return OrderCreatedEvent.fromJson(json);
    case 'orderUpdated':
      return OrderUpdatedEvent.fromJson(json);
    case 'partnerAssigned':
      return PartnerAssignedEvent.fromJson(json);
    case 'partnerLocationChanged':
      return PartnerLocationChangedEvent.fromJson(json);
    case 'orderDelivered':
      return OrderDeliveredEvent.fromJson(json);
    case 'orderCancelled':
      return OrderCancelledEvent.fromJson(json);
    case 'shopStatusChanged':
      return ShopStatusChangedEvent.fromJson(json);
    case 'notificationReceived':
      return NotificationReceivedEvent.fromJson(json);
    case 'supportMessageReceived':
      return SupportMessageReceivedEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RealtimeEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RealtimeEvent {
  DateTime get timestamp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RealtimeEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealtimeEventCopyWith<RealtimeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeEventCopyWith<$Res> {
  factory $RealtimeEventCopyWith(
          RealtimeEvent value, $Res Function(RealtimeEvent) then) =
      _$RealtimeEventCopyWithImpl<$Res, RealtimeEvent>;
  @useResult
  $Res call({DateTime timestamp});
}

/// @nodoc
class _$RealtimeEventCopyWithImpl<$Res, $Val extends RealtimeEvent>
    implements $RealtimeEventCopyWith<$Res> {
  _$RealtimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCreatedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$OrderCreatedEventImplCopyWith(_$OrderCreatedEventImpl value,
          $Res Function(_$OrderCreatedEventImpl) then) =
      __$$OrderCreatedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, Map<String, dynamic> data, DateTime timestamp});
}

/// @nodoc
class __$$OrderCreatedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$OrderCreatedEventImpl>
    implements _$$OrderCreatedEventImplCopyWith<$Res> {
  __$$OrderCreatedEventImplCopyWithImpl(_$OrderCreatedEventImpl _value,
      $Res Function(_$OrderCreatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(_$OrderCreatedEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCreatedEventImpl implements OrderCreatedEvent {
  const _$OrderCreatedEventImpl(
      {required this.orderId,
      required final Map<String, dynamic> data,
      required this.timestamp,
      final String? $type})
      : _data = data,
        $type = $type ?? 'orderCreated';

  factory _$OrderCreatedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreatedEventImplFromJson(json);

  @override
  final String orderId;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.orderCreated(orderId: $orderId, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreatedEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId,
      const DeepCollectionEquality().hash(_data), timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreatedEventImplCopyWith<_$OrderCreatedEventImpl> get copyWith =>
      __$$OrderCreatedEventImplCopyWithImpl<_$OrderCreatedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return orderCreated(orderId, data, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return orderCreated?.call(orderId, data, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(orderId, data, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return orderCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return orderCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreatedEventImplToJson(
      this,
    );
  }
}

abstract class OrderCreatedEvent implements RealtimeEvent {
  const factory OrderCreatedEvent(
      {required final String orderId,
      required final Map<String, dynamic> data,
      required final DateTime timestamp}) = _$OrderCreatedEventImpl;

  factory OrderCreatedEvent.fromJson(Map<String, dynamic> json) =
      _$OrderCreatedEventImpl.fromJson;

  String get orderId;
  Map<String, dynamic> get data;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCreatedEventImplCopyWith<_$OrderCreatedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderUpdatedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$OrderUpdatedEventImplCopyWith(_$OrderUpdatedEventImpl value,
          $Res Function(_$OrderUpdatedEventImpl) then) =
      __$$OrderUpdatedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String status, DateTime timestamp});
}

/// @nodoc
class __$$OrderUpdatedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$OrderUpdatedEventImpl>
    implements _$$OrderUpdatedEventImplCopyWith<$Res> {
  __$$OrderUpdatedEventImplCopyWithImpl(_$OrderUpdatedEventImpl _value,
      $Res Function(_$OrderUpdatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
    Object? timestamp = null,
  }) {
    return _then(_$OrderUpdatedEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderUpdatedEventImpl implements OrderUpdatedEvent {
  const _$OrderUpdatedEventImpl(
      {required this.orderId,
      required this.status,
      required this.timestamp,
      final String? $type})
      : $type = $type ?? 'orderUpdated';

  factory _$OrderUpdatedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderUpdatedEventImplFromJson(json);

  @override
  final String orderId;
  @override
  final String status;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.orderUpdated(orderId: $orderId, status: $status, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderUpdatedEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, status, timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderUpdatedEventImplCopyWith<_$OrderUpdatedEventImpl> get copyWith =>
      __$$OrderUpdatedEventImplCopyWithImpl<_$OrderUpdatedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return orderUpdated(orderId, status, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return orderUpdated?.call(orderId, status, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderUpdated != null) {
      return orderUpdated(orderId, status, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return orderUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return orderUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderUpdated != null) {
      return orderUpdated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderUpdatedEventImplToJson(
      this,
    );
  }
}

abstract class OrderUpdatedEvent implements RealtimeEvent {
  const factory OrderUpdatedEvent(
      {required final String orderId,
      required final String status,
      required final DateTime timestamp}) = _$OrderUpdatedEventImpl;

  factory OrderUpdatedEvent.fromJson(Map<String, dynamic> json) =
      _$OrderUpdatedEventImpl.fromJson;

  String get orderId;
  String get status;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderUpdatedEventImplCopyWith<_$OrderUpdatedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartnerAssignedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$PartnerAssignedEventImplCopyWith(_$PartnerAssignedEventImpl value,
          $Res Function(_$PartnerAssignedEventImpl) then) =
      __$$PartnerAssignedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String partnerId,
      Map<String, dynamic> partnerData,
      DateTime timestamp});
}

/// @nodoc
class __$$PartnerAssignedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$PartnerAssignedEventImpl>
    implements _$$PartnerAssignedEventImplCopyWith<$Res> {
  __$$PartnerAssignedEventImplCopyWithImpl(_$PartnerAssignedEventImpl _value,
      $Res Function(_$PartnerAssignedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? partnerId = null,
    Object? partnerData = null,
    Object? timestamp = null,
  }) {
    return _then(_$PartnerAssignedEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      partnerData: null == partnerData
          ? _value._partnerData
          : partnerData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerAssignedEventImpl implements PartnerAssignedEvent {
  const _$PartnerAssignedEventImpl(
      {required this.orderId,
      required this.partnerId,
      required final Map<String, dynamic> partnerData,
      required this.timestamp,
      final String? $type})
      : _partnerData = partnerData,
        $type = $type ?? 'partnerAssigned';

  factory _$PartnerAssignedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerAssignedEventImplFromJson(json);

  @override
  final String orderId;
  @override
  final String partnerId;
  final Map<String, dynamic> _partnerData;
  @override
  Map<String, dynamic> get partnerData {
    if (_partnerData is EqualUnmodifiableMapView) return _partnerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_partnerData);
  }

  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.partnerAssigned(orderId: $orderId, partnerId: $partnerId, partnerData: $partnerData, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerAssignedEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            const DeepCollectionEquality()
                .equals(other._partnerData, _partnerData) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, partnerId,
      const DeepCollectionEquality().hash(_partnerData), timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerAssignedEventImplCopyWith<_$PartnerAssignedEventImpl>
      get copyWith =>
          __$$PartnerAssignedEventImplCopyWithImpl<_$PartnerAssignedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return partnerAssigned(orderId, partnerId, partnerData, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return partnerAssigned?.call(orderId, partnerId, partnerData, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (partnerAssigned != null) {
      return partnerAssigned(orderId, partnerId, partnerData, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return partnerAssigned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return partnerAssigned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (partnerAssigned != null) {
      return partnerAssigned(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerAssignedEventImplToJson(
      this,
    );
  }
}

abstract class PartnerAssignedEvent implements RealtimeEvent {
  const factory PartnerAssignedEvent(
      {required final String orderId,
      required final String partnerId,
      required final Map<String, dynamic> partnerData,
      required final DateTime timestamp}) = _$PartnerAssignedEventImpl;

  factory PartnerAssignedEvent.fromJson(Map<String, dynamic> json) =
      _$PartnerAssignedEventImpl.fromJson;

  String get orderId;
  String get partnerId;
  Map<String, dynamic> get partnerData;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnerAssignedEventImplCopyWith<_$PartnerAssignedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartnerLocationChangedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$PartnerLocationChangedEventImplCopyWith(
          _$PartnerLocationChangedEventImpl value,
          $Res Function(_$PartnerLocationChangedEventImpl) then) =
      __$$PartnerLocationChangedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      double latitude,
      double longitude,
      double heading,
      DateTime timestamp});
}

/// @nodoc
class __$$PartnerLocationChangedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$PartnerLocationChangedEventImpl>
    implements _$$PartnerLocationChangedEventImplCopyWith<$Res> {
  __$$PartnerLocationChangedEventImplCopyWithImpl(
      _$PartnerLocationChangedEventImpl _value,
      $Res Function(_$PartnerLocationChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? heading = null,
    Object? timestamp = null,
  }) {
    return _then(_$PartnerLocationChangedEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      heading: null == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerLocationChangedEventImpl implements PartnerLocationChangedEvent {
  const _$PartnerLocationChangedEventImpl(
      {required this.orderId,
      required this.latitude,
      required this.longitude,
      required this.heading,
      required this.timestamp,
      final String? $type})
      : $type = $type ?? 'partnerLocationChanged';

  factory _$PartnerLocationChangedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PartnerLocationChangedEventImplFromJson(json);

  @override
  final String orderId;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double heading;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.partnerLocationChanged(orderId: $orderId, latitude: $latitude, longitude: $longitude, heading: $heading, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerLocationChangedEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, latitude, longitude, heading, timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerLocationChangedEventImplCopyWith<_$PartnerLocationChangedEventImpl>
      get copyWith => __$$PartnerLocationChangedEventImplCopyWithImpl<
          _$PartnerLocationChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return partnerLocationChanged(
        orderId, latitude, longitude, heading, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return partnerLocationChanged?.call(
        orderId, latitude, longitude, heading, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (partnerLocationChanged != null) {
      return partnerLocationChanged(
          orderId, latitude, longitude, heading, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return partnerLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return partnerLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (partnerLocationChanged != null) {
      return partnerLocationChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerLocationChangedEventImplToJson(
      this,
    );
  }
}

abstract class PartnerLocationChangedEvent implements RealtimeEvent {
  const factory PartnerLocationChangedEvent(
      {required final String orderId,
      required final double latitude,
      required final double longitude,
      required final double heading,
      required final DateTime timestamp}) = _$PartnerLocationChangedEventImpl;

  factory PartnerLocationChangedEvent.fromJson(Map<String, dynamic> json) =
      _$PartnerLocationChangedEventImpl.fromJson;

  String get orderId;
  double get latitude;
  double get longitude;
  double get heading;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnerLocationChangedEventImplCopyWith<_$PartnerLocationChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderDeliveredEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$OrderDeliveredEventImplCopyWith(_$OrderDeliveredEventImpl value,
          $Res Function(_$OrderDeliveredEventImpl) then) =
      __$$OrderDeliveredEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, DateTime timestamp});
}

/// @nodoc
class __$$OrderDeliveredEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$OrderDeliveredEventImpl>
    implements _$$OrderDeliveredEventImplCopyWith<$Res> {
  __$$OrderDeliveredEventImplCopyWithImpl(_$OrderDeliveredEventImpl _value,
      $Res Function(_$OrderDeliveredEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? timestamp = null,
  }) {
    return _then(_$OrderDeliveredEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDeliveredEventImpl implements OrderDeliveredEvent {
  const _$OrderDeliveredEventImpl(
      {required this.orderId, required this.timestamp, final String? $type})
      : $type = $type ?? 'orderDelivered';

  factory _$OrderDeliveredEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDeliveredEventImplFromJson(json);

  @override
  final String orderId;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.orderDelivered(orderId: $orderId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDeliveredEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDeliveredEventImplCopyWith<_$OrderDeliveredEventImpl> get copyWith =>
      __$$OrderDeliveredEventImplCopyWithImpl<_$OrderDeliveredEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return orderDelivered(orderId, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return orderDelivered?.call(orderId, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderDelivered != null) {
      return orderDelivered(orderId, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return orderDelivered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return orderDelivered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderDelivered != null) {
      return orderDelivered(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDeliveredEventImplToJson(
      this,
    );
  }
}

abstract class OrderDeliveredEvent implements RealtimeEvent {
  const factory OrderDeliveredEvent(
      {required final String orderId,
      required final DateTime timestamp}) = _$OrderDeliveredEventImpl;

  factory OrderDeliveredEvent.fromJson(Map<String, dynamic> json) =
      _$OrderDeliveredEventImpl.fromJson;

  String get orderId;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDeliveredEventImplCopyWith<_$OrderDeliveredEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderCancelledEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$OrderCancelledEventImplCopyWith(_$OrderCancelledEventImpl value,
          $Res Function(_$OrderCancelledEventImpl) then) =
      __$$OrderCancelledEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String reason, DateTime timestamp});
}

/// @nodoc
class __$$OrderCancelledEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$OrderCancelledEventImpl>
    implements _$$OrderCancelledEventImplCopyWith<$Res> {
  __$$OrderCancelledEventImplCopyWithImpl(_$OrderCancelledEventImpl _value,
      $Res Function(_$OrderCancelledEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
    Object? timestamp = null,
  }) {
    return _then(_$OrderCancelledEventImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCancelledEventImpl implements OrderCancelledEvent {
  const _$OrderCancelledEventImpl(
      {required this.orderId,
      required this.reason,
      required this.timestamp,
      final String? $type})
      : $type = $type ?? 'orderCancelled';

  factory _$OrderCancelledEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCancelledEventImplFromJson(json);

  @override
  final String orderId;
  @override
  final String reason;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.orderCancelled(orderId: $orderId, reason: $reason, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCancelledEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason, timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCancelledEventImplCopyWith<_$OrderCancelledEventImpl> get copyWith =>
      __$$OrderCancelledEventImplCopyWithImpl<_$OrderCancelledEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return orderCancelled(orderId, reason, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return orderCancelled?.call(orderId, reason, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderCancelled != null) {
      return orderCancelled(orderId, reason, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return orderCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return orderCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (orderCancelled != null) {
      return orderCancelled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCancelledEventImplToJson(
      this,
    );
  }
}

abstract class OrderCancelledEvent implements RealtimeEvent {
  const factory OrderCancelledEvent(
      {required final String orderId,
      required final String reason,
      required final DateTime timestamp}) = _$OrderCancelledEventImpl;

  factory OrderCancelledEvent.fromJson(Map<String, dynamic> json) =
      _$OrderCancelledEventImpl.fromJson;

  String get orderId;
  String get reason;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCancelledEventImplCopyWith<_$OrderCancelledEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShopStatusChangedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$ShopStatusChangedEventImplCopyWith(
          _$ShopStatusChangedEventImpl value,
          $Res Function(_$ShopStatusChangedEventImpl) then) =
      __$$ShopStatusChangedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shopId, bool isOpen, DateTime timestamp});
}

/// @nodoc
class __$$ShopStatusChangedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$ShopStatusChangedEventImpl>
    implements _$$ShopStatusChangedEventImplCopyWith<$Res> {
  __$$ShopStatusChangedEventImplCopyWithImpl(
      _$ShopStatusChangedEventImpl _value,
      $Res Function(_$ShopStatusChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? isOpen = null,
    Object? timestamp = null,
  }) {
    return _then(_$ShopStatusChangedEventImpl(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopStatusChangedEventImpl implements ShopStatusChangedEvent {
  const _$ShopStatusChangedEventImpl(
      {required this.shopId,
      required this.isOpen,
      required this.timestamp,
      final String? $type})
      : $type = $type ?? 'shopStatusChanged';

  factory _$ShopStatusChangedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopStatusChangedEventImplFromJson(json);

  @override
  final String shopId;
  @override
  final bool isOpen;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.shopStatusChanged(shopId: $shopId, isOpen: $isOpen, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStatusChangedEventImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shopId, isOpen, timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopStatusChangedEventImplCopyWith<_$ShopStatusChangedEventImpl>
      get copyWith => __$$ShopStatusChangedEventImplCopyWithImpl<
          _$ShopStatusChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return shopStatusChanged(shopId, isOpen, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return shopStatusChanged?.call(shopId, isOpen, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (shopStatusChanged != null) {
      return shopStatusChanged(shopId, isOpen, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return shopStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return shopStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (shopStatusChanged != null) {
      return shopStatusChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopStatusChangedEventImplToJson(
      this,
    );
  }
}

abstract class ShopStatusChangedEvent implements RealtimeEvent {
  const factory ShopStatusChangedEvent(
      {required final String shopId,
      required final bool isOpen,
      required final DateTime timestamp}) = _$ShopStatusChangedEventImpl;

  factory ShopStatusChangedEvent.fromJson(Map<String, dynamic> json) =
      _$ShopStatusChangedEventImpl.fromJson;

  String get shopId;
  bool get isOpen;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopStatusChangedEventImplCopyWith<_$ShopStatusChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationReceivedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$NotificationReceivedEventImplCopyWith(
          _$NotificationReceivedEventImpl value,
          $Res Function(_$NotificationReceivedEventImpl) then) =
      __$$NotificationReceivedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      Map<String, dynamic> payload,
      DateTime timestamp});
}

/// @nodoc
class __$$NotificationReceivedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$NotificationReceivedEventImpl>
    implements _$$NotificationReceivedEventImplCopyWith<$Res> {
  __$$NotificationReceivedEventImplCopyWithImpl(
      _$NotificationReceivedEventImpl _value,
      $Res Function(_$NotificationReceivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? payload = null,
    Object? timestamp = null,
  }) {
    return _then(_$NotificationReceivedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationReceivedEventImpl implements NotificationReceivedEvent {
  const _$NotificationReceivedEventImpl(
      {required this.id,
      required this.title,
      required this.body,
      required final Map<String, dynamic> payload,
      required this.timestamp,
      final String? $type})
      : _payload = payload,
        $type = $type ?? 'notificationReceived';

  factory _$NotificationReceivedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationReceivedEventImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  final Map<String, dynamic> _payload;
  @override
  Map<String, dynamic> get payload {
    if (_payload is EqualUnmodifiableMapView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_payload);
  }

  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.notificationReceived(id: $id, title: $title, body: $body, payload: $payload, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationReceivedEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._payload, _payload) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body,
      const DeepCollectionEquality().hash(_payload), timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationReceivedEventImplCopyWith<_$NotificationReceivedEventImpl>
      get copyWith => __$$NotificationReceivedEventImplCopyWithImpl<
          _$NotificationReceivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return notificationReceived(id, title, body, payload, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return notificationReceived?.call(id, title, body, payload, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (notificationReceived != null) {
      return notificationReceived(id, title, body, payload, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return notificationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return notificationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (notificationReceived != null) {
      return notificationReceived(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationReceivedEventImplToJson(
      this,
    );
  }
}

abstract class NotificationReceivedEvent implements RealtimeEvent {
  const factory NotificationReceivedEvent(
      {required final String id,
      required final String title,
      required final String body,
      required final Map<String, dynamic> payload,
      required final DateTime timestamp}) = _$NotificationReceivedEventImpl;

  factory NotificationReceivedEvent.fromJson(Map<String, dynamic> json) =
      _$NotificationReceivedEventImpl.fromJson;

  String get id;
  String get title;
  String get body;
  Map<String, dynamic> get payload;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationReceivedEventImplCopyWith<_$NotificationReceivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupportMessageReceivedEventImplCopyWith<$Res>
    implements $RealtimeEventCopyWith<$Res> {
  factory _$$SupportMessageReceivedEventImplCopyWith(
          _$SupportMessageReceivedEventImpl value,
          $Res Function(_$SupportMessageReceivedEventImpl) then) =
      __$$SupportMessageReceivedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String threadId, String messageId, String text, DateTime timestamp});
}

/// @nodoc
class __$$SupportMessageReceivedEventImplCopyWithImpl<$Res>
    extends _$RealtimeEventCopyWithImpl<$Res, _$SupportMessageReceivedEventImpl>
    implements _$$SupportMessageReceivedEventImplCopyWith<$Res> {
  __$$SupportMessageReceivedEventImplCopyWithImpl(
      _$SupportMessageReceivedEventImpl _value,
      $Res Function(_$SupportMessageReceivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threadId = null,
    Object? messageId = null,
    Object? text = null,
    Object? timestamp = null,
  }) {
    return _then(_$SupportMessageReceivedEventImpl(
      threadId: null == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportMessageReceivedEventImpl implements SupportMessageReceivedEvent {
  const _$SupportMessageReceivedEventImpl(
      {required this.threadId,
      required this.messageId,
      required this.text,
      required this.timestamp,
      final String? $type})
      : $type = $type ?? 'supportMessageReceived';

  factory _$SupportMessageReceivedEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportMessageReceivedEventImplFromJson(json);

  @override
  final String threadId;
  @override
  final String messageId;
  @override
  final String text;
  @override
  final DateTime timestamp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RealtimeEvent.supportMessageReceived(threadId: $threadId, messageId: $messageId, text: $text, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportMessageReceivedEventImpl &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, threadId, messageId, text, timestamp);

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportMessageReceivedEventImplCopyWith<_$SupportMessageReceivedEventImpl>
      get copyWith => __$$SupportMessageReceivedEventImplCopyWithImpl<
          _$SupportMessageReceivedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)
        orderCreated,
    required TResult Function(String orderId, String status, DateTime timestamp)
        orderUpdated,
    required TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)
        partnerAssigned,
    required TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)
        partnerLocationChanged,
    required TResult Function(String orderId, DateTime timestamp)
        orderDelivered,
    required TResult Function(String orderId, String reason, DateTime timestamp)
        orderCancelled,
    required TResult Function(String shopId, bool isOpen, DateTime timestamp)
        shopStatusChanged,
    required TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)
        notificationReceived,
    required TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)
        supportMessageReceived,
  }) {
    return supportMessageReceived(threadId, messageId, text, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult? Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult? Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult? Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult? Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult? Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult? Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult? Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult? Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
  }) {
    return supportMessageReceived?.call(threadId, messageId, text, timestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String orderId, Map<String, dynamic> data, DateTime timestamp)?
        orderCreated,
    TResult Function(String orderId, String status, DateTime timestamp)?
        orderUpdated,
    TResult Function(String orderId, String partnerId,
            Map<String, dynamic> partnerData, DateTime timestamp)?
        partnerAssigned,
    TResult Function(String orderId, double latitude, double longitude,
            double heading, DateTime timestamp)?
        partnerLocationChanged,
    TResult Function(String orderId, DateTime timestamp)? orderDelivered,
    TResult Function(String orderId, String reason, DateTime timestamp)?
        orderCancelled,
    TResult Function(String shopId, bool isOpen, DateTime timestamp)?
        shopStatusChanged,
    TResult Function(String id, String title, String body,
            Map<String, dynamic> payload, DateTime timestamp)?
        notificationReceived,
    TResult Function(
            String threadId, String messageId, String text, DateTime timestamp)?
        supportMessageReceived,
    required TResult orElse(),
  }) {
    if (supportMessageReceived != null) {
      return supportMessageReceived(threadId, messageId, text, timestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderCreatedEvent value) orderCreated,
    required TResult Function(OrderUpdatedEvent value) orderUpdated,
    required TResult Function(PartnerAssignedEvent value) partnerAssigned,
    required TResult Function(PartnerLocationChangedEvent value)
        partnerLocationChanged,
    required TResult Function(OrderDeliveredEvent value) orderDelivered,
    required TResult Function(OrderCancelledEvent value) orderCancelled,
    required TResult Function(ShopStatusChangedEvent value) shopStatusChanged,
    required TResult Function(NotificationReceivedEvent value)
        notificationReceived,
    required TResult Function(SupportMessageReceivedEvent value)
        supportMessageReceived,
  }) {
    return supportMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderCreatedEvent value)? orderCreated,
    TResult? Function(OrderUpdatedEvent value)? orderUpdated,
    TResult? Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult? Function(PartnerLocationChangedEvent value)?
        partnerLocationChanged,
    TResult? Function(OrderDeliveredEvent value)? orderDelivered,
    TResult? Function(OrderCancelledEvent value)? orderCancelled,
    TResult? Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult? Function(NotificationReceivedEvent value)? notificationReceived,
    TResult? Function(SupportMessageReceivedEvent value)?
        supportMessageReceived,
  }) {
    return supportMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderCreatedEvent value)? orderCreated,
    TResult Function(OrderUpdatedEvent value)? orderUpdated,
    TResult Function(PartnerAssignedEvent value)? partnerAssigned,
    TResult Function(PartnerLocationChangedEvent value)? partnerLocationChanged,
    TResult Function(OrderDeliveredEvent value)? orderDelivered,
    TResult Function(OrderCancelledEvent value)? orderCancelled,
    TResult Function(ShopStatusChangedEvent value)? shopStatusChanged,
    TResult Function(NotificationReceivedEvent value)? notificationReceived,
    TResult Function(SupportMessageReceivedEvent value)? supportMessageReceived,
    required TResult orElse(),
  }) {
    if (supportMessageReceived != null) {
      return supportMessageReceived(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportMessageReceivedEventImplToJson(
      this,
    );
  }
}

abstract class SupportMessageReceivedEvent implements RealtimeEvent {
  const factory SupportMessageReceivedEvent(
      {required final String threadId,
      required final String messageId,
      required final String text,
      required final DateTime timestamp}) = _$SupportMessageReceivedEventImpl;

  factory SupportMessageReceivedEvent.fromJson(Map<String, dynamic> json) =
      _$SupportMessageReceivedEventImpl.fromJson;

  String get threadId;
  String get messageId;
  String get text;
  @override
  DateTime get timestamp;

  /// Create a copy of RealtimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportMessageReceivedEventImplCopyWith<_$SupportMessageReceivedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
