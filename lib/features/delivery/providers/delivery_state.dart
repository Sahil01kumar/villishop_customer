import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/delivery_summary_model.dart';
import '../data/models/delivery_slot_model.dart';

part 'delivery_state.freezed.dart';

@freezed
class DeliveryState with _$DeliveryState {
  const factory DeliveryState({
    @Default(false) bool isLoading,
    @Default([]) List<DeliverySummaryModel> summaries,
    @Default([]) List<DeliverySlotModel> availableSlots,
    DeliverySlotModel? selectedSlot,
    String? errorMessage,
    @Default(0.0) double totalConsolidatedCharge,
  }) = _DeliveryState;
}
