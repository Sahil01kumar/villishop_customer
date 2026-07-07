import '../../domain/repositories/delivery_repository.dart';
import '../models/delivery_summary_model.dart';
import '../models/delivery_charge_model.dart';
import '../models/delivery_slot_model.dart';

class DeliveryRepositoryImpl implements DeliveryRepository {
  @override
  Future<DeliverySummaryModel> calculateCharges({
    required String shopId,
    required double cartValue,
    required double totalWeight,
    required String customerAddressId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    
    // Logic: Free delivery over 500
    final isFree = cartValue >= 500;
    
    return DeliverySummaryModel(
      shopId: shopId,
      shopName: 'Village Store #$shopId',
      isFreeDelivery: isFree,
      charges: DeliveryChargeModel(
        baseCharge: 20.0,
        distanceCharge: 15.0,
        weightCharge: totalWeight * 2.0,
        totalCharge: isFree ? 0.0 : 35.0 + (totalWeight * 2.0),
        deliveryPartnerEarning: 25.0,
        platformMargin: 5.0,
      ),
    );
  }

  @override
  Future<List<DeliverySlotModel>> getAvailableSlots(String shopId) async {
    final now = DateTime.now();
    return [
      DeliverySlotModel(
        id: 's1',
        type: SlotType.instant,
        label: 'Instant Delivery',
        startTime: now,
        endTime: now.add(const Duration(minutes: 15)),
        eta: '10-15 mins',
        additionalCharge: 10.0,
      ),
      DeliverySlotModel(
        id: 's2',
        type: SlotType.morning,
        label: 'Morning (08 AM - 11 AM)',
        startTime: DateTime(now.year, now.month, now.day + 1, 8),
        endTime: DateTime(now.year, now.month, now.day + 1, 11),
        isAvailable: true,
      ),
    ];
  }

  @override
  Future<List<DeliverySummaryModel>> getConsolidatedDeliverySummary({
    required Map<String, double> shopWiseCartValues,
    required String customerAddressId,
  }) async {
    List<DeliverySummaryModel> summaries = [];
    for (var entry in shopWiseCartValues.entries) {
      summaries.add(await calculateCharges(
        shopId: entry.key,
        cartValue: entry.value,
        totalWeight: 1.0, // Mock weight
        customerAddressId: customerAddressId,
      ));
    }
    return summaries;
  }
}
