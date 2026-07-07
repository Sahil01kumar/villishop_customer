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
  String get id => throw _privateConstructorUsedError;
  SlotType get type => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  double get additionalCharge => throw _privateConstructorUsedError;
  String? get eta => throw _privateConstructorUsedError;

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
      {String id,
      SlotType type,
      String label,
      DateTime startTime,
      DateTime endTime,
      bool isAvailable,
      double additionalCharge,
      String? eta});
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
    Object? id = null,
    Object? type = null,
    Object? label = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isAvailable = null,
    Object? additionalCharge = null,
    Object? eta = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotType,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as double,
      eta: freezed == eta
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
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
      {String id,
      SlotType type,
      String label,
      DateTime startTime,
      DateTime endTime,
      bool isAvailable,
      double additionalCharge,
      String? eta});
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
    Object? id = null,
    Object? type = null,
    Object? label = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? isAvailable = null,
    Object? additionalCharge = null,
    Object? eta = freezed,
  }) {
    return _then(_$DeliverySlotModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlotType,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as double,
      eta: freezed == eta
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliverySlotModelImpl implements _DeliverySlotModel {
  const _$DeliverySlotModelImpl(
      {required this.id,
      required this.type,
      required this.label,
      required this.startTime,
      required this.endTime,
      this.isAvailable = true,
      this.additionalCharge = 0.0,
      this.eta});

  factory _$DeliverySlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliverySlotModelImplFromJson(json);

  @override
  final String id;
  @override
  final SlotType type;
  @override
  final String label;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  @JsonKey()
  final double additionalCharge;
  @override
  final String? eta;

  @override
  String toString() {
    return 'DeliverySlotModel(id: $id, type: $type, label: $label, startTime: $startTime, endTime: $endTime, isAvailable: $isAvailable, additionalCharge: $additionalCharge, eta: $eta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverySlotModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.additionalCharge, additionalCharge) ||
                other.additionalCharge == additionalCharge) &&
            (identical(other.eta, eta) || other.eta == eta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, label, startTime,
      endTime, isAvailable, additionalCharge, eta);

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
      {required final String id,
      required final SlotType type,
      required final String label,
      required final DateTime startTime,
      required final DateTime endTime,
      final bool isAvailable,
      final double additionalCharge,
      final String? eta}) = _$DeliverySlotModelImpl;

  factory _DeliverySlotModel.fromJson(Map<String, dynamic> json) =
      _$DeliverySlotModelImpl.fromJson;

  @override
  String get id;
  @override
  SlotType get type;
  @override
  String get label;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  bool get isAvailable;
  @override
  double get additionalCharge;
  @override
  String? get eta;

  /// Create a copy of DeliverySlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliverySlotModelImplCopyWith<_$DeliverySlotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
