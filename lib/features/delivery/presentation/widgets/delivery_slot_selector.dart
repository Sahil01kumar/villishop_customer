import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/skeleton_loader.dart';
import '../../providers/delivery_provider.dart';
import '../../data/models/delivery_slot_model.dart';
import '../../providers/delivery_state.dart';

class DeliverySlotSelector extends ConsumerWidget {
  const DeliverySlotSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(deliveryProvider);
    final notifier = ref.read(deliveryProvider.notifier);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 10,
              offset: const Offset(0, 4))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Delivery Mode',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildModeButton(
                context: context,
                label: 'Deliver Now',
                icon: Icons.bolt_rounded,
                subtitle: '${state.etaMinutes} mins',
                isSelected: state.deliveryMode == DeliveryMode.deliverNow,
                onTap: () => notifier.setDeliveryMode(DeliveryMode.deliverNow),
              ),
              const SizedBox(width: 12),
              _buildModeButton(
                context: context,
                label: 'Scheduled',
                icon: Icons.calendar_today_rounded,
                subtitle: 'Pick a slot',
                isSelected: state.deliveryMode == DeliveryMode.scheduled,
                onTap: () => notifier.setDeliveryMode(DeliveryMode.scheduled),
              ),
            ],
          ),
          if (state.deliveryMode == DeliveryMode.scheduled) ...[
            const SizedBox(height: 24),
            const Text('Available Slots',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    color: Colors.grey)),
            const SizedBox(height: 12),
            state.isLoading
                ? _buildSlotsSkeleton()
                : state.availableSlots.isEmpty
                    ? const Text('No slots available for this location.',
                        style: TextStyle(color: Colors.red))
                    : _buildSlotsList(state, notifier),
          ],
        ],
      ),
    );
  }

  Widget _buildSlotsSkeleton() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            3,
            (index) => const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child:
                      SkeletonLoader(width: 120, height: 80, borderRadius: 16),
                )),
      ),
    );
  }

  Widget _buildSlotsList(DeliveryState state, DeliveryNotifier notifier) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: state.availableSlots.map((slot) {
          final isSelected = state.selectedSlot?.slotId == slot.slotId;
          return _buildSlotCard(
              slot, isSelected, () => notifier.selectSlot(slot));
        }).toList(),
      ),
    );
  }

  Widget _buildSlotCard(
      DeliverySlotModel slot, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withAlpha(10)
              : const Color(0xFFF7F8FA),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: isSelected ? AppColors.primary : Colors.transparent,
              width: 2),
        ),
        child: Column(
          children: [
            Text(
              slot.label?.split(',').first ?? 'Today',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: isSelected ? AppColors.primary : Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              slot.label?.split(',').last.trim() ?? '',
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModeButton({
    required BuildContext context,
    required String label,
    required IconData icon,
    required String subtitle,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primary : const Color(0xFFF7F8FA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon,
                  color: isSelected ? Colors.white : AppColors.primary,
                  size: 24),
              const SizedBox(height: 12),
              Text(label,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 14)),
              Text(subtitle,
                  style: TextStyle(
                      color: isSelected ? Colors.white70 : Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
