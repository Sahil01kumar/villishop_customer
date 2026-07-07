// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletState {
  bool get isLoading => throw _privateConstructorUsedError;
  WalletModel? get wallet => throw _privateConstructorUsedError;
  List<WalletTransactionModel> get transactions =>
      throw _privateConstructorUsedError;
  List<WalletCashbackModel> get cashbacks => throw _privateConstructorUsedError;
  List<RewardPointModel> get rewards => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call(
      {bool isLoading,
      WalletModel? wallet,
      List<WalletTransactionModel> transactions,
      List<WalletCashbackModel> cashbacks,
      List<RewardPointModel> rewards,
      String? errorMessage,
      bool isProcessing});

  $WalletModelCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? wallet = freezed,
    Object? transactions = null,
    Object? cashbacks = null,
    Object? rewards = null,
    Object? errorMessage = freezed,
    Object? isProcessing = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionModel>,
      cashbacks: null == cashbacks
          ? _value.cashbacks
          : cashbacks // ignore: cast_nullable_to_non_nullable
              as List<WalletCashbackModel>,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardPointModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletModelCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletModelCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      WalletModel? wallet,
      List<WalletTransactionModel> transactions,
      List<WalletCashbackModel> cashbacks,
      List<RewardPointModel> rewards,
      String? errorMessage,
      bool isProcessing});

  @override
  $WalletModelCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? wallet = freezed,
    Object? transactions = null,
    Object? cashbacks = null,
    Object? rewards = null,
    Object? errorMessage = freezed,
    Object? isProcessing = null,
  }) {
    return _then(_$WalletStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionModel>,
      cashbacks: null == cashbacks
          ? _value._cashbacks
          : cashbacks // ignore: cast_nullable_to_non_nullable
              as List<WalletCashbackModel>,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardPointModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl implements _WalletState {
  const _$WalletStateImpl(
      {this.isLoading = false,
      this.wallet,
      final List<WalletTransactionModel> transactions = const [],
      final List<WalletCashbackModel> cashbacks = const [],
      final List<RewardPointModel> rewards = const [],
      this.errorMessage,
      this.isProcessing = false})
      : _transactions = transactions,
        _cashbacks = cashbacks,
        _rewards = rewards;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final WalletModel? wallet;
  final List<WalletTransactionModel> _transactions;
  @override
  @JsonKey()
  List<WalletTransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<WalletCashbackModel> _cashbacks;
  @override
  @JsonKey()
  List<WalletCashbackModel> get cashbacks {
    if (_cashbacks is EqualUnmodifiableListView) return _cashbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cashbacks);
  }

  final List<RewardPointModel> _rewards;
  @override
  @JsonKey()
  List<RewardPointModel> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isProcessing;

  @override
  String toString() {
    return 'WalletState(isLoading: $isLoading, wallet: $wallet, transactions: $transactions, cashbacks: $cashbacks, rewards: $rewards, errorMessage: $errorMessage, isProcessing: $isProcessing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality()
                .equals(other._cashbacks, _cashbacks) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      wallet,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_cashbacks),
      const DeepCollectionEquality().hash(_rewards),
      errorMessage,
      isProcessing);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {final bool isLoading,
      final WalletModel? wallet,
      final List<WalletTransactionModel> transactions,
      final List<WalletCashbackModel> cashbacks,
      final List<RewardPointModel> rewards,
      final String? errorMessage,
      final bool isProcessing}) = _$WalletStateImpl;

  @override
  bool get isLoading;
  @override
  WalletModel? get wallet;
  @override
  List<WalletTransactionModel> get transactions;
  @override
  List<WalletCashbackModel> get cashbacks;
  @override
  List<RewardPointModel> get rewards;
  @override
  String? get errorMessage;
  @override
  bool get isProcessing;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
