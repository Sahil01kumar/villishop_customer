// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallModelImpl _$$CallModelImplFromJson(Map<String, dynamic> json) =>
    _$CallModelImpl(
      id: json['id'] as String,
      orderId: json['orderId'] as String,
      callerId: json['callerId'] as String,
      receiverId: json['receiverId'] as String,
      receiverName: json['receiverName'] as String,
      receiverPhoto: json['receiverPhoto'] as String,
      status: $enumDecode(_$CallStatusEnumMap, json['status']),
      type: $enumDecode(_$CallTypeEnumMap, json['type']),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      durationSeconds: (json['durationSeconds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CallModelImplToJson(_$CallModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'callerId': instance.callerId,
      'receiverId': instance.receiverId,
      'receiverName': instance.receiverName,
      'receiverPhoto': instance.receiverPhoto,
      'status': _$CallStatusEnumMap[instance.status]!,
      'type': _$CallTypeEnumMap[instance.type]!,
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'durationSeconds': instance.durationSeconds,
    };

const _$CallStatusEnumMap = {
  CallStatus.dialing: 'dialing',
  CallStatus.connected: 'connected',
  CallStatus.ended: 'ended',
  CallStatus.missed: 'missed',
  CallStatus.rejected: 'rejected',
};

const _$CallTypeEnumMap = {
  CallType.voip: 'voip',
  CallType.pstnMasked: 'pstn_masked',
};
