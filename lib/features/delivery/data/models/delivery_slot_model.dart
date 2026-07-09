import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_slot_model.freezed.dart';
part 'delivery_slot_model.g.dart';

enum DeliveryType { 
  @JsonValue('instant') instant, 
  @JsonValue('express') express, 
  @JsonValue('scheduled') scheduled, 
  @JsonValue('standard') standard 
}

@freezed
class DeliverySlotModel with _$DeliverySlotModel {
  const factory DeliverySlotModel({
    required String slotId,
    required DeliveryType deliveryType,
    required DateTime startTime,
    required DateTime endTime,
    @Default(0) int estimatedMinutes,
    @Default(0.0) double deliveryCharge,
    @Default(0.0) double originalCharge,
    @Default(false) bool isFree,
    @Default(true) bool isAvailable,
    @Default(0) int priority,
    @Default(0) int capacity,
    @Default(0) int remainingCapacity,
    String? offerTag,
    String? badge,
    String? unavailableReason,
    String? label,
  }) = _DeliverySlotModel;

  factory DeliverySlotModel.fromJson(Map<String, dynamic> json) => _$DeliverySlotModelFromJson(json);
}
