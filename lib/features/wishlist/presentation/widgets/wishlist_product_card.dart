import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/wishlist/data/models/wishlist_product_model.dart';
import 'package:villishop_customer/features/cart/presentation/widgets/quantity_stepper.dart';

class WishlistProductCard extends StatelessWidget {
  final WishlistProductModel item;
  final VoidCallback onRemove;

  const WishlistProductCard({
    super.key,
    required this.item,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final product = item.product;
    return GestureDetector(
      onTap: () => context.push('${AppRoutes.productDetails}/${product.id}'),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.s),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.rM,
          border: Border.all(color: Colors.grey.withAlpha(40)),
        ),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: AppRadius.rM,
              ),
              child: const Icon(Icons.shopping_bag_outlined,
                  size: 40, color: Colors.grey),
            ),
            AppSpacing.hM,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.brand ?? 'Local',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete_outline,
                            size: 20, color: Colors.red),
                        onPressed: onRemove,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${product.packaging.weight} ${product.packaging.unit}',
                    style: TextStyle(color: Colors.grey[500], fontSize: 12),
                  ),
                  AppSpacing.vS,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      QuantityStepper(product: product),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
