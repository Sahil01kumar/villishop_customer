// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_sync_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartSyncModelImpl _$$CartSyncModelImplFromJson(Map<String, dynamic> json) =>
    _$CartSyncModelImpl(
      status: $enumDecodeNullable(_$SyncStatusEnumMap, json['status']) ??
          SyncStatus.idle,
      lastSyncTime: json['lastSyncTime'] == null
          ? null
          : DateTime.parse(json['lastSyncTime'] as String),
      retryCount: (json['retryCount'] as num?)?.toInt() ?? 0,
      errorMessage: json['errorMessage'] as String?,
      isOfflineCartAvailable: json['isOfflineCartAvailable'] as bool? ?? false,
    );

Map<String, dynamic> _$$CartSyncModelImplToJson(_$CartSyncModelImpl instance) =>
    <String, dynamic>{
      'status': _$SyncStatusEnumMap[instance.status]!,
      'lastSyncTime': instance.lastSyncTime?.toIso8601String(),
      'retryCount': instance.retryCount,
      'errorMessage': instance.errorMessage,
      'isOfflineCartAvailable': instance.isOfflineCartAvailable,
    };

const _$SyncStatusEnumMap = {
  SyncStatus.idle: 'idle',
  SyncStatus.pending: 'pending',
  SyncStatus.syncing: 'syncing',
  SyncStatus.success: 'success',
  SyncStatus.failed: 'failed',
};
