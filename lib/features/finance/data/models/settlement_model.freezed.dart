// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettlementModel _$SettlementModelFromJson(Map<String, dynamic> json) {
  return _SettlementModel.fromJson(json);
}

/// @nodoc
mixin _$SettlementModel {
  String get id => throw _privateConstructorUsedError;
  String get referenceId =>
      throw _privateConstructorUsedError; // Order or Wallet ID
  double get amount => throw _privateConstructorUsedError;
  SettlementStatus get status => throw _privateConstructorUsedError;
  DateTime get scheduledDate => throw _privateConstructorUsedError;
  DateTime? get processedDate => throw _privateConstructorUsedError;
  String? get utrNumber => throw _privateConstructorUsedError;
  String? get bankAccountDetails => throw _privateConstructorUsedError;
  List<String> get logs => throw _privateConstructorUsedError;

  /// Serializes this SettlementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettlementModelCopyWith<SettlementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementModelCopyWith<$Res> {
  factory $SettlementModelCopyWith(
          SettlementModel value, $Res Function(SettlementModel) then) =
      _$SettlementModelCopyWithImpl<$Res, SettlementModel>;
  @useResult
  $Res call(
      {String id,
      String referenceId,
      double amount,
      SettlementStatus status,
      DateTime scheduledDate,
      DateTime? processedDate,
      String? utrNumber,
      String? bankAccountDetails,
      List<String> logs});
}

/// @nodoc
class _$SettlementModelCopyWithImpl<$Res, $Val extends SettlementModel>
    implements $SettlementModelCopyWith<$Res> {
  _$SettlementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referenceId = null,
    Object? amount = null,
    Object? status = null,
    Object? scheduledDate = null,
    Object? processedDate = freezed,
    Object? utrNumber = freezed,
    Object? bankAccountDetails = freezed,
    Object? logs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SettlementStatus,
      scheduledDate: null == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      processedDate: freezed == processedDate
          ? _value.processedDate
          : processedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      utrNumber: freezed == utrNumber
          ? _value.utrNumber
          : utrNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountDetails: freezed == bankAccountDetails
          ? _value.bankAccountDetails
          : bankAccountDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      logs: null == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettlementModelImplCopyWith<$Res>
    implements $SettlementModelCopyWith<$Res> {
  factory _$$SettlementModelImplCopyWith(_$SettlementModelImpl value,
          $Res Function(_$SettlementModelImpl) then) =
      __$$SettlementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String referenceId,
      double amount,
      SettlementStatus status,
      DateTime scheduledDate,
      DateTime? processedDate,
      String? utrNumber,
      String? bankAccountDetails,
      List<String> logs});
}

/// @nodoc
class __$$SettlementModelImplCopyWithImpl<$Res>
    extends _$SettlementModelCopyWithImpl<$Res, _$SettlementModelImpl>
    implements _$$SettlementModelImplCopyWith<$Res> {
  __$$SettlementModelImplCopyWithImpl(
      _$SettlementModelImpl _value, $Res Function(_$SettlementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referenceId = null,
    Object? amount = null,
    Object? status = null,
    Object? scheduledDate = null,
    Object? processedDate = freezed,
    Object? utrNumber = freezed,
    Object? bankAccountDetails = freezed,
    Object? logs = null,
  }) {
    return _then(_$SettlementModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SettlementStatus,
      scheduledDate: null == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      processedDate: freezed == processedDate
          ? _value.processedDate
          : processedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      utrNumber: freezed == utrNumber
          ? _value.utrNumber
          : utrNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountDetails: freezed == bankAccountDetails
          ? _value.bankAccountDetails
          : bankAccountDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      logs: null == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettlementModelImpl implements _SettlementModel {
  const _$SettlementModelImpl(
      {required this.id,
      required this.referenceId,
      required this.amount,
      required this.status,
      required this.scheduledDate,
      this.processedDate,
      this.utrNumber,
      this.bankAccountDetails,
      final List<String> logs = const []})
      : _logs = logs;

  factory _$SettlementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettlementModelImplFromJson(json);

  @override
  final String id;
  @override
  final String referenceId;
// Order or Wallet ID
  @override
  final double amount;
  @override
  final SettlementStatus status;
  @override
  final DateTime scheduledDate;
  @override
  final DateTime? processedDate;
  @override
  final String? utrNumber;
  @override
  final String? bankAccountDetails;
  final List<String> _logs;
  @override
  @JsonKey()
  List<String> get logs {
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logs);
  }

  @override
  String toString() {
    return 'SettlementModel(id: $id, referenceId: $referenceId, amount: $amount, status: $status, scheduledDate: $scheduledDate, processedDate: $processedDate, utrNumber: $utrNumber, bankAccountDetails: $bankAccountDetails, logs: $logs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettlementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            (identical(other.processedDate, processedDate) ||
                other.processedDate == processedDate) &&
            (identical(other.utrNumber, utrNumber) ||
                other.utrNumber == utrNumber) &&
            (identical(other.bankAccountDetails, bankAccountDetails) ||
                other.bankAccountDetails == bankAccountDetails) &&
            const DeepCollectionEquality().equals(other._logs, _logs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      referenceId,
      amount,
      status,
      scheduledDate,
      processedDate,
      utrNumber,
      bankAccountDetails,
      const DeepCollectionEquality().hash(_logs));

  /// Create a copy of SettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettlementModelImplCopyWith<_$SettlementModelImpl> get copyWith =>
      __$$SettlementModelImplCopyWithImpl<_$SettlementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettlementModelImplToJson(
      this,
    );
  }
}

abstract class _SettlementModel implements SettlementModel {
  const factory _SettlementModel(
      {required final String id,
      required final String referenceId,
      required final double amount,
      required final SettlementStatus status,
      required final DateTime scheduledDate,
      final DateTime? processedDate,
      final String? utrNumber,
      final String? bankAccountDetails,
      final List<String> logs}) = _$SettlementModelImpl;

  factory _SettlementModel.fromJson(Map<String, dynamic> json) =
      _$SettlementModelImpl.fromJson;

  @override
  String get id;
  @override
  String get referenceId; // Order or Wallet ID
  @override
  double get amount;
  @override
  SettlementStatus get status;
  @override
  DateTime get scheduledDate;
  @override
  DateTime? get processedDate;
  @override
  String? get utrNumber;
  @override
  String? get bankAccountDetails;
  @override
  List<String> get logs;

  /// Create a copy of SettlementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettlementModelImplCopyWith<_$SettlementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
