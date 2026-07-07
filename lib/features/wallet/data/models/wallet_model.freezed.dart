// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
mixin _$WalletModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get pendingCashback => throw _privateConstructorUsedError;
  int get loyaltyPoints => throw _privateConstructorUsedError;
  List<WalletTransactionModel> get recentTransactions =>
      throw _privateConstructorUsedError;
  List<WalletCashbackModel> get activeCashbacks =>
      throw _privateConstructorUsedError;
  List<RewardPointModel> get recentRewards =>
      throw _privateConstructorUsedError; // Revenue & Ledger Architecture
  double get totalRefundsReceived => throw _privateConstructorUsedError;
  double get totalCashbackEarned => throw _privateConstructorUsedError;

  /// Serializes this WalletModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res, WalletModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      double balance,
      double pendingCashback,
      int loyaltyPoints,
      List<WalletTransactionModel> recentTransactions,
      List<WalletCashbackModel> activeCashbacks,
      List<RewardPointModel> recentRewards,
      double totalRefundsReceived,
      double totalCashbackEarned});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res, $Val extends WalletModel>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? balance = null,
    Object? pendingCashback = null,
    Object? loyaltyPoints = null,
    Object? recentTransactions = null,
    Object? activeCashbacks = null,
    Object? recentRewards = null,
    Object? totalRefundsReceived = null,
    Object? totalCashbackEarned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      pendingCashback: null == pendingCashback
          ? _value.pendingCashback
          : pendingCashback // ignore: cast_nullable_to_non_nullable
              as double,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      recentTransactions: null == recentTransactions
          ? _value.recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionModel>,
      activeCashbacks: null == activeCashbacks
          ? _value.activeCashbacks
          : activeCashbacks // ignore: cast_nullable_to_non_nullable
              as List<WalletCashbackModel>,
      recentRewards: null == recentRewards
          ? _value.recentRewards
          : recentRewards // ignore: cast_nullable_to_non_nullable
              as List<RewardPointModel>,
      totalRefundsReceived: null == totalRefundsReceived
          ? _value.totalRefundsReceived
          : totalRefundsReceived // ignore: cast_nullable_to_non_nullable
              as double,
      totalCashbackEarned: null == totalCashbackEarned
          ? _value.totalCashbackEarned
          : totalCashbackEarned // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletModelImplCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$$WalletModelImplCopyWith(
          _$WalletModelImpl value, $Res Function(_$WalletModelImpl) then) =
      __$$WalletModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      double balance,
      double pendingCashback,
      int loyaltyPoints,
      List<WalletTransactionModel> recentTransactions,
      List<WalletCashbackModel> activeCashbacks,
      List<RewardPointModel> recentRewards,
      double totalRefundsReceived,
      double totalCashbackEarned});
}

/// @nodoc
class __$$WalletModelImplCopyWithImpl<$Res>
    extends _$WalletModelCopyWithImpl<$Res, _$WalletModelImpl>
    implements _$$WalletModelImplCopyWith<$Res> {
  __$$WalletModelImplCopyWithImpl(
      _$WalletModelImpl _value, $Res Function(_$WalletModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? balance = null,
    Object? pendingCashback = null,
    Object? loyaltyPoints = null,
    Object? recentTransactions = null,
    Object? activeCashbacks = null,
    Object? recentRewards = null,
    Object? totalRefundsReceived = null,
    Object? totalCashbackEarned = null,
  }) {
    return _then(_$WalletModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      pendingCashback: null == pendingCashback
          ? _value.pendingCashback
          : pendingCashback // ignore: cast_nullable_to_non_nullable
              as double,
      loyaltyPoints: null == loyaltyPoints
          ? _value.loyaltyPoints
          : loyaltyPoints // ignore: cast_nullable_to_non_nullable
              as int,
      recentTransactions: null == recentTransactions
          ? _value._recentTransactions
          : recentTransactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionModel>,
      activeCashbacks: null == activeCashbacks
          ? _value._activeCashbacks
          : activeCashbacks // ignore: cast_nullable_to_non_nullable
              as List<WalletCashbackModel>,
      recentRewards: null == recentRewards
          ? _value._recentRewards
          : recentRewards // ignore: cast_nullable_to_non_nullable
              as List<RewardPointModel>,
      totalRefundsReceived: null == totalRefundsReceived
          ? _value.totalRefundsReceived
          : totalRefundsReceived // ignore: cast_nullable_to_non_nullable
              as double,
      totalCashbackEarned: null == totalCashbackEarned
          ? _value.totalCashbackEarned
          : totalCashbackEarned // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletModelImpl implements _WalletModel {
  const _$WalletModelImpl(
      {required this.id,
      required this.userId,
      this.balance = 0.0,
      this.pendingCashback = 0.0,
      this.loyaltyPoints = 0,
      final List<WalletTransactionModel> recentTransactions = const [],
      final List<WalletCashbackModel> activeCashbacks = const [],
      final List<RewardPointModel> recentRewards = const [],
      this.totalRefundsReceived = 0.0,
      this.totalCashbackEarned = 0.0})
      : _recentTransactions = recentTransactions,
        _activeCashbacks = activeCashbacks,
        _recentRewards = recentRewards;

  factory _$WalletModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey()
  final double pendingCashback;
  @override
  @JsonKey()
  final int loyaltyPoints;
  final List<WalletTransactionModel> _recentTransactions;
  @override
  @JsonKey()
  List<WalletTransactionModel> get recentTransactions {
    if (_recentTransactions is EqualUnmodifiableListView)
      return _recentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentTransactions);
  }

  final List<WalletCashbackModel> _activeCashbacks;
  @override
  @JsonKey()
  List<WalletCashbackModel> get activeCashbacks {
    if (_activeCashbacks is EqualUnmodifiableListView) return _activeCashbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCashbacks);
  }

  final List<RewardPointModel> _recentRewards;
  @override
  @JsonKey()
  List<RewardPointModel> get recentRewards {
    if (_recentRewards is EqualUnmodifiableListView) return _recentRewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentRewards);
  }

