// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_charge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryChargeModel _$DeliveryChargeModelFromJson(Map<String, dynamic> json) {
  return _DeliveryChargeModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryChargeModel {
  double get baseCharge => throw _privateConstructorUsedError;
  double get distanceCharge => throw _privateConstructorUsedError;
  double get weightCharge => throw _privateConstructorUsedError;
  double get volumeCharge => throw _privateConstructorUsedError;
  double get surgeCharge =>
      throw _privateConstructorUsedError; // Rain, Festival, Night
  double get packagingCharge => throw _privateConstructorUsedError;
  double get handlingCharge => throw _privateConstructorUsedError;
  double get fragileItemCharge => throw _privateConstructorUsedError;
  double get coldStorageCharge => throw _privateConstructorUsedError;
  double get expressCharge => throw _privateConstructorUsedError;
  double get totalCharge =>
      throw _privateConstructorUsedError; // Revenue Ready Fields
  double get deliveryPartnerEarning => throw _privateConstructorUsedError;
  double get platformMargin => throw _privateConstructorUsedError;
  double get shopContribution => throw _privateConstructorUsedError;

  /// Serializes this DeliveryChargeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryChargeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryChargeModelCopyWith<DeliveryChargeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryChargeModelCopyWith<$Res> {
  factory $DeliveryChargeModelCopyWith(
          DeliveryChargeModel value, $Res Function(DeliveryChargeModel) then) =
      _$DeliveryChargeModelCopyWithImpl<$Res, DeliveryChargeModel>;
  @useResult
  $Res call(
      {double baseCharge,
      double distanceCharge,
      double weightCharge,
      double volumeCharge,
      double surgeCharge,
      double packagingCharge,
      double handlingCharge,
      double fragileItemCharge,
      double coldStorageCharge,
      double expressCharge,
      double totalCharge,
      double deliveryPartnerEarning,
      double platformMargin,
      double shopContribution});
}

