// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_success_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderSuccessModel _$OrderSuccessModelFromJson(Map<String, dynamic> json) {
  return _OrderSuccessModel.fromJson(json);
}

/// @nodoc
mixin _$OrderSuccessModel {
  String get orderId => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get trackingId => throw _privateConstructorUsedError;
  int get deliveryETA => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get invoiceNumber => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  double get grandTotal => throw _privateConstructorUsedError;
  double get savings => throw _privateConstructorUsedError;
  int get totalQuantity => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  bool get isRiderAssigned => throw _privateConstructorUsedError;
  String? get riderName =>
      throw _privateConstructorUsedError; // Fee breakdown for Success UI
  double get platformFee => throw _privateConstructorUsedError;
  double get packingCharge => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  double get gstAmount => throw _privateConstructorUsedError;

  /// Serializes this OrderSuccessModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderSuccessModelCopyWith<OrderSuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSuccessModelCopyWith<$Res> {
  factory $OrderSuccessModelCopyWith(
          OrderSuccessModel value, $Res Function(OrderSuccessModel) then) =
      _$OrderSuccessModelCopyWithImpl<$Res, OrderSuccessModel>;
  @useResult
  $Res call(
      {String orderId,
      String orderNumber,
      String trackingId,
      int deliveryETA,
      String deliveryType,
      String paymentMethod,
      String paymentStatus,
      String invoiceNumber,
      OrderStatus orderStatus,
      double grandTotal,
      double savings,
      int totalQuantity,
      int totalItems,
      bool isRiderAssigned,
      String? riderName,
      double platformFee,
      double packingCharge,
      double deliveryCharge,
      double gstAmount});
}

/// @nodoc
class _$OrderSuccessModelCopyWithImpl<$Res, $Val extends OrderSuccessModel>
    implements $OrderSuccessModelCopyWith<$Res> {
  _$OrderSuccessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNumber = null,
    Object? trackingId = null,
    Object? deliveryETA = null,
    Object? deliveryType = null,
    Object? paymentMethod = null,
    Object? paymentStatus = null,
    Object? invoiceNumber = null,
    Object? orderStatus = null,
    Object? grandTotal = null,
    Object? savings = null,
    Object? totalQuantity = null,
    Object? totalItems = null,
    Object? isRiderAssigned = null,
    Object? riderName = freezed,
    Object? platformFee = null,
    Object? packingCharge = null,
    Object? deliveryCharge = null,
    Object? gstAmount = null,
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
      deliveryETA: null == deliveryETA
          ? _value.deliveryETA
          : deliveryETA // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      isRiderAssigned: null == isRiderAssigned
          ? _value.isRiderAssigned
          : isRiderAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      riderName: freezed == riderName
          ? _value.riderName
          : riderName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as double,
      packingCharge: null == packingCharge
          ? _value.packingCharge
          : packingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderSuccessModelImplCopyWith<$Res>
    implements $OrderSuccessModelCopyWith<$Res> {
  factory _$$OrderSuccessModelImplCopyWith(_$OrderSuccessModelImpl value,
          $Res Function(_$OrderSuccessModelImpl) then) =
      __$$OrderSuccessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String orderNumber,
      String trackingId,
      int deliveryETA,
      String deliveryType,
      String paymentMethod,
      String paymentStatus,
      String invoiceNumber,
      OrderStatus orderStatus,
      double grandTotal,
      double savings,
      int totalQuantity,
      int totalItems,
      bool isRiderAssigned,
      String? riderName,
      double platformFee,
      double packingCharge,
      double deliveryCharge,
      double gstAmount});
}

