// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletTransactionModel _$WalletTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _WalletTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$WalletTransactionModel {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  TransactionCategory get category => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get referenceId =>
      throw _privateConstructorUsedError; // Order ID or Cashback ID
  String? get description => throw _privateConstructorUsedError;
  double get balanceAfter =>
      throw _privateConstructorUsedError; // Revenue Ready Fields
  String? get shopId => throw _privateConstructorUsedError;
  double get platformCommission => throw _privateConstructorUsedError;
  double get shopEarnings => throw _privateConstructorUsedError;

  /// Serializes this WalletTransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionModelCopyWith<WalletTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionModelCopyWith<$Res> {
  factory $WalletTransactionModelCopyWith(WalletTransactionModel value,
          $Res Function(WalletTransactionModel) then) =
      _$WalletTransactionModelCopyWithImpl<$Res, WalletTransactionModel>;
  @useResult
  $Res call(
      {String id,
      double amount,
      TransactionType type,
      TransactionStatus status,
      TransactionCategory category,
      DateTime createdAt,
      String? referenceId,
      String? description,
      double balanceAfter,
      String? shopId,
      double platformCommission,
      double shopEarnings});
}

/// @nodoc
class _$WalletTransactionModelCopyWithImpl<$Res,
        $Val extends WalletTransactionModel>
    implements $WalletTransactionModelCopyWith<$Res> {
  _$WalletTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? type = null,
    Object? status = null,
    Object? category = null,
    Object? createdAt = null,
    Object? referenceId = freezed,
    Object? description = freezed,
    Object? balanceAfter = null,
    Object? shopId = freezed,
    Object? platformCommission = null,
    Object? shopEarnings = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TransactionCategory,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      platformCommission: null == platformCommission
          ? _value.platformCommission
          : platformCommission // ignore: cast_nullable_to_non_nullable
              as double,
      shopEarnings: null == shopEarnings
          ? _value.shopEarnings
          : shopEarnings // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletTransactionModelImplCopyWith<$Res>
    implements $WalletTransactionModelCopyWith<$Res> {
  factory _$$WalletTransactionModelImplCopyWith(
          _$WalletTransactionModelImpl value,
          $Res Function(_$WalletTransactionModelImpl) then) =
      __$$WalletTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double amount,
      TransactionType type,
      TransactionStatus status,
      TransactionCategory category,
      DateTime createdAt,
      String? referenceId,
      String? description,
      double balanceAfter,
      String? shopId,
      double platformCommission,
      double shopEarnings});
}

/// @nodoc
class __$$WalletTransactionModelImplCopyWithImpl<$Res>
    extends _$WalletTransactionModelCopyWithImpl<$Res,
        _$WalletTransactionModelImpl>
    implements _$$WalletTransactionModelImplCopyWith<$Res> {
  __$$WalletTransactionModelImplCopyWithImpl(
      _$WalletTransactionModelImpl _value,
      $Res Function(_$WalletTransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? type = null,
    Object? status = null,
    Object? category = null,
    Object? createdAt = null,
    Object? referenceId = freezed,
    Object? description = freezed,
    Object? balanceAfter = null,
    Object? shopId = freezed,
    Object? platformCommission = null,
    Object? shopEarnings = null,
  }) {
    return _then(_$WalletTransactionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TransactionCategory,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      platformCommission: null == platformCommission
          ? _value.platformCommission
          : platformCommission // ignore: cast_nullable_to_non_nullable
              as double,
      shopEarnings: null == shopEarnings
          ? _value.shopEarnings
          : shopEarnings // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletTransactionModelImpl implements _WalletTransactionModel {
  const _$WalletTransactionModelImpl(
      {required this.id,
      required this.amount,
      required this.type,
      required this.status,
      required this.category,
      required this.createdAt,
      this.referenceId,
      this.description,
      this.balanceAfter = 0.0,
      this.shopId,
      this.platformCommission = 0.0,
      this.shopEarnings = 0.0});

  factory _$WalletTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTransactionModelImplFromJson(json);

  @override
  final String id;
  @override
  final double amount;
  @override
  final TransactionType type;
  @override
  final TransactionStatus status;
  @override
  final TransactionCategory category;
  @override
  final DateTime createdAt;
  @override
  final String? referenceId;
// Order ID or Cashback ID
  @override
  final String? description;
  @override
  @JsonKey()
  final double balanceAfter;
// Revenue Ready Fields
  @override
  final String? shopId;
  @override
  @JsonKey()
  final double platformCommission;
  @override
  @JsonKey()
  final double shopEarnings;

  @override
  String toString() {
    return 'WalletTransactionModel(id: $id, amount: $amount, type: $type, status: $status, category: $category, createdAt: $createdAt, referenceId: $referenceId, description: $description, balanceAfter: $balanceAfter, shopId: $shopId, platformCommission: $platformCommission, shopEarnings: $shopEarnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.platformCommission, platformCommission) ||
                other.platformCommission == platformCommission) &&
            (identical(other.shopEarnings, shopEarnings) ||
                other.shopEarnings == shopEarnings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      type,
      status,
      category,
      createdAt,
      referenceId,
      description,
      balanceAfter,
      shopId,
      platformCommission,
      shopEarnings);

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionModelImplCopyWith<_$WalletTransactionModelImpl>
      get copyWith => __$$WalletTransactionModelImplCopyWithImpl<
          _$WalletTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _WalletTransactionModel implements WalletTransactionModel {
  const factory _WalletTransactionModel(
      {required final String id,
      required final double amount,
      required final TransactionType type,
      required final TransactionStatus status,
      required final TransactionCategory category,
      required final DateTime createdAt,
      final String? referenceId,
      final String? description,
      final double balanceAfter,
      final String? shopId,
      final double platformCommission,
      final double shopEarnings}) = _$WalletTransactionModelImpl;

  factory _WalletTransactionModel.fromJson(Map<String, dynamic> json) =
      _$WalletTransactionModelImpl.fromJson;

  @override
  String get id;
  @override
  double get amount;
  @override
  TransactionType get type;
  @override
  TransactionStatus get status;
  @override
  TransactionCategory get category;
  @override
  DateTime get createdAt;
  @override
  String? get referenceId; // Order ID or Cashback ID
  @override
  String? get description;
  @override
  double get balanceAfter; // Revenue Ready Fields
  @override
  String? get shopId;
  @override
  double get platformCommission;
  @override
  double get shopEarnings;

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionModelImplCopyWith<_$WalletTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
