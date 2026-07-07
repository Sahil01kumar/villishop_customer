// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_cashback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletCashbackModel _$WalletCashbackModelFromJson(Map<String, dynamic> json) {
  return _WalletCashbackModel.fromJson(json);
}

/// @nodoc
mixin _$WalletCashbackModel {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  CashbackStatus get status => throw _privateConstructorUsedError;
  DateTime get earnedAt => throw _privateConstructorUsedError;
  DateTime? get availableAt => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this WalletCashbackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletCashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletCashbackModelCopyWith<WalletCashbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCashbackModelCopyWith<$Res> {
  factory $WalletCashbackModelCopyWith(
          WalletCashbackModel value, $Res Function(WalletCashbackModel) then) =
      _$WalletCashbackModelCopyWithImpl<$Res, WalletCashbackModel>;
  @useResult
  $Res call(
      {String id,
      double amount,
      CashbackStatus status,
      DateTime earnedAt,
      DateTime? availableAt,
      DateTime? expiryDate,
      String? orderId,
      String? description});
}

/// @nodoc
class _$WalletCashbackModelCopyWithImpl<$Res, $Val extends WalletCashbackModel>
    implements $WalletCashbackModelCopyWith<$Res> {
  _$WalletCashbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletCashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? status = null,
    Object? earnedAt = null,
    Object? availableAt = freezed,
    Object? expiryDate = freezed,
    Object? orderId = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CashbackStatus,
      earnedAt: null == earnedAt
          ? _value.earnedAt
          : earnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableAt: freezed == availableAt
          ? _value.availableAt
          : availableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletCashbackModelImplCopyWith<$Res>
    implements $WalletCashbackModelCopyWith<$Res> {
  factory _$$WalletCashbackModelImplCopyWith(_$WalletCashbackModelImpl value,
          $Res Function(_$WalletCashbackModelImpl) then) =
      __$$WalletCashbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double amount,
      CashbackStatus status,
      DateTime earnedAt,
      DateTime? availableAt,
      DateTime? expiryDate,
      String? orderId,
      String? description});
}

/// @nodoc
class __$$WalletCashbackModelImplCopyWithImpl<$Res>
    extends _$WalletCashbackModelCopyWithImpl<$Res, _$WalletCashbackModelImpl>
    implements _$$WalletCashbackModelImplCopyWith<$Res> {
  __$$WalletCashbackModelImplCopyWithImpl(_$WalletCashbackModelImpl _value,
      $Res Function(_$WalletCashbackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletCashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? status = null,
    Object? earnedAt = null,
    Object? availableAt = freezed,
    Object? expiryDate = freezed,
    Object? orderId = freezed,
    Object? description = freezed,
  }) {
    return _then(_$WalletCashbackModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CashbackStatus,
      earnedAt: null == earnedAt
          ? _value.earnedAt
          : earnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      availableAt: freezed == availableAt
          ? _value.availableAt
          : availableAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletCashbackModelImpl implements _WalletCashbackModel {
  const _$WalletCashbackModelImpl(
      {required this.id,
      required this.amount,
      required this.status,
      required this.earnedAt,
      this.availableAt,
      this.expiryDate,
      this.orderId,
      this.description});

  factory _$WalletCashbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletCashbackModelImplFromJson(json);

  @override
  final String id;
  @override
  final double amount;
  @override
  final CashbackStatus status;
  @override
  final DateTime earnedAt;
  @override
  final DateTime? availableAt;
  @override
  final DateTime? expiryDate;
  @override
  final String? orderId;
  @override
  final String? description;

  @override
  String toString() {
    return 'WalletCashbackModel(id: $id, amount: $amount, status: $status, earnedAt: $earnedAt, availableAt: $availableAt, expiryDate: $expiryDate, orderId: $orderId, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCashbackModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.earnedAt, earnedAt) ||
                other.earnedAt == earnedAt) &&
            (identical(other.availableAt, availableAt) ||
                other.availableAt == availableAt) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, status, earnedAt,
      availableAt, expiryDate, orderId, description);

  /// Create a copy of WalletCashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCashbackModelImplCopyWith<_$WalletCashbackModelImpl> get copyWith =>
      __$$WalletCashbackModelImplCopyWithImpl<_$WalletCashbackModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletCashbackModelImplToJson(
      this,
    );
  }
}

abstract class _WalletCashbackModel implements WalletCashbackModel {
  const factory _WalletCashbackModel(
      {required final String id,
      required final double amount,
      required final CashbackStatus status,
      required final DateTime earnedAt,
      final DateTime? availableAt,
      final DateTime? expiryDate,
      final String? orderId,
      final String? description}) = _$WalletCashbackModelImpl;

  factory _WalletCashbackModel.fromJson(Map<String, dynamic> json) =
      _$WalletCashbackModelImpl.fromJson;

  @override
  String get id;
  @override
  double get amount;
  @override
  CashbackStatus get status;
  @override
  DateTime get earnedAt;
  @override
  DateTime? get availableAt;
  @override
  DateTime? get expiryDate;
  @override
  String? get orderId;
  @override
  String? get description;

  /// Create a copy of WalletCashbackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletCashbackModelImplCopyWith<_$WalletCashbackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
