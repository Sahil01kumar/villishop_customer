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
              const Icon(Icons.delivery_dining_outlined, size: 18, color: Colors.blue),
            ],
          ),
          AppSpacing.vS,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Charge', style: TextStyle(color: Colors.grey[600], fontSize: 13)),
              if (summary.isFreeDelivery)
                Row(
                  children: [
                    Text(
                      '₹${charges.baseCharge.toStringAsFixed(0)}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    AppSpacing.hS,
                    const Text(
                      'FREE',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )
              else
                Text(
                  '₹${charges.totalCharge.toStringAsFixed(0)}',
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                ),
            ],
          ),
          if (charges.surgeCharge > 0)
            _chargeRow('Surge Fee (Rain/Night)', charges.surgeCharge, color: Colors.orange),
          AppSpacing.vS,
          Row(
            children: [
              const Icon(Icons.timer_outlined, size: 14, color: AppColors.primary),
              const SizedBox(width: 4),
              Text(
                'Delivery in ${summary.estimatedEta}',
                style: const TextStyle(color: AppColors.primary, fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chargeRow(String label, double value, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
          Text(
            '₹${value.toStringAsFixed(0)}',
            style: TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
