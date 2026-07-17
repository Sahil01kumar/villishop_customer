import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/network_image_with_fallback.dart';
import 'package:villishop_customer/features/cart/data/models/cart_item_model.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'quantity_stepper.dart';

class CartItemCard extends ConsumerWidget {
  final CartItemModel item;
  const CartItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = item.product;

    return Dismissible(
      key: Key('cart-item-${product.id}'),
      direction: DismissDirection.endToStart,
      onDismissed: (_) async {
        await ref
            .read(cartProvider.notifier)
            .removeFromCart(product.shopId ?? 'local_shop', product.id);

        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${product.name} removed from cart'),
              action: SnackBarAction(
                label: 'UNDO',
                onPressed: () => ref.read(cartProvider.notifier).undoRemove(),
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          );
        }
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(12)),
        child: const Icon(Icons.delete_sweep_rounded,
            color: Colors.white, size: 28),
      ),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.m),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FB),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withAlpha(20)),
              ),
              child: NetworkImageWithFallback(
                imageUrl: product.imageUrl,
                fit: BoxFit.contain,
                fallbackIcon: Icons.shopping_bag_outlined,
              ),
            ),
            const SizedBox(width: 16),

            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 14, height: 1.1),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${product.packaging.weight} ${product.packaging.unit}',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      if (product.pricing.mrp >
                          product.pricing.sellingPrice) ...[
                        const SizedBox(width: 6),
                        Text(
                          '₹${product.pricing.mrp.toStringAsFixed(0)}',
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),

            // Action
            QuantityStepper(product: product),
          ],
        ),
      ),
    );
  }
}
