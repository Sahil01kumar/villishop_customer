import 'package:freezed_annotation/freezed_annotation.dart';
import 'delivery_charge_model.dart';
import 'delivery_slot_model.dart';

part 'delivery_summary_model.freezed.dart';
part 'delivery_summary_model.g.dart';

@freezed
class DeliverySummaryModel with _$DeliverySummaryModel {
  const factory DeliverySummaryModel({
    required String shopId,
    required String shopName,
    required DeliveryChargeModel charges,
    DeliverySlotModel? selectedSlot,
    @Default('10-15 mins') String estimatedEta,
    @Default(0.0) double discountApplied,
    @Default(false) bool isFreeDelivery,
  }) = _DeliverySummaryModel;

  factory DeliverySummaryModel.fromJson(Map<String, dynamic> json) =>
      _$DeliverySummaryModelFromJson(json);
}
