import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/repositories/delivery_repository.dart';
import '../data/repositories/delivery_repository_impl.dart';
import '../data/models/delivery_slot_model.dart';
import 'delivery_state.dart';

final deliveryRepositoryProvider = Provider<DeliveryRepository>((ref) {
  return DeliveryRepositoryImpl();
});

class DeliveryNotifier extends StateNotifier<DeliveryState> {
  final DeliveryRepository _repository;

  DeliveryNotifier(this._repository) : super(const DeliveryState());

  Future<void> fetchConsolidatedSummary({
    required Map<String, double> shopWiseValues,
    required String addressId,
  }) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final results = await _repository.getConsolidatedDeliverySummary(
        shopWiseCartValues: shopWiseValues,
        customerAddressId: addressId,
      );
      
      final total = results.fold(0.0, (sum, item) {
        return sum + item.charges.totalCharge;
      });
      
      state = state.copyWith(
        isLoading: false,
        summaries: results,
        totalConsolidatedCharge: total,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> loadAvailableSlots({
    required String shopId,
    required double cartValue,
    required String addressId,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      final slots = await _repository.getAvailableSlots(
        shopId: shopId,
        cartValue: cartValue,
        customerAddressId: addressId,
      );
      
      // Auto-select first available slot if none selected
      DeliverySlotModel? initialSlot = state.selectedSlot;
      if (initialSlot == null && slots.isNotEmpty) {
        initialSlot = slots.firstWhere((s) => s.isAvailable, orElse: () => slots.first);
      }

      state = state.copyWith(
        isLoading: false,
        availableSlots: slots,
        selectedSlot: initialSlot,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void selectSlot(DeliverySlotModel slot) {
    if (!slot.isAvailable) return;
    state = state.copyWith(selectedSlot: slot);
  }
}

final deliveryProvider = StateNotifierProvider<DeliveryNotifier, DeliveryState>((ref) {
  return DeliveryNotifier(ref.watch(deliveryRepositoryProvider));
});
