// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliverySlotModel _$DeliverySlotModelFromJson(Map<String, dynamic> json) {
  return _DeliverySlotModel.fromJson(json);
}

/// @nodoc
mixin _$DeliverySlotModel {
  String get slotId => throw _privateConstructorUsedError;
  DeliveryType get deliveryType => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get estimatedMinutes => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  double get originalCharge => throw _privateConstructorUsedError;
  bool get isFree => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  int get remainingCapacity => throw _privateConstructorUsedError;
  String? get offerTag => throw _privateConstructorUsedError;
  String? get badge => throw _privateConstructorUsedError;
  String? get unavailableReason => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this DeliverySlotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliverySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliverySlotModelCopyWith<DeliverySlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverySlotModelCopyWith<$Res> {
  factory $DeliverySlotModelCopyWith(
          DeliverySlotModel value, $Res Function(DeliverySlotModel) then) =
      _$DeliverySlotModelCopyWithImpl<$Res, DeliverySlotModel>;
  @useResult
  $Res call(
      {String slotId,
      DeliveryType deliveryType,
      DateTime startTime,
      DateTime endTime,
      int estimatedMinutes,
      double deliveryCharge,
      double originalCharge,
      bool isFree,
      bool isAvailable,
      int priority,
      int capacity,
      int remainingCapacity,
      String? offerTag,
      String? badge,
      String? unavailableReason,
      String? label});
}

/// @nodoc
class _$DeliverySlotModelCopyWithImpl<$Res, $Val extends DeliverySlotModel>
    implements $DeliverySlotModelCopyWith<$Res> {
  _$DeliverySlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliverySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slotId = null,
    Object? deliveryType = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? estimatedMinutes = null,
    Object? deliveryCharge = null,
    Object? originalCharge = null,
    Object? isFree = null,
    Object? isAvailable = null,
    Object? priority = null,
    Object? capacity = null,
    Object? remainingCapacity = null,
    Object? offerTag = freezed,
    Object? badge = freezed,
    Object? unavailableReason = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      slotId: null == slotId
          ? _value.slotId
          : slotId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedMinutes: null == estimatedMinutes
          ? _value.estimatedMinutes
          : estimatedMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      originalCharge: null == originalCharge
          ? _value.originalCharge
          : originalCharge // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      remainingCapacity: null == remainingCapacity
          ? _value.remainingCapacity
          : remainingCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      offerTag: freezed == offerTag
          ? _value.offerTag
          : offerTag // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      unavailableReason: freezed == unavailableReason
          ? _value.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliverySlotModelImplCopyWith<$Res>
    implements $DeliverySlotModelCopyWith<$Res> {
  factory _$$DeliverySlotModelImplCopyWith(_$DeliverySlotModelImpl value,
          $Res Function(_$DeliverySlotModelImpl) then) =
      __$$DeliverySlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String slotId,
      DeliveryType deliveryType,
      DateTime startTime,
      DateTime endTime,
      int estimatedMinutes,
      double deliveryCharge,
      double originalCharge,
      bool isFree,
      bool isAvailable,
      int priority,
      int capacity,
      int remainingCapacity,
      String? offerTag,
      String? badge,
      String? unavailableReason,
      String? label});
}

