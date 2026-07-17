import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/save_for_later_model.dart';
import '../../providers/save_for_later_provider.dart';

class SavedItemCard extends ConsumerWidget {
  final SaveForLaterModel item;
  const SavedItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = item.product;

    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
        border: Border.all(color: Colors.grey.withAlpha(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppRadius.m)),
                ),
                child: const Icon(Icons.shopping_bag_outlined,
                    size: 40, color: Colors.grey),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: IconButton(
                  icon: const Icon(Icons.close, size: 18, color: Colors.grey),
                  onPressed: () => ref
                      .read(saveForLaterProvider.notifier)
                      .removeFromSaved(product.id),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.s),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${product.packaging.weight} ${product.packaging.unit}',
                  style: const TextStyle(color: Colors.grey, fontSize: 10),
                ),
                AppSpacing.vS,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 14),
                    ),
                    InkWell(
                      onTap: () => ref
                          .read(saveForLaterProvider.notifier)
                          .moveToCart(product),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'MOVE',
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
