import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../data/models/delivery_slot_model.dart';
import '../../providers/delivery_provider.dart';

class DeliverySlotSelector extends ConsumerWidget {
  const DeliverySlotSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(deliveryProvider);

    if (state.isLoading) {
      return const Padding(
        padding: EdgeInsets.all(AppSpacing.m),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    if (state.availableSlots.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: AppSpacing.s),
          child: Text(
            'Select Delivery Slot',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: state.availableSlots.length,
            itemBuilder: (context, index) {
              final slot = state.availableSlots[index];
              final isSelected = state.selectedSlot?.slotId == slot.slotId;
              return _SlotCard(
                slot: slot,
                isSelected: isSelected,
                onTap: () => ref.read(deliveryProvider.notifier).selectSlot(slot),
              );
            },
          ),
        ),
        if (state.selectedSlot != null) _buildSlotInfo(state.selectedSlot!),
      ],
    );
  }

  Widget _buildSlotInfo(DeliverySlotModel slot) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primary.withAlpha(5),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary.withAlpha(15)),
        ),
        child: Row(
          children: [
            const Icon(Icons.timer_outlined, color: AppColors.primary, size: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Arriving in ${slot.estimatedMinutes} mins',
                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                  ),
                  Text(
                    'Delivery Partner assigned near your area',
                    style: TextStyle(color: Colors.grey[600], fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            if (slot.deliveryType == DeliveryType.instant)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.green.withAlpha(15), borderRadius: BorderRadius.circular(6)),
                child: const Text('⚡ EXPRESS', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 10)),
              ),
          ],
        ),
      ),
    );
  }
}

class _SlotCard extends StatelessWidget {
  final DeliverySlotModel slot;
  final bool isSelected;
  final VoidCallback onTap;

  const _SlotCard({
    required this.slot,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFree = slot.isFree || slot.deliveryCharge == 0;

    return GestureDetector(
      onTap: slot.isAvailable ? onTap : null,
      child: Opacity(
        opacity: slot.isAvailable ? 1.0 : 0.5,
        child: Container(
          width: 140,
          margin: const EdgeInsets.only(right: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary.withAlpha(10) : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isSelected ? AppColors.primary : Colors.grey.withAlpha(30),
              width: isSelected ? 2 : 1,
            ),
            boxShadow: [
              if (isSelected) BoxShadow(color: AppColors.primary.withAlpha(10), blurRadius: 10, offset: const Offset(0, 4)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (slot.badge != null)
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(color: Colors.orange.withAlpha(20), borderRadius: BorderRadius.circular(4)),
                  child: Text(slot.badge!, style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 8)),
                ),
              Text(
                _getDeliveryIcon(slot.deliveryType),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 4),
              Text(
                slot.label ?? 'Delivery',
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13, height: 1.1),
                maxLines: 2,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isFree)
                    Row(
                      children: [
                        if (slot.originalCharge > 0)
                          Text(
                            '₹${slot.originalCharge.toStringAsFixed(0)}',
                            style: const TextStyle(color: Colors.grey, fontSize: 10, decoration: TextDecoration.lineThrough),
                          ),
                        const SizedBox(width: 4),
                        const Text('FREE', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 12)),
                      ],
                    )
                  else
                    Text('₹${slot.deliveryCharge.toStringAsFixed(0)}', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
                  
                  if (isSelected)
                    const Icon(Icons.check_circle_rounded, color: AppColors.primary, size: 18),
                ],
              ),
              if (!slot.isAvailable)
                 Padding(
                   padding: const EdgeInsets.only(top: 4),
                   child: Text(slot.unavailableReason ?? 'Unavailable', style: const TextStyle(color: Colors.red, fontSize: 8, fontWeight: FontWeight.bold)),
                 ),
            ],
          ),
        ),
      ),
    );
  }

  String _getDeliveryIcon(DeliveryType type) {
    switch (type) {
      case DeliveryType.instant: return '⚡';
      case DeliveryType.express: return '🚀';
      case DeliveryType.scheduled: return '🕒';
      case DeliveryType.standard: return '📦';
    }
  }
}
