import 'package:flutter/material.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../home/data/models/product_model.dart';

class ProductPricingSection extends StatelessWidget {
  final ProductModel product;
  const ProductPricingSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final saveAmount = product.pricing.mrp - product.pricing.sellingPrice;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product.brand != null)
            Text(
              product.brand!,
              style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 14),
            ),
          AppSpacing.vXS,
          Text(
            product.name,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
          ),
          AppSpacing.vS,
          Text(
            '${product.packaging.weight} ${product.packaging.unit}',
            style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
          ),
          AppSpacing.vM,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
              ),
              AppSpacing.hS,
              if (product.pricing.mrp > product.pricing.sellingPrice) ...[
                Text(
                  'MRP ₹${product.pricing.mrp.toStringAsFixed(0)}',
                  style: const TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    fontSize: 14,
                  ),
                ),
                AppSpacing.hS,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2563EB),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '${product.pricing.discountPercentage}% OFF',
                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ],
          ),
          if (saveAmount > 0)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'You save ₹${saveAmount.toStringAsFixed(0)}',
                style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          AppSpacing.vM,
          const Divider(),
          _DeliveryBanner(eta: product.delivery.deliveryEta),
        ],
      ),
    );
  }
}

class _DeliveryBanner extends StatelessWidget {
  final String? eta;
  const _DeliveryBanner({this.eta});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.timer_outlined, size: 20, color: Colors.green),
        AppSpacing.hS,
        Text(
          'Delivery in ${eta ?? "10 mins"}',
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
        ),
      ],
    );
  }
}
