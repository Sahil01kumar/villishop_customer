import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/home/data/models/product_model.dart';

class ProductPricingSection extends StatelessWidget {
  final ProductModel product;

  const ProductPricingSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final pricing = product.pricing;
    final hasDiscount = pricing.mrp > pricing.sellingPrice;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '₹${pricing.sellingPrice.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                ),
              ),
              if (hasDiscount) ...[
                const SizedBox(width: 8),
                Text(
                  '₹${pricing.mrp.toStringAsFixed(0)}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '${pricing.discountPercentage}% OFF',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 4),
          Text(
            '(Inclusive of all taxes)',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSpacing.m),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.timer_outlined, color: Colors.green, size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Delivery in 10-15 mins',
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                      ),
                      Text(
                        'Fresh from ${product.manufacturing.manufacturer}',
                        style: TextStyle(color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