/// @nodoc
class _$DeliveryChargeModelCopyWithImpl<$Res, $Val extends DeliveryChargeModel>
    implements $DeliveryChargeModelCopyWith<$Res> {
  _$DeliveryChargeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryChargeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCharge = null,
    Object? distanceCharge = null,
    Object? weightCharge = null,
    Object? volumeCharge = null,
    Object? surgeCharge = null,
    Object? packagingCharge = null,
    Object? handlingCharge = null,
    Object? fragileItemCharge = null,
    Object? coldStorageCharge = null,
    Object? expressCharge = null,
    Object? totalCharge = null,
    Object? deliveryPartnerEarning = null,
    Object? platformMargin = null,
    Object? shopContribution = null,
  }) {
    return _then(_value.copyWith(
      baseCharge: null == baseCharge
          ? _value.baseCharge
          : baseCharge // ignore: cast_nullable_to_non_nullable
              as double,
      distanceCharge: null == distanceCharge
          ? _value.distanceCharge
          : distanceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      weightCharge: null == weightCharge
          ? _value.weightCharge
          : weightCharge // ignore: cast_nullable_to_non_nullable
              as double,
      volumeCharge: null == volumeCharge
          ? _value.volumeCharge
          : volumeCharge // ignore: cast_nullable_to_non_nullable
              as double,
      surgeCharge: null == surgeCharge
          ? _value.surgeCharge
          : surgeCharge // ignore: cast_nullable_to_non_nullable
              as double,
      packagingCharge: null == packagingCharge
          ? _value.packagingCharge
          : packagingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      handlingCharge: null == handlingCharge
          ? _value.handlingCharge
          : handlingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      fragileItemCharge: null == fragileItemCharge
          ? _value.fragileItemCharge
          : fragileItemCharge // ignore: cast_nullable_to_non_nullable
              as double,
      coldStorageCharge: null == coldStorageCharge
          ? _value.coldStorageCharge
          : coldStorageCharge // ignore: cast_nullable_to_non_nullable
              as double,
      expressCharge: null == expressCharge
          ? _value.expressCharge
          : expressCharge // ignore: cast_nullable_to_non_nullable
              as double,
      totalCharge: null == totalCharge
          ? _value.totalCharge
          : totalCharge // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryPartnerEarning: null == deliveryPartnerEarning
          ? _value.deliveryPartnerEarning
          : deliveryPartnerEarning // ignore: cast_nullable_to_non_nullable
              as double,
      platformMargin: null == platformMargin
          ? _value.platformMargin
          : platformMargin // ignore: cast_nullable_to_non_nullable
              as double,
      shopContribution: null == shopContribution
          ? _value.shopContribution
          : shopContribution // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryChargeModelImplCopyWith<$Res>
    implements $DeliveryChargeModelCopyWith<$Res> {
  factory _$$DeliveryChargeModelImplCopyWith(_$DeliveryChargeModelImpl value,
          $Res Function(_$DeliveryChargeModelImpl) then) =
      __$$DeliveryChargeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double baseCharge,
      double distanceCharge,
      double weightCharge,
      double volumeCharge,
      double surgeCharge,
      double packagingCharge,
      double handlingCharge,
      double fragileItemCharge,
      double coldStorageCharge,
      double expressCharge,
      double totalCharge,
      double deliveryPartnerEarning,
      double platformMargin,
      double shopContribution});
}

/// @nodoc
class __$$DeliveryChargeModelImplCopyWithImpl<$Res>
    extends _$DeliveryChargeModelCopyWithImpl<$Res, _$DeliveryChargeModelImpl>
    implements _$$DeliveryChargeModelImplCopyWith<$Res> {
  __$$DeliveryChargeModelImplCopyWithImpl(_$DeliveryChargeModelImpl _value,
      $Res Function(_$DeliveryChargeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryChargeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCharge = null,
    Object? distanceCharge = null,
    Object? weightCharge = null,
    Object? volumeCharge = null,
    Object? surgeCharge = null,
    Object? packagingCharge = null,
    Object? handlingCharge = null,
    Object? fragileItemCharge = null,
    Object? coldStorageCharge = null,
    Object? expressCharge = null,
    Object? totalCharge = null,
    Object? deliveryPartnerEarning = null,
    Object? platformMargin = null,
    Object? shopContribution = null,
  }) {
    return _then(_$DeliveryChargeModelImpl(
      baseCharge: null == baseCharge
          ? _value.baseCharge
          : baseCharge // ignore: cast_nullable_to_non_nullable
              as double,
      distanceCharge: null == distanceCharge
          ? _value.distanceCharge
          : distanceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      weightCharge: null == weightCharge
          ? _value.weightCharge
          : weightCharge // ignore: cast_nullable_to_non_nullable
              as double,
      volumeCharge: null == volumeCharge
          ? _value.volumeCharge
          : volumeCharge // ignore: cast_nullable_to_non_nullable
              as double,
      surgeCharge: null == surgeCharge
          ? _value.surgeCharge
          : surgeCharge // ignore: cast_nullable_to_non_nullable
              as double,
      packagingCharge: null == packagingCharge
          ? _value.packagingCharge
          : packagingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      handlingCharge: null == handlingCharge
          ? _value.handlingCharge
          : handlingCharge // ignore: cast_nullable_to_non_nullable
              as double,
      fragileItemCharge: null == fragileItemCharge
          ? _value.fragileItemCharge
          : fragileItemCharge // ignore: cast_nullable_to_non_nullable
              as double,
      coldStorageCharge: null == coldStorageCharge
          ? _value.coldStorageCharge
          : coldStorageCharge // ignore: cast_nullable_to_non_nullable
              as double,
      expressCharge: null == expressCharge
          ? _value.expressCharge
          : expressCharge // ignore: cast_nullable_to_non_nullable
              as double,
      totalCharge: null == totalCharge
          ? _value.totalCharge
          : totalCharge // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryPartnerEarning: null == deliveryPartnerEarning
          ? _value.deliveryPartnerEarning
          : deliveryPartnerEarning // ignore: cast_nullable_to_non_nullable
              as double,
      platformMargin: null == platformMargin
          ? _value.platformMargin
          : platformMargin // ignore: cast_nullable_to_non_nullable
              as double,
      shopContribution: null == shopContribution
          ? _value.shopContribution
          : shopContribution // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryChargeModelImpl implements _DeliveryChargeModel {
  const _$DeliveryChargeModelImpl(
      {this.baseCharge = 0.0,
      this.distanceCharge = 0.0,
      this.weightCharge = 0.0,
      this.volumeCharge = 0.0,
      this.surgeCharge = 0.0,
      this.packagingCharge = 0.0,
      this.handlingCharge = 0.0,
      this.fragileItemCharge = 0.0,
      this.coldStorageCharge = 0.0,
      this.expressCharge = 0.0,
      this.totalCharge = 0.0,
      this.deliveryPartnerEarning = 0.0,
      this.platformMargin = 0.0,
      this.shopContribution = 0.0});

  factory _$DeliveryChargeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryChargeModelImplFromJson(json);

  @override
  @JsonKey()
  final double baseCharge;
  @override
  @JsonKey()
  final double distanceCharge;
  @override
  @JsonKey()
  final double weightCharge;
  @override
  @JsonKey()
  final double volumeCharge;
  @override
  @JsonKey()
  final double surgeCharge;
// Rain, Festival, Night
  @override
  @JsonKey()
  final double packagingCharge;
  @override
  @JsonKey()
  final double handlingCharge;
  @override
  @JsonKey()
  final double fragileItemCharge;
  @override
  @JsonKey()
  final double coldStorageCharge;
  @override
  @JsonKey()
  final double expressCharge;
  @override
  @JsonKey()
  final double totalCharge;
// Revenue Ready Fields
  @override
  @JsonKey()
  final double deliveryPartnerEarning;
  @override
  @JsonKey()
  final double platformMargin;
  @override
  @JsonKey()
  final double shopContribution;

  @override
  String toString() {
    return 'DeliveryChargeModel(baseCharge: $baseCharge, distanceCharge: $distanceCharge, weightCharge: $weightCharge, volumeCharge: $volumeCharge, surgeCharge: $surgeCharge, packagingCharge: $packagingCharge, handlingCharge: $handlingCharge, fragileItemCharge: $fragileItemCharge, coldStorageCharge: $coldStorageCharge, expressCharge: $expressCharge, totalCharge: $totalCharge, deliveryPartnerEarning: $deliveryPartnerEarning, platformMargin: $platformMargin, shopContribution: $shopContribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryChargeModelImpl &&
            (identical(other.baseCharge, baseCharge) ||
                other.baseCharge == baseCharge) &&
            (identical(other.distanceCharge, distanceCharge) ||
                other.distanceCharge == distanceCharge) &&
            (identical(other.weightCharge, weightCharge) ||
                other.weightCharge == weightCharge) &&
            (identical(other.volumeCharge, volumeCharge) ||
                other.volumeCharge == volumeCharge) &&
            (identical(other.surgeCharge, surgeCharge) ||
                other.surgeCharge == surgeCharge) &&
            (identical(other.packagingCharge, packagingCharge) ||
                other.packagingCharge == packagingCharge) &&
            (identical(other.handlingCharge, handlingCharge) ||
                other.handlingCharge == handlingCharge) &&
            (identical(other.fragileItemCharge, fragileItemCharge) ||
                other.fragileItemCharge == fragileItemCharge) &&
            (identical(other.coldStorageCharge, coldStorageCharge) ||
                other.coldStorageCharge == coldStorageCharge) &&
            (identical(other.expressCharge, expressCharge) ||
                other.expressCharge == expressCharge) &&
            (identical(other.totalCharge, totalCharge) ||
                other.totalCharge == totalCharge) &&
            (identical(other.deliveryPartnerEarning, deliveryPartnerEarning) ||
                other.deliveryPartnerEarning == deliveryPartnerEarning) &&
            (identical(other.platformMargin, platformMargin) ||
                other.platformMargin == platformMargin) &&
            (identical(other.shopContribution, shopContribution) ||
                other.shopContribution == shopContribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseCharge,
      distanceCharge,
      weightCharge,
      volumeCharge,
      surgeCharge,
      packagingCharge,
      handlingCharge,
      fragileItemCharge,
      coldStorageCharge,
      expressCharge,
      totalCharge,
      deliveryPartnerEarning,
      platformMargin,
      shopContribution);

  /// Create a copy of DeliveryChargeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryChargeModelImplCopyWith<_$DeliveryChargeModelImpl> get copyWith =>
      __$$DeliveryChargeModelImplCopyWithImpl<_$DeliveryChargeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryChargeModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryChargeModel implements DeliveryChargeModel {
  const factory _DeliveryChargeModel(
      {final double baseCharge,
      final double distanceCharge,
      final double weightCharge,
      final double volumeCharge,
      final double surgeCharge,
      final double packagingCharge,
      final double handlingCharge,
      final double fragileItemCharge,
      final double coldStorageCharge,
      final double expressCharge,
      final double totalCharge,
      final double deliveryPartnerEarning,
      final double platformMargin,
      final double shopContribution}) = _$DeliveryChargeModelImpl;

  factory _DeliveryChargeModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryChargeModelImpl.fromJson;

  @override
  double get baseCharge;
  @override
  double get distanceCharge;
  @override
  double get weightCharge;
  @override
  double get volumeCharge;
  @override
  double get surgeCharge; // Rain, Festival, Night
  @override
  double get packagingCharge;
  @override
  double get handlingCharge;
  @override
  double get fragileItemCharge;
  @override
  double get coldStorageCharge;
  @override
  double get expressCharge;
  @override
  double get totalCharge; // Revenue Ready Fields
  @override
  double get deliveryPartnerEarning;
  @override
  double get platformMargin;
  @override
  double get shopContribution;

  /// Create a copy of DeliveryChargeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryChargeModelImplCopyWith<_$DeliveryChargeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
