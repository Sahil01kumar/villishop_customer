// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_sync_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartSyncModel _$CartSyncModelFromJson(Map<String, dynamic> json) {
  return _CartSyncModel.fromJson(json);
}

/// @nodoc
mixin _$CartSyncModel {
  SyncStatus get status => throw _privateConstructorUsedError;
  DateTime? get lastSyncTime => throw _privateConstructorUsedError;
  int get retryCount => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isOfflineCartAvailable => throw _privateConstructorUsedError;

  /// Serializes this CartSyncModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartSyncModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartSyncModelCopyWith<CartSyncModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartSyncModelCopyWith<$Res> {
  factory $CartSyncModelCopyWith(
          CartSyncModel value, $Res Function(CartSyncModel) then) =
      _$CartSyncModelCopyWithImpl<$Res, CartSyncModel>;
  @useResult
  $Res call(
      {SyncStatus status,
      DateTime? lastSyncTime,
      int retryCount,
      String? errorMessage,
      bool isOfflineCartAvailable});
}

/// @nodoc
class _$CartSyncModelCopyWithImpl<$Res, $Val extends CartSyncModel>
    implements $CartSyncModelCopyWith<$Res> {
  _$CartSyncModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartSyncModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastSyncTime = freezed,
    Object? retryCount = null,
    Object? errorMessage = freezed,
    Object? isOfflineCartAvailable = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SyncStatus,
      lastSyncTime: freezed == lastSyncTime
          ? _value.lastSyncTime
          : lastSyncTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isOfflineCartAvailable: null == isOfflineCartAvailable
          ? _value.isOfflineCartAvailable
          : isOfflineCartAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartSyncModelImplCopyWith<$Res>
    implements $CartSyncModelCopyWith<$Res> {
  factory _$$CartSyncModelImplCopyWith(
          _$CartSyncModelImpl value, $Res Function(_$CartSyncModelImpl) then) =
      __$$CartSyncModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SyncStatus status,
      DateTime? lastSyncTime,
      int retryCount,
      String? errorMessage,
      bool isOfflineCartAvailable});
}

/// @nodoc
class __$$CartSyncModelImplCopyWithImpl<$Res>
    extends _$CartSyncModelCopyWithImpl<$Res, _$CartSyncModelImpl>
    implements _$$CartSyncModelImplCopyWith<$Res> {
  __$$CartSyncModelImplCopyWithImpl(
      _$CartSyncModelImpl _value, $Res Function(_$CartSyncModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartSyncModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastSyncTime = freezed,
    Object? retryCount = null,
    Object? errorMessage = freezed,
    Object? isOfflineCartAvailable = null,
  }) {
    return _then(_$CartSyncModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SyncStatus,
      lastSyncTime: freezed == lastSyncTime
          ? _value.lastSyncTime
          : lastSyncTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isOfflineCartAvailable: null == isOfflineCartAvailable
          ? _value.isOfflineCartAvailable
          : isOfflineCartAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartSyncModelImpl implements _CartSyncModel {
  const _$CartSyncModelImpl(
      {this.status = SyncStatus.idle,
      this.lastSyncTime,
      this.retryCount = 0,
      this.errorMessage,
      this.isOfflineCartAvailable = false});

  factory _$CartSyncModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartSyncModelImplFromJson(json);

  @override
  @JsonKey()
  final SyncStatus status;
  @override
  final DateTime? lastSyncTime;
  @override
  @JsonKey()
  final int retryCount;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isOfflineCartAvailable;

  @override
  String toString() {
    return 'CartSyncModel(status: $status, lastSyncTime: $lastSyncTime, retryCount: $retryCount, errorMessage: $errorMessage, isOfflineCartAvailable: $isOfflineCartAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartSyncModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastSyncTime, lastSyncTime) ||
                other.lastSyncTime == lastSyncTime) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isOfflineCartAvailable, isOfflineCartAvailable) ||
                other.isOfflineCartAvailable == isOfflineCartAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, lastSyncTime, retryCount,
      errorMessage, isOfflineCartAvailable);

  /// Create a copy of CartSyncModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartSyncModelImplCopyWith<_$CartSyncModelImpl> get copyWith =>
      __$$CartSyncModelImplCopyWithImpl<_$CartSyncModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartSyncModelImplToJson(
      this,
    );
  }
}

abstract class _CartSyncModel implements CartSyncModel {
  const factory _CartSyncModel(
      {final SyncStatus status,
      final DateTime? lastSyncTime,
      final int retryCount,
      final String? errorMessage,
      final bool isOfflineCartAvailable}) = _$CartSyncModelImpl;

  factory _CartSyncModel.fromJson(Map<String, dynamic> json) =
      _$CartSyncModelImpl.fromJson;

  @override
  SyncStatus get status;
  @override
  DateTime? get lastSyncTime;
  @override
  int get retryCount;
  @override
  String? get errorMessage;
  @override
  bool get isOfflineCartAvailable;

  /// Create a copy of CartSyncModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartSyncModelImplCopyWith<_$CartSyncModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
