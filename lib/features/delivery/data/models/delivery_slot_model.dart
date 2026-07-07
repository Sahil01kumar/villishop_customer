import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_slot_model.freezed.dart';
part 'delivery_slot_model.g.dart';

enum SlotType { instant, morning, afternoon, evening, night, scheduled }

@freezed
class DeliverySlotModel with _$DeliverySlotModel {
  const factory DeliverySlotModel({
    required String id,
    required SlotType type,
    required String label,
    required DateTime startTime,
    required DateTime endTime,
    @Default(true) bool isAvailable,
    @Default(0.0) double additionalCharge,
    String? eta,
  }) = _DeliverySlotModel;

  factory DeliverySlotModel.fromJson(Map<String, dynamic> json) => _$DeliverySlotModelFromJson(json);
}
