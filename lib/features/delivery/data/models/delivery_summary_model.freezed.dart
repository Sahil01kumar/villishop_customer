// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliverySummaryModel _$DeliverySummaryModelFromJson(Map<String, dynamic> json) {
  return _DeliverySummaryModel.fromJson(json);
}

/// @nodoc
mixin _$DeliverySummaryModel {
  String get shopId => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  DeliveryChargeModel get charges => throw _privateConstructorUsedError;
  DeliverySlotModel? get selectedSlot => throw _privateConstructorUsedError;
  String get estimatedEta => throw _privateConstructorUsedError;
  double get discountApplied => throw _privateConstructorUsedError;
  bool get isFreeDelivery => throw _privateConstructorUsedError;

  /// Serializes this DeliverySummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliverySummaryModelCopyWith<DeliverySummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliverySummaryModelCopyWith<$Res> {
  factory $DeliverySummaryModelCopyWith(DeliverySummaryModel value,
          $Res Function(DeliverySummaryModel) then) =
      _$DeliverySummaryModelCopyWithImpl<$Res, DeliverySummaryModel>;
  @useResult
  $Res call(
      {String shopId,
      String shopName,
      DeliveryChargeModel charges,
      DeliverySlotModel? selectedSlot,
      String estimatedEta,
      double discountApplied,
      bool isFreeDelivery});

  $DeliveryChargeModelCopyWith<$Res> get charges;
  $DeliverySlotModelCopyWith<$Res>? get selectedSlot;
}

/// @nodoc
class _$DeliverySummaryModelCopyWithImpl<$Res,
        $Val extends DeliverySummaryModel>
    implements $DeliverySummaryModelCopyWith<$Res> {
  _$DeliverySummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? shopName = null,
    Object? charges = null,
    Object? selectedSlot = freezed,
    Object? estimatedEta = null,
    Object? discountApplied = null,
    Object? isFreeDelivery = null,
  }) {
    return _then(_value.copyWith(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      charges: null == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as DeliveryChargeModel,
      selectedSlot: freezed == selectedSlot
          ? _value.selectedSlot
          : selectedSlot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel?,
      estimatedEta: null == estimatedEta
          ? _value.estimatedEta
          : estimatedEta // ignore: cast_nullable_to_non_nullable
              as String,
      discountApplied: null == discountApplied
          ? _value.discountApplied
          : discountApplied // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryChargeModelCopyWith<$Res> get charges {
    return $DeliveryChargeModelCopyWith<$Res>(_value.charges, (value) {
      return _then(_value.copyWith(charges: value) as $Val);
    });
  }

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliverySlotModelCopyWith<$Res>? get selectedSlot {
    if (_value.selectedSlot == null) {
      return null;
    }

    return $DeliverySlotModelCopyWith<$Res>(_value.selectedSlot!, (value) {
      return _then(_value.copyWith(selectedSlot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliverySummaryModelImplCopyWith<$Res>
    implements $DeliverySummaryModelCopyWith<$Res> {
  factory _$$DeliverySummaryModelImplCopyWith(_$DeliverySummaryModelImpl value,
          $Res Function(_$DeliverySummaryModelImpl) then) =
      __$$DeliverySummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopId,
      String shopName,
      DeliveryChargeModel charges,
      DeliverySlotModel? selectedSlot,
      String estimatedEta,
      double discountApplied,
      bool isFreeDelivery});

  @override
  $DeliveryChargeModelCopyWith<$Res> get charges;
  @override
  $DeliverySlotModelCopyWith<$Res>? get selectedSlot;
}

/// @nodoc
class __$$DeliverySummaryModelImplCopyWithImpl<$Res>
    extends _$DeliverySummaryModelCopyWithImpl<$Res, _$DeliverySummaryModelImpl>
    implements _$$DeliverySummaryModelImplCopyWith<$Res> {
  __$$DeliverySummaryModelImplCopyWithImpl(_$DeliverySummaryModelImpl _value,
      $Res Function(_$DeliverySummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = null,
    Object? shopName = null,
    Object? charges = null,
    Object? selectedSlot = freezed,
    Object? estimatedEta = null,
    Object? discountApplied = null,
    Object? isFreeDelivery = null,
  }) {
    return _then(_$DeliverySummaryModelImpl(
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      charges: null == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as DeliveryChargeModel,
      selectedSlot: freezed == selectedSlot
          ? _value.selectedSlot
          : selectedSlot // ignore: cast_nullable_to_non_nullable
              as DeliverySlotModel?,
      estimatedEta: null == estimatedEta
          ? _value.estimatedEta
          : estimatedEta // ignore: cast_nullable_to_non_nullable
              as String,
      discountApplied: null == discountApplied
          ? _value.discountApplied
          : discountApplied // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliverySummaryModelImpl implements _DeliverySummaryModel {
  const _$DeliverySummaryModelImpl(
      {required this.shopId,
      required this.shopName,
      required this.charges,
      this.selectedSlot,
      this.estimatedEta = '10-15 mins',
      this.discountApplied = 0.0,
      this.isFreeDelivery = false});

  factory _$DeliverySummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliverySummaryModelImplFromJson(json);

  @override
  final String shopId;
  @override
  final String shopName;
  @override
  final DeliveryChargeModel charges;
  @override
  final DeliverySlotModel? selectedSlot;
  @override
  @JsonKey()
  final String estimatedEta;
  @override
  @JsonKey()
  final double discountApplied;
  @override
  @JsonKey()
  final bool isFreeDelivery;

  @override
  String toString() {
    return 'DeliverySummaryModel(shopId: $shopId, shopName: $shopName, charges: $charges, selectedSlot: $selectedSlot, estimatedEta: $estimatedEta, discountApplied: $discountApplied, isFreeDelivery: $isFreeDelivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliverySummaryModelImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.selectedSlot, selectedSlot) ||
                other.selectedSlot == selectedSlot) &&
            (identical(other.estimatedEta, estimatedEta) ||
                other.estimatedEta == estimatedEta) &&
            (identical(other.discountApplied, discountApplied) ||
                other.discountApplied == discountApplied) &&
            (identical(other.isFreeDelivery, isFreeDelivery) ||
                other.isFreeDelivery == isFreeDelivery));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shopId, shopName, charges,
      selectedSlot, estimatedEta, discountApplied, isFreeDelivery);

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliverySummaryModelImplCopyWith<_$DeliverySummaryModelImpl>
      get copyWith =>
          __$$DeliverySummaryModelImplCopyWithImpl<_$DeliverySummaryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliverySummaryModelImplToJson(
      this,
    );
  }
}

abstract class _DeliverySummaryModel implements DeliverySummaryModel {
  const factory _DeliverySummaryModel(
      {required final String shopId,
      required final String shopName,
      required final DeliveryChargeModel charges,
      final DeliverySlotModel? selectedSlot,
      final String estimatedEta,
      final double discountApplied,
      final bool isFreeDelivery}) = _$DeliverySummaryModelImpl;

  factory _DeliverySummaryModel.fromJson(Map<String, dynamic> json) =
      _$DeliverySummaryModelImpl.fromJson;

  @override
  String get shopId;
  @override
  String get shopName;
  @override
  DeliveryChargeModel get charges;
  @override
  DeliverySlotModel? get selectedSlot;
  @override
  String get estimatedEta;
  @override
  double get discountApplied;
  @override
  bool get isFreeDelivery;

  /// Create a copy of DeliverySummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliverySummaryModelImplCopyWith<_$DeliverySummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
