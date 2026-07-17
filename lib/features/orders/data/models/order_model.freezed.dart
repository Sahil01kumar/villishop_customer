// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get orderId => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get trackingId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  OrderLifecycleState get lifecycleState => throw _privateConstructorUsedError;
  OrderPaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  List<ShopOrderModel> get shopOrders =>
      throw _privateConstructorUsedError; // Snapshots (Immutable)
  AddressModel get deliveryAddressSnapshot =>
      throw _privateConstructorUsedError;
  DeliverySlotModel get deliverySlotSnapshot =>
      throw _privateConstructorUsedError;
  PaymentMethodModel get paymentMethodSnapshot =>
      throw _privateConstructorUsedError;
  InvoiceModel get invoiceSnapshot => throw _privateConstructorUsedError;
  List<OrderTimelineModel> get timeline => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get partnerAssignedAt => throw _privateConstructorUsedError;
  DateTime? get onTheWayAt => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get orderNote => throw _privateConstructorUsedError;
  List<String> get specialInstructions => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String orderId,
      String orderNumber,
      String trackingId,
      String customerId,
      OrderStatus status,
      OrderLifecycleState lifecycleState,
      OrderPaymentStatus paymentStatus,
      List<ShopOrderModel> shopOrders,
      AddressModel deliveryAddressSnapshot,
      DeliverySlotModel deliverySlotSnapshot,
      PaymentMethodModel paymentMethodSnapshot,
      InvoiceModel invoiceSnapshot,
      List<OrderTimelineModel> timeline,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? partnerAssignedAt,
      DateTime? onTheWayAt,
      DateTime? deliveredAt,
      DateTime? cancelledAt,
      String? orderNote,
      List<String> specialInstructions});

  $AddressModelCopyWith<$Res> get deliveryAddressSnapshot;
  $DeliverySlotModelCopyWith<$Res> get deliverySlotSnapshot;
  $PaymentMethodModelCopyWith<$Res> get paymentMethodSnapshot;
  $InvoiceModelCopyWith<$Res> get invoiceSnapshot;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNumber = null,
    Object? trackingId = null,
    Object? customerId = null,
    Object? status = null,
    Object? lifecycleState = null,
    Object? paymentStatus = null,
    Object? shopOrders = null,
    Object? deliveryAddressSnapshot = null,
    Object? deliverySlotSnapshot = null,
    Object? paymentMethodSnapshot = null,
    Object? invoiceSnapshot = null,
    Object? timeline = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? partnerAssignedAt = freezed,
    Object? onTheWayAt = freezed,
    Object? deliveredAt = freezed,
    Object? cancelledAt = freezed,
    Object? orderNote = freezed,
    Object? specialInstructions = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      lifecycleState: null == lifecycleState
          ? _value.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as OrderLifecycleState,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as OrderPaymentStatus,
      shopOrders: null == shopOrders
          ? _value.shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as List<ShopOrderModel>,
      deliveryAddressSnapshot: null == deliveryAddressSnapshot
          ? _value.deliveryAddressSnapshot
          : deliveryAddressSnapshot // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      deliverySlotSnapshot: null == deliverySlotSnapshot
          ? _value.deliverySlotSnapshot
          : deliverySlotSnapshot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel,
      paymentMethodSnapshot: null == paymentMethodSnapshot
          ? _value.paymentMethodSnapshot
          : paymentMethodSnapshot // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel,
      invoiceSnapshot: null == invoiceSnapshot
          ? _value.invoiceSnapshot
          : invoiceSnapshot // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<OrderTimelineModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partnerAssignedAt: freezed == partnerAssignedAt
          ? _value.partnerAssignedAt
          : partnerAssignedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      onTheWayAt: freezed == onTheWayAt
          ? _value.onTheWayAt
          : onTheWayAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderNote: freezed == orderNote
          ? _value.orderNote
          : orderNote // ignore: cast_nullable_to_non_nullable
              as String?,
      specialInstructions: null == specialInstructions
          ? _value.specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get deliveryAddressSnapshot {
    return $AddressModelCopyWith<$Res>(_value.deliveryAddressSnapshot, (value) {
      return _then(_value.copyWith(deliveryAddressSnapshot: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliverySlotModelCopyWith<$Res> get deliverySlotSnapshot {
    return $DeliverySlotModelCopyWith<$Res>(_value.deliverySlotSnapshot,
        (value) {
      return _then(_value.copyWith(deliverySlotSnapshot: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodModelCopyWith<$Res> get paymentMethodSnapshot {
    return $PaymentMethodModelCopyWith<$Res>(_value.paymentMethodSnapshot,
        (value) {
      return _then(_value.copyWith(paymentMethodSnapshot: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceModelCopyWith<$Res> get invoiceSnapshot {
    return $InvoiceModelCopyWith<$Res>(_value.invoiceSnapshot, (value) {
      return _then(_value.copyWith(invoiceSnapshot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String orderNumber,
      String trackingId,
      String customerId,
      OrderStatus status,
      OrderLifecycleState lifecycleState,
      OrderPaymentStatus paymentStatus,
      List<ShopOrderModel> shopOrders,
      AddressModel deliveryAddressSnapshot,
      DeliverySlotModel deliverySlotSnapshot,
      PaymentMethodModel paymentMethodSnapshot,
      InvoiceModel invoiceSnapshot,
      List<OrderTimelineModel> timeline,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? partnerAssignedAt,
      DateTime? onTheWayAt,
      DateTime? deliveredAt,
      DateTime? cancelledAt,
      String? orderNote,
      List<String> specialInstructions});

  @override
  $AddressModelCopyWith<$Res> get deliveryAddressSnapshot;
  @override
  $DeliverySlotModelCopyWith<$Res> get deliverySlotSnapshot;
  @override
  $PaymentMethodModelCopyWith<$Res> get paymentMethodSnapshot;
  @override
  $InvoiceModelCopyWith<$Res> get invoiceSnapshot;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNumber = null,
    Object? trackingId = null,
    Object? customerId = null,
    Object? status = null,
    Object? lifecycleState = null,
    Object? paymentStatus = null,
    Object? shopOrders = null,
    Object? deliveryAddressSnapshot = null,
    Object? deliverySlotSnapshot = null,
    Object? paymentMethodSnapshot = null,
    Object? invoiceSnapshot = null,
    Object? timeline = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? partnerAssignedAt = freezed,
    Object? onTheWayAt = freezed,
    Object? deliveredAt = freezed,
    Object? cancelledAt = freezed,
    Object? orderNote = freezed,
    Object? specialInstructions = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      lifecycleState: null == lifecycleState
          ? _value.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as OrderLifecycleState,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as OrderPaymentStatus,
      shopOrders: null == shopOrders
          ? _value._shopOrders
          : shopOrders // ignore: cast_nullable_to_non_nullable
              as List<ShopOrderModel>,
      deliveryAddressSnapshot: null == deliveryAddressSnapshot
          ? _value.deliveryAddressSnapshot
          : deliveryAddressSnapshot // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      deliverySlotSnapshot: null == deliverySlotSnapshot
          ? _value.deliverySlotSnapshot
          : deliverySlotSnapshot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel,
      paymentMethodSnapshot: null == paymentMethodSnapshot
          ? _value.paymentMethodSnapshot
          : paymentMethodSnapshot // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel,
      invoiceSnapshot: null == invoiceSnapshot
          ? _value.invoiceSnapshot
          : invoiceSnapshot // ignore: cast_nullable_to_non_nullable
              as InvoiceModel,
      timeline: null == timeline
          ? _value._timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<OrderTimelineModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partnerAssignedAt: freezed == partnerAssignedAt
          ? _value.partnerAssignedAt
          : partnerAssignedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      onTheWayAt: freezed == onTheWayAt
          ? _value.onTheWayAt
          : onTheWayAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderNote: freezed == orderNote
          ? _value.orderNote
          : orderNote // ignore: cast_nullable_to_non_nullable
              as String?,
      specialInstructions: null == specialInstructions
          ? _value._specialInstructions
          : specialInstructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.orderId,
      required this.orderNumber,
      required this.trackingId,
      required this.customerId,
      required this.status,
      required this.lifecycleState,
      required this.paymentStatus,
      required final List<ShopOrderModel> shopOrders,
      required this.deliveryAddressSnapshot,
      required this.deliverySlotSnapshot,
      required this.paymentMethodSnapshot,
      required this.invoiceSnapshot,
      required final List<OrderTimelineModel> timeline,
      required this.createdAt,
      this.updatedAt,
      this.partnerAssignedAt,
      this.onTheWayAt,
      this.deliveredAt,
      this.cancelledAt,
      this.orderNote,
      final List<String> specialInstructions = const []})
      : _shopOrders = shopOrders,
        _timeline = timeline,
        _specialInstructions = specialInstructions;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final String orderId;
  @override
  final String orderNumber;
  @override
  final String trackingId;
  @override
  final String customerId;
  @override
  final OrderStatus status;
  @override
  final OrderLifecycleState lifecycleState;
  @override
  final OrderPaymentStatus paymentStatus;
  final List<ShopOrderModel> _shopOrders;
  @override
  List<ShopOrderModel> get shopOrders {
    if (_shopOrders is EqualUnmodifiableListView) return _shopOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopOrders);
  }

// Snapshots (Immutable)
  @override
  final AddressModel deliveryAddressSnapshot;
  @override
  final DeliverySlotModel deliverySlotSnapshot;
  @override
  final PaymentMethodModel paymentMethodSnapshot;
  @override
  final InvoiceModel invoiceSnapshot;
  final List<OrderTimelineModel> _timeline;
  @override
  List<OrderTimelineModel> get timeline {
    if (_timeline is EqualUnmodifiableListView) return _timeline;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeline);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? partnerAssignedAt;
  @override
  final DateTime? onTheWayAt;
  @override
  final DateTime? deliveredAt;
  @override
  final DateTime? cancelledAt;
  @override
  final String? orderNote;
  final List<String> _specialInstructions;
  @override
  @JsonKey()
  List<String> get specialInstructions {
    if (_specialInstructions is EqualUnmodifiableListView)
      return _specialInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialInstructions);
  }

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, orderNumber: $orderNumber, trackingId: $trackingId, customerId: $customerId, status: $status, lifecycleState: $lifecycleState, paymentStatus: $paymentStatus, shopOrders: $shopOrders, deliveryAddressSnapshot: $deliveryAddressSnapshot, deliverySlotSnapshot: $deliverySlotSnapshot, paymentMethodSnapshot: $paymentMethodSnapshot, invoiceSnapshot: $invoiceSnapshot, timeline: $timeline, createdAt: $createdAt, updatedAt: $updatedAt, partnerAssignedAt: $partnerAssignedAt, onTheWayAt: $onTheWayAt, deliveredAt: $deliveredAt, cancelledAt: $cancelledAt, orderNote: $orderNote, specialInstructions: $specialInstructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lifecycleState, lifecycleState) ||
                other.lifecycleState == lifecycleState) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other._shopOrders, _shopOrders) &&
            (identical(
                    other.deliveryAddressSnapshot, deliveryAddressSnapshot) ||
                other.deliveryAddressSnapshot == deliveryAddressSnapshot) &&
            (identical(other.deliverySlotSnapshot, deliverySlotSnapshot) ||
                other.deliverySlotSnapshot == deliverySlotSnapshot) &&
            (identical(other.paymentMethodSnapshot, paymentMethodSnapshot) ||
                other.paymentMethodSnapshot == paymentMethodSnapshot) &&
            (identical(other.invoiceSnapshot, invoiceSnapshot) ||
                other.invoiceSnapshot == invoiceSnapshot) &&
            const DeepCollectionEquality().equals(other._timeline, _timeline) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.partnerAssignedAt, partnerAssignedAt) ||
                other.partnerAssignedAt == partnerAssignedAt) &&
            (identical(other.onTheWayAt, onTheWayAt) ||
                other.onTheWayAt == onTheWayAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.orderNote, orderNote) ||
                other.orderNote == orderNote) &&
            const DeepCollectionEquality()
                .equals(other._specialInstructions, _specialInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderId,
        orderNumber,
        trackingId,
        customerId,
        status,
        lifecycleState,
        paymentStatus,
        const DeepCollectionEquality().hash(_shopOrders),
        deliveryAddressSnapshot,
        deliverySlotSnapshot,
        paymentMethodSnapshot,
        invoiceSnapshot,
        const DeepCollectionEquality().hash(_timeline),
        createdAt,
        updatedAt,
        partnerAssignedAt,
        onTheWayAt,
        deliveredAt,
        cancelledAt,
        orderNote,
        const DeepCollectionEquality().hash(_specialInstructions)
      ]);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final String orderId,
      required final String orderNumber,
      required final String trackingId,
      required final String customerId,
      required final OrderStatus status,
      required final OrderLifecycleState lifecycleState,
      required final OrderPaymentStatus paymentStatus,
      required final List<ShopOrderModel> shopOrders,
      required final AddressModel deliveryAddressSnapshot,
      required final DeliverySlotModel deliverySlotSnapshot,
      required final PaymentMethodModel paymentMethodSnapshot,
      required final InvoiceModel invoiceSnapshot,
      required final List<OrderTimelineModel> timeline,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final DateTime? partnerAssignedAt,
      final DateTime? onTheWayAt,
      final DateTime? deliveredAt,
      final DateTime? cancelledAt,
      final String? orderNote,
      final List<String> specialInstructions}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get orderId;
  @override
  String get orderNumber;
  @override
  String get trackingId;
  @override
  String get customerId;
  @override
  OrderStatus get status;
  @override
  OrderLifecycleState get lifecycleState;
  @override
  OrderPaymentStatus get paymentStatus;
  @override
  List<ShopOrderModel> get shopOrders; // Snapshots (Immutable)
  @override
  AddressModel get deliveryAddressSnapshot;
  @override
  DeliverySlotModel get deliverySlotSnapshot;
  @override
  PaymentMethodModel get paymentMethodSnapshot;
  @override
  InvoiceModel get invoiceSnapshot;
  @override
  List<OrderTimelineModel> get timeline;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get partnerAssignedAt;
  @override
  DateTime? get onTheWayAt;
  @override
  DateTime? get deliveredAt;
  @override
  DateTime? get cancelledAt;
  @override
  String? get orderNote;
  @override
  List<String> get specialInstructions;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopOrderModel _$ShopOrderModelFromJson(Map<String, dynamic> json) {
  return _ShopOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ShopOrderModel {
  String get shopOrderId => throw _privateConstructorUsedError;
  String get masterOrderId => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  List<CartItemModel> get items => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  double get shopDiscount => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  DateTime? get acceptedAt => throw _privateConstructorUsedError;
  DateTime? get preparedAt => throw _privateConstructorUsedError;
  DateTime? get pickedAt => throw _privateConstructorUsedError;

  /// Serializes this ShopOrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopOrderModelCopyWith<ShopOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopOrderModelCopyWith<$Res> {
  factory $ShopOrderModelCopyWith(
          ShopOrderModel value, $Res Function(ShopOrderModel) then) =
      _$ShopOrderModelCopyWithImpl<$Res, ShopOrderModel>;
  @useResult
  $Res call(
      {String shopOrderId,
      String masterOrderId,
      String shopId,
      String shopName,
      List<CartItemModel> items,
      OrderStatus status,
      double subTotal,
      double deliveryCharge,
      double shopDiscount,
      double totalAmount,
      DateTime? acceptedAt,
      DateTime? preparedAt,
      DateTime? pickedAt});
}

/// @nodoc
class _$ShopOrderModelCopyWithImpl<$Res, $Val extends ShopOrderModel>
    implements $ShopOrderModelCopyWith<$Res> {
  _$ShopOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderId = null,
    Object? masterOrderId = null,
    Object? shopId = null,
    Object? shopName = null,
    Object? items = null,
    Object? status = null,
    Object? subTotal = null,
    Object? deliveryCharge = null,
    Object? shopDiscount = null,
    Object? totalAmount = null,
    Object? acceptedAt = freezed,
    Object? preparedAt = freezed,
    Object? pickedAt = freezed,
  }) {
    return _then(_value.copyWith(
      shopOrderId: null == shopOrderId
          ? _value.shopOrderId
          : shopOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      masterOrderId: null == masterOrderId
          ? _value.masterOrderId
          : masterOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      shopDiscount: null == shopDiscount
          ? _value.shopDiscount
          : shopDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preparedAt: freezed == preparedAt
          ? _value.preparedAt
          : preparedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pickedAt: freezed == pickedAt
          ? _value.pickedAt
          : pickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopOrderModelImplCopyWith<$Res>
    implements $ShopOrderModelCopyWith<$Res> {
  factory _$$ShopOrderModelImplCopyWith(_$ShopOrderModelImpl value,
          $Res Function(_$ShopOrderModelImpl) then) =
      __$$ShopOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopOrderId,
      String masterOrderId,
      String shopId,
      String shopName,
      List<CartItemModel> items,
      OrderStatus status,
      double subTotal,
      double deliveryCharge,
      double shopDiscount,
      double totalAmount,
      DateTime? acceptedAt,
      DateTime? preparedAt,
      DateTime? pickedAt});
}

/// @nodoc
class __$$ShopOrderModelImplCopyWithImpl<$Res>
    extends _$ShopOrderModelCopyWithImpl<$Res, _$ShopOrderModelImpl>
    implements _$$ShopOrderModelImplCopyWith<$Res> {
  __$$ShopOrderModelImplCopyWithImpl(
      _$ShopOrderModelImpl _value, $Res Function(_$ShopOrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopOrderId = null,
    Object? masterOrderId = null,
    Object? shopId = null,
    Object? shopName = null,
    Object? items = null,
    Object? status = null,
    Object? subTotal = null,
    Object? deliveryCharge = null,
    Object? shopDiscount = null,
    Object? totalAmount = null,
    Object? acceptedAt = freezed,
    Object? preparedAt = freezed,
    Object? pickedAt = freezed,
  }) {
    return _then(_$ShopOrderModelImpl(
      shopOrderId: null == shopOrderId
          ? _value.shopOrderId
          : shopOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      masterOrderId: null == masterOrderId
          ? _value.masterOrderId
          : masterOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      shopDiscount: null == shopDiscount
          ? _value.shopDiscount
          : shopDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      preparedAt: freezed == preparedAt
          ? _value.preparedAt
          : preparedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pickedAt: freezed == pickedAt
          ? _value.pickedAt
          : pickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopOrderModelImpl implements _ShopOrderModel {
  const _$ShopOrderModelImpl(
      {required this.shopOrderId,
      required this.masterOrderId,
      required this.shopId,
      required this.shopName,
      required final List<CartItemModel> items,
      required this.status,
      this.subTotal = 0.0,
      this.deliveryCharge = 0.0,
      this.shopDiscount = 0.0,
      this.totalAmount = 0.0,
      this.acceptedAt,
      this.preparedAt,
      this.pickedAt})
      : _items = items;

  factory _$ShopOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopOrderModelImplFromJson(json);

  @override
  final String shopOrderId;
  @override
  final String masterOrderId;
  @override
  final String shopId;
  @override
  final String shopName;
  final List<CartItemModel> _items;
  @override
  List<CartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderStatus status;
  @override
  @JsonKey()
  final double subTotal;
  @override
  @JsonKey()
  final double deliveryCharge;
  @override
  @JsonKey()
  final double shopDiscount;
  @override
  @JsonKey()
  final double totalAmount;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? preparedAt;
  @override
  final DateTime? pickedAt;

  @override
  String toString() {
    return 'ShopOrderModel(shopOrderId: $shopOrderId, masterOrderId: $masterOrderId, shopId: $shopId, shopName: $shopName, items: $items, status: $status, subTotal: $subTotal, deliveryCharge: $deliveryCharge, shopDiscount: $shopDiscount, totalAmount: $totalAmount, acceptedAt: $acceptedAt, preparedAt: $preparedAt, pickedAt: $pickedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopOrderModelImpl &&
            (identical(other.shopOrderId, shopOrderId) ||
                other.shopOrderId == shopOrderId) &&
            (identical(other.masterOrderId, masterOrderId) ||
                other.masterOrderId == masterOrderId) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.shopDiscount, shopDiscount) ||
                other.shopDiscount == shopDiscount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.preparedAt, preparedAt) ||
                other.preparedAt == preparedAt) &&
            (identical(other.pickedAt, pickedAt) ||
                other.pickedAt == pickedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shopOrderId,
      masterOrderId,
      shopId,
      shopName,
      const DeepCollectionEquality().hash(_items),
      status,
      subTotal,
      deliveryCharge,
      shopDiscount,
      totalAmount,
      acceptedAt,
      preparedAt,
      pickedAt);

  /// Create a copy of ShopOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopOrderModelImplCopyWith<_$ShopOrderModelImpl> get copyWith =>
      __$$ShopOrderModelImplCopyWithImpl<_$ShopOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopOrderModelImplToJson(
      this,
    );
  }
}

abstract class _ShopOrderModel implements ShopOrderModel {
  const factory _ShopOrderModel(
      {required final String shopOrderId,
      required final String masterOrderId,
      required final String shopId,
      required final String shopName,
      required final List<CartItemModel> items,
      required final OrderStatus status,
      final double subTotal,
      final double deliveryCharge,
      final double shopDiscount,
      final double totalAmount,
      final DateTime? acceptedAt,
      final DateTime? preparedAt,
      final DateTime? pickedAt}) = _$ShopOrderModelImpl;

  factory _ShopOrderModel.fromJson(Map<String, dynamic> json) =
      _$ShopOrderModelImpl.fromJson;

  @override
  String get shopOrderId;
  @override
  String get masterOrderId;
  @override
  String get shopId;
  @override
  String get shopName;
  @override
  List<CartItemModel> get items;
  @override
  OrderStatus get status;
  @override
  double get subTotal;
  @override
  double get deliveryCharge;
  @override
  double get shopDiscount;
  @override
  double get totalAmount;
  @override
  DateTime? get acceptedAt;
  @override
  DateTime? get preparedAt;
  @override
  DateTime? get pickedAt;

  /// Create a copy of ShopOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopOrderModelImplCopyWith<_$ShopOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderTimelineModel _$OrderTimelineModelFromJson(Map<String, dynamic> json) {
  return _OrderTimelineModel.fromJson(json);
}

/// @nodoc
mixin _$OrderTimelineModel {
  OrderStatus get status => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this OrderTimelineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderTimelineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderTimelineModelCopyWith<OrderTimelineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTimelineModelCopyWith<$Res> {
  factory $OrderTimelineModelCopyWith(
          OrderTimelineModel value, $Res Function(OrderTimelineModel) then) =
      _$OrderTimelineModelCopyWithImpl<$Res, OrderTimelineModel>;
  @useResult
  $Res call(
      {OrderStatus status,
      DateTime timestamp,
      String title,
      String? description,
      bool isCompleted});
}

/// @nodoc
class _$OrderTimelineModelCopyWithImpl<$Res, $Val extends OrderTimelineModel>
    implements $OrderTimelineModelCopyWith<$Res> {
  _$OrderTimelineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderTimelineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timestamp = null,
    Object? title = null,
    Object? description = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderTimelineModelImplCopyWith<$Res>
    implements $OrderTimelineModelCopyWith<$Res> {
  factory _$$OrderTimelineModelImplCopyWith(_$OrderTimelineModelImpl value,
          $Res Function(_$OrderTimelineModelImpl) then) =
      __$$OrderTimelineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderStatus status,
      DateTime timestamp,
      String title,
      String? description,
      bool isCompleted});
}

/// @nodoc
class __$$OrderTimelineModelImplCopyWithImpl<$Res>
    extends _$OrderTimelineModelCopyWithImpl<$Res, _$OrderTimelineModelImpl>
    implements _$$OrderTimelineModelImplCopyWith<$Res> {
  __$$OrderTimelineModelImplCopyWithImpl(_$OrderTimelineModelImpl _value,
      $Res Function(_$OrderTimelineModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderTimelineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? timestamp = null,
    Object? title = null,
    Object? description = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$OrderTimelineModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTimelineModelImpl implements _OrderTimelineModel {
  const _$OrderTimelineModelImpl(
      {required this.status,
      required this.timestamp,
      required this.title,
      this.description,
      this.isCompleted = false});

  factory _$OrderTimelineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTimelineModelImplFromJson(json);

  @override
  final OrderStatus status;
  @override
  final DateTime timestamp;
  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'OrderTimelineModel(status: $status, timestamp: $timestamp, title: $title, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTimelineModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, timestamp, title, description, isCompleted);

  /// Create a copy of OrderTimelineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTimelineModelImplCopyWith<_$OrderTimelineModelImpl> get copyWith =>
      __$$OrderTimelineModelImplCopyWithImpl<_$OrderTimelineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTimelineModelImplToJson(
      this,
    );
  }
}

abstract class _OrderTimelineModel implements OrderTimelineModel {
  const factory _OrderTimelineModel(
      {required final OrderStatus status,
      required final DateTime timestamp,
      required final String title,
      final String? description,
      final bool isCompleted}) = _$OrderTimelineModelImpl;

  factory _OrderTimelineModel.fromJson(Map<String, dynamic> json) =
      _$OrderTimelineModelImpl.fromJson;

  @override
  OrderStatus get status;
  @override
  DateTime get timestamp;
  @override
  String get title;
  @override
  String? get description;
  @override
  bool get isCompleted;

  /// Create a copy of OrderTimelineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderTimelineModelImplCopyWith<_$OrderTimelineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
