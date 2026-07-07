import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/delivery_summary_model.dart';

class DeliverySummaryCard extends StatelessWidget {
  final DeliverySummaryModel summary;

  const DeliverySummaryCard({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    final charges = summary.charges;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
        border: Border.all(color: Colors.grey.withAlpha(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                summary.shopName,
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
              ),
              if (summary.isFreeDelivery)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(color: Colors.green.withAlpha(20), borderRadius: BorderRadius.circular(4)),
                  child: const Text('FREE', style: TextStyle(color: Colors.green, fontSize: 10, fontWeight: FontWeight.bold)),
                ),
            ],
          ),
          AppSpacing.vS,
          _chargeRow('Base Delivery', charges.baseCharge),
          _chargeRow('Distance & Surge', charges.distanceCharge + charges.surgeCharge),
          if (charges.weightCharge > 0) _chargeRow('Heavy Item Handling', charges.weightCharge),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Delivery Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
              Text(
                '₹${charges.totalCharge.toStringAsFixed(0)}',
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
              ),
            ],
          ),
          AppSpacing.vS,
          Row(
            children: [
              const Icon(Icons.timer_outlined, size: 14, color: AppColors.primary),
              const SizedBox(width: 4),
              Text(
                'Expected ETA: ${summary.estimatedEta}',
                style: const TextStyle(color: AppColors.primary, fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chargeRow(String label, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
          Text('₹${value.toStringAsFixed(0)}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