// Revenue & Ledger Architecture
  @override
  @JsonKey()
  final double totalRefundsReceived;
  @override
  @JsonKey()
  final double totalCashbackEarned;

  @override
  String toString() {
    return 'WalletModel(id: $id, userId: $userId, balance: $balance, pendingCashback: $pendingCashback, loyaltyPoints: $loyaltyPoints, recentTransactions: $recentTransactions, activeCashbacks: $activeCashbacks, recentRewards: $recentRewards, totalRefundsReceived: $totalRefundsReceived, totalCashbackEarned: $totalCashbackEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.pendingCashback, pendingCashback) ||
                other.pendingCashback == pendingCashback) &&
            (identical(other.loyaltyPoints, loyaltyPoints) ||
                other.loyaltyPoints == loyaltyPoints) &&
            const DeepCollectionEquality()
                .equals(other._recentTransactions, _recentTransactions) &&
            const DeepCollectionEquality()
                .equals(other._activeCashbacks, _activeCashbacks) &&
            const DeepCollectionEquality()
                .equals(other._recentRewards, _recentRewards) &&
            (identical(other.totalRefundsReceived, totalRefundsReceived) ||
                other.totalRefundsReceived == totalRefundsReceived) &&
            (identical(other.totalCashbackEarned, totalCashbackEarned) ||
                other.totalCashbackEarned == totalCashbackEarned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      balance,
      pendingCashback,
      loyaltyPoints,
      const DeepCollectionEquality().hash(_recentTransactions),
      const DeepCollectionEquality().hash(_activeCashbacks),
      const DeepCollectionEquality().hash(_recentRewards),
      totalRefundsReceived,
      totalCashbackEarned);

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      __$$WalletModelImplCopyWithImpl<_$WalletModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletModelImplToJson(
      this,
    );
  }
}

abstract class _WalletModel implements WalletModel {
  const factory _WalletModel(
      {required final String id,
      required final String userId,
      final double balance,
      final double pendingCashback,
      final int loyaltyPoints,
      final List<WalletTransactionModel> recentTransactions,
      final List<WalletCashbackModel> activeCashbacks,
      final List<RewardPointModel> recentRewards,
      final double totalRefundsReceived,
      final double totalCashbackEarned}) = _$WalletModelImpl;

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$WalletModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  double get balance;
  @override
  double get pendingCashback;
  @override
  int get loyaltyPoints;
  @override
  List<WalletTransactionModel> get recentTransactions;
  @override
  List<WalletCashbackModel> get activeCashbacks;
  @override
  List<RewardPointModel> get recentRewards; // Revenue & Ledger Architecture
  @override
  double get totalRefundsReceived;
  @override
  double get totalCashbackEarned;

