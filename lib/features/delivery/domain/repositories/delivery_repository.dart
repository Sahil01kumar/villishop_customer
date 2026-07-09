import 'package:villishop_customer/features/delivery/data/models/delivery_summary_model.dart';
import 'package:villishop_customer/features/delivery/data/models/delivery_slot_model.dart';

abstract class DeliveryRepository {
  Future<DeliverySummaryModel> calculateCharges({
    required String shopId,
    required double cartValue,
    required double totalWeight,
    required String customerAddressId,
  });

  Future<List<DeliverySlotModel>> getAvailableSlots({
    required String shopId,
    required double cartValue,
    required String customerAddressId,
  });
  
  Future<List<DeliverySummaryModel>> getConsolidatedDeliverySummary({
    required Map<String, double> shopWiseCartValues,
    required String customerAddressId,
  });

  Future<bool> validateSlotAvailability(String slotId);
}
