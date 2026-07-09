import 'dart:math';
import '../../domain/repositories/delivery_repository.dart';
import '../models/delivery_summary_model.dart';
import '../models/delivery_charge_model.dart';
import '../models/delivery_slot_model.dart';
import '../models/delivery_config_model.dart';

class DeliveryRepositoryImpl implements DeliveryRepository {
  // Enterprise Config (Admin Ready)
  final DeliveryConfigModel _config = const DeliveryConfigModel(
    tiers: [
      DeliveryTier(minOrderValue: 0, maxOrderValue: 98.99, charge: 19),
      DeliveryTier(minOrderValue: 99, maxOrderValue: 198.99, charge: 9),
      DeliveryTier(minOrderValue: 199, maxOrderValue: double.infinity, charge: 0),
    ],
    defaultBaseCharge: 29.0,
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
    
    double baseCharge = _config.defaultBaseCharge;
    
    // 1. Tier Check
    for (var tier in _config.tiers) {
      if (cartValue >= tier.minOrderValue && cartValue <= tier.maxOrderValue) {
        baseCharge = tier.charge;
        break;
      }
    }

    // 2. Global Rules
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
        baseCharge: _config.defaultBaseCharge, 
        totalCharge: finalCharge,
        deliveryPartnerEarning: finalCharge * _config.deliveryPartnerPayoutRatio,
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

    // --- ⚡ INSTANT DELIVERY ---
    bool isInstantAvailable = _isWithinDeliveryHours(now) && !_config.isRainActive;
    slots.add(DeliverySlotModel(
      slotId: 'instant',
      deliveryType: DeliveryType.instant,
      startTime: now,
      endTime: now.add(const Duration(minutes: 15)),
      estimatedMinutes: 12,
      deliveryCharge: _calculateDynamicCharge(19, cartValue),
      originalCharge: 19,
      isAvailable: isInstantAvailable,
      unavailableReason: !isInstantAvailable ? (_config.isRainActive ? 'No riders due to rain' : 'Closed now') : null,
      priority: 10,
      badge: '⚡ FASTEST',
      offerTag: cartValue > 199 ? 'FREE' : null,
      isFree: cartValue > 199,
      label: 'Instant Delivery',
    ));

    // --- 🚀 EXPRESS DELIVERY ---
    slots.add(DeliverySlotModel(
      slotId: 'express',
      deliveryType: DeliveryType.express,
      startTime: now,
      endTime: now.add(const Duration(minutes: 45)),
      estimatedMinutes: 35,
      deliveryCharge: _calculateDynamicCharge(9, cartValue),
      originalCharge: 9,
      isAvailable: true,
      priority: 8,
      badge: '🚀 POPULAR',
      offerTag: cartValue > 99 ? 'FREE' : null,
      isFree: cartValue > 99,
      label: 'Express Delivery',
    ));

    // --- 🕒 SCHEDULED SLOTS (Today) ---
    final todaySlots = _generateTimeSlots(now, true, cartValue);
    slots.addAll(todaySlots);

    // --- 📦 STANDARD SLOTS (Tomorrow) ---
    final tomorrow = now.add(const Duration(days: 1));
    final tomorrowSlots = _generateTimeSlots(tomorrow, false, cartValue);
    slots.addAll(tomorrowSlots);

    return slots;
  }

  bool _isWithinDeliveryHours(DateTime time) {
    final start = _config.deliveryStartTime.split(':').map(int.parse).toList();
    final end = _config.deliveryEndTime.split(':').map(int.parse).toList();
    
    final startTime = DateTime(time.year, time.month, time.day, start[0], start[1]);
    final endTime = DateTime(time.year, time.month, time.day, end[0], end[1]);
    
    return time.isAfter(startTime) && time.isBefore(endTime);
  }

  double _calculateDynamicCharge(double base, double cartValue) {
    if (cartValue > 199 || _config.isPremiumMembershipFree) return 0.0;
    return base;
  }

  List<DeliverySlotModel> _generateTimeSlots(DateTime date, bool isToday, double cartValue) {
    List<DeliverySlotModel> slots = [];
    final startHour = isToday ? max(DateTime.now().hour + 1, 7) : 7;
    
    for (int i = startHour; i < 22; i += 2) {
      final startTime = DateTime(date.year, date.month, date.day, i);
      final endTime = startTime.add(const Duration(hours: 2));
      
      slots.add(DeliverySlotModel(
        slotId: 'slot_${date.day}_$i',
        deliveryType: isToday ? DeliveryType.scheduled : DeliveryType.standard,
        startTime: startTime,
        endTime: endTime,
        estimatedMinutes: 120,
        deliveryCharge: _calculateDynamicCharge(0, cartValue),
        isFree: true,
        isAvailable: true,
        label: '${isToday ? 'Today' : 'Tomorrow'}, ${i % 12 == 0 ? 12 : i % 12} ${i < 12 ? 'AM' : 'PM'} - ${(i + 2) % 12 == 0 ? 12 : (i + 2) % 12} ${(i + 2) < 12 ? 'AM' : 'PM'}',
        priority: 5,
      ));
    }
    return slots;
  }

  @override
  Future<bool> validateSlotAvailability(String slotId) async {
    // Enterprise logic: check capacity in real-time
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