  /// Create a copy of WalletModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletModelImplCopyWith<_$WalletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletSummaryModel _$WalletSummaryModelFromJson(Map<String, dynamic> json) {
  return _WalletSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$WalletSummaryModel {
  double get totalBalance => throw _privateConstructorUsedError;
  double get pendingBalance => throw _privateConstructorUsedError;
  double get lifetimeEarnings => throw _privateConstructorUsedError;
  double get lifetimeSavings => throw _privateConstructorUsedError;
  int get totalRewards => throw _privateConstructorUsedError;

  /// Serializes this WalletSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletSummaryModelCopyWith<WalletSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletSummaryModelCopyWith<$Res> {
  factory $WalletSummaryModelCopyWith(
          WalletSummaryModel value, $Res Function(WalletSummaryModel) then) =
      _$WalletSummaryModelCopyWithImpl<$Res, WalletSummaryModel>;
  @useResult
  $Res call(
      {double totalBalance,
      double pendingBalance,
      double lifetimeEarnings,
      double lifetimeSavings,
      int totalRewards});
}

/// @nodoc
class _$WalletSummaryModelCopyWithImpl<$Res, $Val extends WalletSummaryModel>
    implements $WalletSummaryModelCopyWith<$Res> {
  _$WalletSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBalance = null,
    Object? pendingBalance = null,
    Object? lifetimeEarnings = null,
    Object? lifetimeSavings = null,
    Object? totalRewards = null,
  }) {
    return _then(_value.copyWith(
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      pendingBalance: null == pendingBalance
          ? _value.pendingBalance
          : pendingBalance // ignore: cast_nullable_to_non_nullable
              as double,
      lifetimeEarnings: null == lifetimeEarnings
          ? _value.lifetimeEarnings
          : lifetimeEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      lifetimeSavings: null == lifetimeSavings
          ? _value.lifetimeSavings
          : lifetimeSavings // ignore: cast_nullable_to_non_nullable
              as double,
      totalRewards: null == totalRewards
          ? _value.totalRewards
          : totalRewards // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletSummaryModelImplCopyWith<$Res>
    implements $WalletSummaryModelCopyWith<$Res> {
  factory _$$WalletSummaryModelImplCopyWith(_$WalletSummaryModelImpl value,
          $Res Function(_$WalletSummaryModelImpl) then) =
      __$$WalletSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double totalBalance,
      double pendingBalance,
      double lifetimeEarnings,
      double lifetimeSavings,
      int totalRewards});
}

/// @nodoc
class __$$WalletSummaryModelImplCopyWithImpl<$Res>
    extends _$WalletSummaryModelCopyWithImpl<$Res, _$WalletSummaryModelImpl>
    implements _$$WalletSummaryModelImplCopyWith<$Res> {
  __$$WalletSummaryModelImplCopyWithImpl(_$WalletSummaryModelImpl _value,
      $Res Function(_$WalletSummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBalance = null,
    Object? pendingBalance = null,
    Object? lifetimeEarnings = null,
    Object? lifetimeSavings = null,
    Object? totalRewards = null,
  }) {
    return _then(_$WalletSummaryModelImpl(
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      pendingBalance: null == pendingBalance
          ? _value.pendingBalance
          : pendingBalance // ignore: cast_nullable_to_non_nullable
              as double,
      lifetimeEarnings: null == lifetimeEarnings
          ? _value.lifetimeEarnings
          : lifetimeEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      lifetimeSavings: null == lifetimeSavings
          ? _value.lifetimeSavings
          : lifetimeSavings // ignore: cast_nullable_to_non_nullable
              as double,
      totalRewards: null == totalRewards
          ? _value.totalRewards
          : totalRewards // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletSummaryModelImpl implements _WalletSummaryModel {
  const _$WalletSummaryModelImpl(
      {this.totalBalance = 0.0,
      this.pendingBalance = 0.0,
      this.lifetimeEarnings = 0.0,
      this.lifetimeSavings = 0.0,
      this.totalRewards = 0});

  factory _$WalletSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletSummaryModelImplFromJson(json);

  @override
  @JsonKey()
  final double totalBalance;
  @override
  @JsonKey()
  final double pendingBalance;
  @override
  @JsonKey()
  final double lifetimeEarnings;
  @override
  @JsonKey()
  final double lifetimeSavings;
  @override
  @JsonKey()
  final int totalRewards;

  @override
  String toString() {
    return 'WalletSummaryModel(totalBalance: $totalBalance, pendingBalance: $pendingBalance, lifetimeEarnings: $lifetimeEarnings, lifetimeSavings: $lifetimeSavings, totalRewards: $totalRewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletSummaryModelImpl &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance) &&
            (identical(other.pendingBalance, pendingBalance) ||
                other.pendingBalance == pendingBalance) &&
            (identical(other.lifetimeEarnings, lifetimeEarnings) ||
                other.lifetimeEarnings == lifetimeEarnings) &&
            (identical(other.lifetimeSavings, lifetimeSavings) ||
                other.lifetimeSavings == lifetimeSavings) &&
            (identical(other.totalRewards, totalRewards) ||
                other.totalRewards == totalRewards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalBalance, pendingBalance,
      lifetimeEarnings, lifetimeSavings, totalRewards);

  /// Create a copy of WalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletSummaryModelImplCopyWith<_$WalletSummaryModelImpl> get copyWith =>
      __$$WalletSummaryModelImplCopyWithImpl<_$WalletSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _WalletSummaryModel implements WalletSummaryModel {
  const factory _WalletSummaryModel(
      {final double totalBalance,
      final double pendingBalance,
      final double lifetimeEarnings,
      final double lifetimeSavings,
      final int totalRewards}) = _$WalletSummaryModelImpl;

  factory _WalletSummaryModel.fromJson(Map<String, dynamic> json) =
      _$WalletSummaryModelImpl.fromJson;

  @override
  double get totalBalance;
  @override
  double get pendingBalance;
  @override
  double get lifetimeEarnings;
  @override
  double get lifetimeSavings;
  @override
  int get totalRewards;

  /// Create a copy of WalletSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletSummaryModelImplCopyWith<_$WalletSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
