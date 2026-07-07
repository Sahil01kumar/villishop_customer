// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryInfo _$DeliveryInfoFromJson(Map<String, dynamic> json) {
  return _DeliveryInfo.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInfo {
  String? get deliveryEta => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  bool get isFreeDelivery => throw _privateConstructorUsedError;
  bool get isExpressDeliveryAvailable => throw _privateConstructorUsedError;

  /// Serializes this DeliveryInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryInfoCopyWith<DeliveryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInfoCopyWith<$Res> {
  factory $DeliveryInfoCopyWith(
          DeliveryInfo value, $Res Function(DeliveryInfo) then) =
      _$DeliveryInfoCopyWithImpl<$Res, DeliveryInfo>;
  @useResult
  $Res call(
      {String? deliveryEta,
      double deliveryCharge,
      bool isFreeDelivery,
      bool isExpressDeliveryAvailable});
}

/// @nodoc
class _$DeliveryInfoCopyWithImpl<$Res, $Val extends DeliveryInfo>
    implements $DeliveryInfoCopyWith<$Res> {
  _$DeliveryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryEta = freezed,
    Object? deliveryCharge = null,
    Object? isFreeDelivery = null,
    Object? isExpressDeliveryAvailable = null,
  }) {
    return _then(_value.copyWith(
      deliveryEta: freezed == deliveryEta
          ? _value.deliveryEta
          : deliveryEta // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpressDeliveryAvailable: null == isExpressDeliveryAvailable
          ? _value.isExpressDeliveryAvailable
          : isExpressDeliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryInfoImplCopyWith<$Res>
    implements $DeliveryInfoCopyWith<$Res> {
  factory _$$DeliveryInfoImplCopyWith(
          _$DeliveryInfoImpl value, $Res Function(_$DeliveryInfoImpl) then) =
      __$$DeliveryInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? deliveryEta,
      double deliveryCharge,
      bool isFreeDelivery,
      bool isExpressDeliveryAvailable});
}

/// @nodoc
class __$$DeliveryInfoImplCopyWithImpl<$Res>
    extends _$DeliveryInfoCopyWithImpl<$Res, _$DeliveryInfoImpl>
    implements _$$DeliveryInfoImplCopyWith<$Res> {
  __$$DeliveryInfoImplCopyWithImpl(
      _$DeliveryInfoImpl _value, $Res Function(_$DeliveryInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryEta = freezed,
    Object? deliveryCharge = null,
    Object? isFreeDelivery = null,
    Object? isExpressDeliveryAvailable = null,
  }) {
    return _then(_$DeliveryInfoImpl(
      deliveryEta: freezed == deliveryEta
          ? _value.deliveryEta
          : deliveryEta // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      isFreeDelivery: null == isFreeDelivery
          ? _value.isFreeDelivery
          : isFreeDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpressDeliveryAvailable: null == isExpressDeliveryAvailable
          ? _value.isExpressDeliveryAvailable
          : isExpressDeliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryInfoImpl implements _DeliveryInfo {
  const _$DeliveryInfoImpl(
      {this.deliveryEta,
      this.deliveryCharge = 0.0,
      this.isFreeDelivery = false,
      this.isExpressDeliveryAvailable = false});

  factory _$DeliveryInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryInfoImplFromJson(json);

  @override
  final String? deliveryEta;
  @override
  @JsonKey()
  final double deliveryCharge;
  @override
  @JsonKey()
  final bool isFreeDelivery;
  @override
  @JsonKey()
  final bool isExpressDeliveryAvailable;

  @override
  String toString() {
    return 'DeliveryInfo(deliveryEta: $deliveryEta, deliveryCharge: $deliveryCharge, isFreeDelivery: $isFreeDelivery, isExpressDeliveryAvailable: $isExpressDeliveryAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryInfoImpl &&
            (identical(other.deliveryEta, deliveryEta) ||
                other.deliveryEta == deliveryEta) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.isFreeDelivery, isFreeDelivery) ||
                other.isFreeDelivery == isFreeDelivery) &&
            (identical(other.isExpressDeliveryAvailable,
                    isExpressDeliveryAvailable) ||
                other.isExpressDeliveryAvailable ==
                    isExpressDeliveryAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deliveryEta, deliveryCharge,
      isFreeDelivery, isExpressDeliveryAvailable);

  /// Create a copy of DeliveryInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryInfoImplCopyWith<_$DeliveryInfoImpl> get copyWith =>
      __$$DeliveryInfoImplCopyWithImpl<_$DeliveryInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryInfoImplToJson(
      this,
    );
  }
}

abstract class _DeliveryInfo implements DeliveryInfo {
  const factory _DeliveryInfo(
      {final String? deliveryEta,
      final double deliveryCharge,
      final bool isFreeDelivery,
      final bool isExpressDeliveryAvailable}) = _$DeliveryInfoImpl;

  factory _DeliveryInfo.fromJson(Map<String, dynamic> json) =
      _$DeliveryInfoImpl.fromJson;

  @override
  String? get deliveryEta;
  @override
  double get deliveryCharge;
  @override
  bool get isFreeDelivery;
  @override
  bool get isExpressDeliveryAvailable;

  /// Create a copy of DeliveryInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryInfoImplCopyWith<_$DeliveryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
