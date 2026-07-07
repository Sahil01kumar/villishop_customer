// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LedgerModel _$LedgerModelFromJson(Map<String, dynamic> json) {
  return _LedgerModel.fromJson(json);
}

/// @nodoc
mixin _$LedgerModel {
  String get id => throw _privateConstructorUsedError;
  LedgerType get type => throw _privateConstructorUsedError;
  EntryType get entryType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  double get balanceAfter => throw _privateConstructorUsedError;
  String? get metadata => throw _privateConstructorUsedError;

  /// Serializes this LedgerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LedgerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LedgerModelCopyWith<LedgerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerModelCopyWith<$Res> {
  factory $LedgerModelCopyWith(
          LedgerModel value, $Res Function(LedgerModel) then) =
      _$LedgerModelCopyWithImpl<$Res, LedgerModel>;
  @useResult
  $Res call(
      {String id,
      LedgerType type,
      EntryType entryType,
      double amount,
      String description,
      String referenceId,
      DateTime createdAt,
      double balanceAfter,
      String? metadata});
}

/// @nodoc
class _$LedgerModelCopyWithImpl<$Res, $Val extends LedgerModel>
    implements $LedgerModelCopyWith<$Res> {
  _$LedgerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LedgerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? entryType = null,
    Object? amount = null,
    Object? description = null,
    Object? referenceId = null,
    Object? createdAt = null,
    Object? balanceAfter = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LedgerType,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as EntryType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LedgerModelImplCopyWith<$Res>
    implements $LedgerModelCopyWith<$Res> {
  factory _$$LedgerModelImplCopyWith(
          _$LedgerModelImpl value, $Res Function(_$LedgerModelImpl) then) =
      __$$LedgerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      LedgerType type,
      EntryType entryType,
      double amount,
      String description,
      String referenceId,
      DateTime createdAt,
      double balanceAfter,
      String? metadata});
}

/// @nodoc
class __$$LedgerModelImplCopyWithImpl<$Res>
    extends _$LedgerModelCopyWithImpl<$Res, _$LedgerModelImpl>
    implements _$$LedgerModelImplCopyWith<$Res> {
  __$$LedgerModelImplCopyWithImpl(
      _$LedgerModelImpl _value, $Res Function(_$LedgerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LedgerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? entryType = null,
    Object? amount = null,
    Object? description = null,
    Object? referenceId = null,
    Object? createdAt = null,
    Object? balanceAfter = null,
    Object? metadata = freezed,
  }) {
    return _then(_$LedgerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LedgerType,
      entryType: null == entryType
          ? _value.entryType
          : entryType // ignore: cast_nullable_to_non_nullable
              as EntryType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LedgerModelImpl implements _LedgerModel {
  const _$LedgerModelImpl(
      {required this.id,
      required this.type,
      required this.entryType,
      required this.amount,
      required this.description,
      required this.referenceId,
      required this.createdAt,
      this.balanceAfter = 0.0,
      this.metadata});

  factory _$LedgerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerModelImplFromJson(json);

  @override
  final String id;
  @override
  final LedgerType type;
  @override
  final EntryType entryType;
  @override
  final double amount;
  @override
  final String description;
  @override
  final String referenceId;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final double balanceAfter;
  @override
  final String? metadata;

  @override
  String toString() {
    return 'LedgerModel(id: $id, type: $type, entryType: $entryType, amount: $amount, description: $description, referenceId: $referenceId, createdAt: $createdAt, balanceAfter: $balanceAfter, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.entryType, entryType) ||
                other.entryType == entryType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, entryType, amount,
      description, referenceId, createdAt, balanceAfter, metadata);

  /// Create a copy of LedgerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerModelImplCopyWith<_$LedgerModelImpl> get copyWith =>
      __$$LedgerModelImplCopyWithImpl<_$LedgerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerModelImplToJson(
      this,
    );
  }
}

abstract class _LedgerModel implements LedgerModel {
  const factory _LedgerModel(
      {required final String id,
      required final LedgerType type,
      required final EntryType entryType,
      required final double amount,
      required final String description,
      required final String referenceId,
      required final DateTime createdAt,
      final double balanceAfter,
      final String? metadata}) = _$LedgerModelImpl;

  factory _LedgerModel.fromJson(Map<String, dynamic> json) =
      _$LedgerModelImpl.fromJson;

  @override
  String get id;
  @override
  LedgerType get type;
  @override
  EntryType get entryType;
  @override
  double get amount;
  @override
  String get description;
  @override
  String get referenceId;
  @override
  DateTime get createdAt;
  @override
  double get balanceAfter;
  @override
  String? get metadata;

  /// Create a copy of LedgerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LedgerModelImplCopyWith<_$LedgerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
