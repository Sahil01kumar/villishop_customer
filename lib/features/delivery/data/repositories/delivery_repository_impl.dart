import 'dart:math';
import '../../domain/repositories/delivery_repository.dart';
import '../models/delivery_summary_model.dart';
import '../models/delivery_charge_model.dart';
import '../models/delivery_slot_model.dart';
import '../models/delivery_config_model.dart';
import '../../domain/services/delivery_charge_calculator.dart';

class DeliveryRepositoryImpl implements DeliveryRepository {
  // Enterprise Config (Admin Ready)
  final DeliveryConfigModel _config = const DeliveryConfigModel(
    tiers: [
      DeliveryTier(minOrderValue: 0, maxOrderValue: 198.99, charge: 19),
      DeliveryTier(
          minOrderValue: 199, maxOrderValue: double.infinity, charge: 0),
    ],
    defaultBaseCharge: 19.0,
    deliveryStartTime: '07:00',
    deliveryEndTime: '23:00',
    slotDurationMinutes: 60,
    maxOrdersPerSlot: 15,
    isRainActive: false,
    isFestivalCampaignActive: false,
    isPremiumMembershipFree: true,
  );

  @override
  Future<DeliverySummaryModel> calculateCharges({
    required String shopId,
    required double cartValue,
    required double totalWeight,
    required String customerAddressId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 200));

    double baseCharge = DeliveryChargeCalculator.calculate(cartValue);

    // Global Rules
    bool isFree = baseCharge == 0;
    if (_config.isFestivalCampaignActive || _config.isPremiumMembershipFree) {
      isFree = true;
    }

    double finalCharge = isFree ? 0.0 : baseCharge;

    return DeliverySummaryModel(
      shopId: shopId,
      shopName: 'Village Store #$shopId',
      isFreeDelivery: isFree,
      charges: DeliveryChargeModel(
        baseCharge: DeliveryChargeCalculator.standardDeliveryCharge,
        totalCharge: finalCharge,
        deliveryPartnerEarning:
            finalCharge * _config.deliveryPartnerPayoutRatio,
        platformMargin: finalCharge * _config.platformRetentionRatio,
        packagingCharge: _config.packagingFee,
      ),
    );
  }

  @override
  Future<List<DeliverySlotModel>> getAvailableSlots({
    required String shopId,
    required double cartValue,
    required String customerAddressId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final now = DateTime.now();
    List<DeliverySlotModel> slots = [];

    // --- 🕒 SCHEDULED SLOTS (Today) ---
    final todaySlots = _generateTimeSlots(now, true, cartValue);
    slots.addAll(todaySlots);

    // --- 📦 STANDARD SLOTS (Tomorrow) ---
    final tomorrow = now.add(const Duration(days: 1));
    final tomorrowSlots = _generateTimeSlots(tomorrow, false, cartValue);
    slots.addAll(tomorrowSlots);

    return slots;
  }

  double _calculateDynamicCharge(double base, double cartValue) {
    if (DeliveryChargeCalculator.isEligibleForFreeDelivery(cartValue) ||
        _config.isPremiumMembershipFree) {
      return 0.0;
    }
    return base;
  }

  List<DeliverySlotModel> _generateTimeSlots(
      DateTime date, bool isToday, double cartValue) {
    List<DeliverySlotModel> slots = [];
    final startHour = isToday ? max(DateTime.now().hour + 1, 7) : 7;

    for (int i = startHour; i < 22; i += 1) {
      final startTime = DateTime(date.year, date.month, date.day, i);
      final endTime = startTime.add(const Duration(hours: 1));

      String label;
      final startFormatted =
          "${i % 12 == 0 ? 12 : i % 12}:00 ${i < 12 ? 'AM' : 'PM'}";
      final next = i + 1;
      final endFormatted =
          "${next % 12 == 0 ? 12 : next % 12}:00 ${next < 12 ? 'AM' : 'PM'}";

      label =
          "${isToday ? 'Today' : 'Tomorrow'}, $startFormatted – $endFormatted";

      slots.add(DeliverySlotModel(
        slotId: 'slot_${date.day}_$i',
        deliveryType: DeliveryType.scheduled,
        startTime: startTime,
        endTime: endTime,
        estimatedMinutes: 60,
        deliveryCharge: _calculateDynamicCharge(
            DeliveryChargeCalculator.standardDeliveryCharge, cartValue),
        originalCharge: DeliveryChargeCalculator.standardDeliveryCharge,
        isFree: DeliveryChargeCalculator.isEligibleForFreeDelivery(cartValue),
        isAvailable: true,
        label: label,
        priority: 5,
      ));
    }
    return slots;
  }

  @override
  Future<bool> validateSlotAvailability(String slotId) async {
    return true;
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
        totalWeight: 1.0,
        customerAddressId: customerAddressId,
      ));
    }
    return summaries;
  }
}