/// @nodoc
class __$$DeliverySlotModelImplCopyWithImpl<$Res>
    extends _$DeliverySlotModelCopyWithImpl<$Res, _$DeliverySlotModelImpl>
    implements _$$DeliverySlotModelImplCopyWith<$Res> {
  __$$DeliverySlotModelImplCopyWithImpl(_$DeliverySlotModelImpl _value,
      $Res Function(_$DeliverySlotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliverySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slotId = null,
    Object? deliveryType = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? estimatedMinutes = null,
    Object? deliveryCharge = null,
    Object? originalCharge = null,
    Object? isFree = null,
    Object? isAvailable = null,
    Object? priority = null,
    Object? capacity = null,
    Object? remainingCapacity = null,
    Object? offerTag = freezed,
    Object? badge = freezed,
    Object? unavailableReason = freezed,
    Object? label = freezed,
  }) {
    return _then(_$DeliverySlotModelImpl(
      slotId: null == slotId
          ? _value.slotId
          : slotId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryType,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedMinutes: null == estimatedMinutes
          ? _value.estimatedMinutes
          : estimatedMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      originalCharge: null == originalCharge
          ? _value.originalCharge
          : originalCharge // ignore: cast_nullable_to_non_nullable
              as double,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      remainingCapacity: null == remainingCapacity
          ? _value.remainingCapacity
          : remainingCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      offerTag: freezed == offerTag
          ? _value.offerTag
          : offerTag // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
      unavailableReason: freezed == unavailableReason
          ? _value.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliverySlotModelImpl implements _DeliverySlotModel {
  const _$DeliverySlotModelImpl(
      {required this.slotId,
      required this.deliveryType,
      required this.startTime,
      required this.endTime,
      this.estimatedMinutes = 0,
      this.deliveryCharge = 0.0,
      this.originalCharge = 0.0,
      this.isFree = false,
      this.isAvailable = true,
      this.priority = 0,
      this.capacity = 0,
      this.remainingCapacity = 0,
      this.offerTag,
      this.badge,
      this.unavailableReason,
      this.label});

  factory _$DeliverySlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliverySlotModelImplFromJson(json);

  @override
  final String slotId;
  @override
  final DeliveryType deliveryType;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey()
  final int estimatedMinutes;
  @override
  @JsonKey()
  final double deliveryCharge;
  @override
  @JsonKey()
  final double originalCharge;
  @override
  @JsonKey()
  final bool isFree;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  @JsonKey()
  final int priority;
  @override
  @JsonKey()
  final int capacity;
  @override
  @JsonKey()
  final int remainingCapacity;
  @override
  final String? offerTag;
  @override
  final String? badge;
  @override
  final String? unavailableReason;
  @override
  final String? label;

  @override
  String toString() {
    return 'DeliverySlotModel(slotId: $slotId, deliveryType: $deliveryType, startTime: $startTime, endTime: $endTime, estimatedMinutes: $estimatedMinutes, deliveryCharge: $deliveryCharge, originalCharge: $originalCharge, isFree: $isFree, isAvailable: $isAvailable, priority: $priority, capacity: $capacity, remainingCapacity: $remainingCapacity, offerTag: $offerTag, badge: $badge, unavailableReason: $unavailableReason, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverySlotModelImpl &&
            (identical(other.slotId, slotId) || other.slotId == slotId) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.estimatedMinutes, estimatedMinutes) ||
                other.estimatedMinutes == estimatedMinutes) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.originalCharge, originalCharge) ||
                other.originalCharge == originalCharge) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.remainingCapacity, remainingCapacity) ||
                other.remainingCapacity == remainingCapacity) &&
            (identical(other.offerTag, offerTag) ||
                other.offerTag == offerTag) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      slotId,
      deliveryType,
      startTime,
      endTime,
      estimatedMinutes,
      deliveryCharge,
      originalCharge,
      isFree,
      isAvailable,
      priority,
      capacity,
      remainingCapacity,
      offerTag,
      badge,
      unavailableReason,
      label);

  /// Create a copy of DeliverySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverySlotModelImplCopyWith<_$DeliverySlotModelImpl> get copyWith =>
      __$$DeliverySlotModelImplCopyWithImpl<_$DeliverySlotModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliverySlotModelImplToJson(
      this,
    );
  }
}

abstract class _DeliverySlotModel implements DeliverySlotModel {
  const factory _DeliverySlotModel(
      {required final String slotId,
      required final DeliveryType deliveryType,
      required final DateTime startTime,
      required final DateTime endTime,
      final int estimatedMinutes,
      final double deliveryCharge,
      final double originalCharge,
      final bool isFree,
      final bool isAvailable,
      final int priority,
      final int capacity,
      final int remainingCapacity,
      final String? offerTag,
      final String? badge,
      final String? unavailableReason,
      final String? label}) = _$DeliverySlotModelImpl;

  factory _DeliverySlotModel.fromJson(Map<String, dynamic> json) =
      _$DeliverySlotModelImpl.fromJson;

  @override
  String get slotId;
  @override
  DeliveryType get deliveryType;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get estimatedMinutes;
  @override
  double get deliveryCharge;
  @override
  double get originalCharge;
  @override
  bool get isFree;
  @override
  bool get isAvailable;
  @override
  int get priority;
  @override
  int get capacity;
  @override
  int get remainingCapacity;
  @override
  String? get offerTag;
  @override
  String? get badge;
  @override
  String? get unavailableReason;
  @override
  String? get label;

  /// Create a copy of DeliverySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliverySlotModelImplCopyWith<_$DeliverySlotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
