import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_model.freezed.dart';
part 'call_model.g.dart';

enum CallStatus {
  @JsonValue('dialing')
  dialing,
  @JsonValue('connected')
  connected,
  @JsonValue('ended')
  ended,
  @JsonValue('missed')
  missed,
  @JsonValue('rejected')
  rejected,
}

enum CallType {
  @JsonValue('voip')
  voip,
  @JsonValue('pstn_masked')
  pstnMasked,
}

@freezed
class CallModel with _$CallModel {
  const factory CallModel({
    required String id,
    required String orderId,
    required String callerId,
    required String receiverId,
    required String receiverName,
    required String receiverPhoto,
    required CallStatus status,
    required CallType type,
    DateTime? startTime,
    DateTime? endTime,
    @Default(0) int durationSeconds,
  }) = _CallModel;

  factory CallModel.fromJson(Map<String, dynamic> json) =>
      _$CallModelFromJson(json);
}