/// @nodoc
class __$$OrderSuccessModelImplCopyWithImpl<$Res>
    extends _$OrderSuccessModelCopyWithImpl<$Res, _$OrderSuccessModelImpl>
    implements _$$OrderSuccessModelImplCopyWith<$Res> {
  __$$OrderSuccessModelImplCopyWithImpl(_$OrderSuccessModelImpl _value,
      $Res Function(_$OrderSuccessModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNumber = null,
    Object? trackingId = null,
    Object? deliveryETA = null,
    Object? deliveryType = null,
    Object? paymentMethod = null,
    Object? paymentStatus = null,
    Object? invoiceNumber = null,
    Object? orderStatus = null,
    Object? grandTotal = null,
    Object? savings = null,
    Object? totalQuantity = null,
    Object? totalItems = null,
    Object? isRiderAssigned = null,
    Object? riderName = freezed,
    Object? platformFee = null,
    Object? packingCharge = null,
    Object? deliveryCharge = null,
    Object? gstAmount = null,
  }) {
    return _then(_$OrderSuccessModelImpl(
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
      deliveryETA: null == deliveryETA
          ? _value.deliveryETA
          : deliveryETA // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      isRiderAssigned: null == isRiderAssigned
          ? _value.isRiderAssigned
          : isRiderAssigned // ignore: cast_nullable_to_non_nullable
              as bool,
      riderName: freezed == riderName
          ? _value.riderName
          : riderName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformFee: null == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as double,
      packingCharge: null == packingCharge
          ? _value.packingCharge
          : packingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmount: null == gstAmount
          ? _value.gstAmount
          : gstAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderSuccessModelImpl implements _OrderSuccessModel {
  const _$OrderSuccessModelImpl(
      {required this.orderId,
      required this.orderNumber,
      required this.trackingId,
      required this.deliveryETA,
      required this.deliveryType,
      required this.paymentMethod,
      required this.paymentStatus,
      required this.invoiceNumber,
      required this.orderStatus,
      required this.grandTotal,
      required this.savings,
      required this.totalQuantity,
      required this.totalItems,
      this.isRiderAssigned = false,
      this.riderName,
      this.platformFee = 0.0,
      this.packingCharge = 0.0,
      this.deliveryCharge = 0.0,
      this.gstAmount = 0.0});

  factory _$OrderSuccessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderSuccessModelImplFromJson(json);

  @override
  final String orderId;
  @override
  final String orderNumber;
  @override
  final String trackingId;
  @override
  final int deliveryETA;
  @override
  final String deliveryType;
  @override
  final String paymentMethod;
  @override
  final String paymentStatus;
  @override
  final String invoiceNumber;
  @override
  final OrderStatus orderStatus;
  @override
  final double grandTotal;
  @override
  final double savings;
  @override
  final int totalQuantity;
  @override
  final int totalItems;
  @override
  @JsonKey()
  final bool isRiderAssigned;
  @override
  final String? riderName;
// Fee breakdown for Success UI
  @override
  @JsonKey()
  final double platformFee;
  @override
  @JsonKey()
  final double packingCharge;
  @override
  @JsonKey()
  final double deliveryCharge;
  @override
  @JsonKey()
  final double gstAmount;

  @override
  String toString() {
    return 'OrderSuccessModel(orderId: $orderId, orderNumber: $orderNumber, trackingId: $trackingId, deliveryETA: $deliveryETA, deliveryType: $deliveryType, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, invoiceNumber: $invoiceNumber, orderStatus: $orderStatus, grandTotal: $grandTotal, savings: $savings, totalQuantity: $totalQuantity, totalItems: $totalItems, isRiderAssigned: $isRiderAssigned, riderName: $riderName, platformFee: $platformFee, packingCharge: $packingCharge, deliveryCharge: $deliveryCharge, gstAmount: $gstAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSuccessModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.deliveryETA, deliveryETA) ||
                other.deliveryETA == deliveryETA) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.savings, savings) || other.savings == savings) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.isRiderAssigned, isRiderAssigned) ||
                other.isRiderAssigned == isRiderAssigned) &&
            (identical(other.riderName, riderName) ||
                other.riderName == riderName) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.packingCharge, packingCharge) ||
                other.packingCharge == packingCharge) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.gstAmount, gstAmount) ||
                other.gstAmount == gstAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderId,
        orderNumber,
        trackingId,
        deliveryETA,
        deliveryType,
        paymentMethod,
        paymentStatus,
        invoiceNumber,
        orderStatus,
        grandTotal,
        savings,
        totalQuantity,
        totalItems,
        isRiderAssigned,
        riderName,
        platformFee,
        packingCharge,
        deliveryCharge,
        gstAmount
      ]);

  /// Create a copy of OrderSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSuccessModelImplCopyWith<_$OrderSuccessModelImpl> get copyWith =>
      __$$OrderSuccessModelImplCopyWithImpl<_$OrderSuccessModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderSuccessModelImplToJson(
      this,
    );
  }
}

abstract class _OrderSuccessModel implements OrderSuccessModel {
  const factory _OrderSuccessModel(
      {required final String orderId,
      required final String orderNumber,
      required final String trackingId,
      required final int deliveryETA,
      required final String deliveryType,
      required final String paymentMethod,
      required final String paymentStatus,
      required final String invoiceNumber,
      required final OrderStatus orderStatus,
      required final double grandTotal,
      required final double savings,
      required final int totalQuantity,
      required final int totalItems,
      final bool isRiderAssigned,
      final String? riderName,
      final double platformFee,
      final double packingCharge,
      final double deliveryCharge,
      final double gstAmount}) = _$OrderSuccessModelImpl;

  factory _OrderSuccessModel.fromJson(Map<String, dynamic> json) =
      _$OrderSuccessModelImpl.fromJson;

  @override
  String get orderId;
  @override
  String get orderNumber;
  @override
  String get trackingId;
  @override
  int get deliveryETA;
  @override
  String get deliveryType;
  @override
  String get paymentMethod;
  @override
  String get paymentStatus;
  @override
  String get invoiceNumber;
  @override
  OrderStatus get orderStatus;
  @override
  double get grandTotal;
  @override
  double get savings;
  @override
  int get totalQuantity;
  @override
  int get totalItems;
  @override
  bool get isRiderAssigned;
  @override
  String? get riderName; // Fee breakdown for Success UI
  @override
  double get platformFee;
  @override
  double get packingCharge;
  @override
  double get deliveryCharge;
  @override
  double get gstAmount;

  /// Create a copy of OrderSuccessModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderSuccessModelImplCopyWith<_$OrderSuccessModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
