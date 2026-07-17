import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/network_image_with_fallback.dart';
import '../../../home/data/models/product_model.dart';
import '../../data/models/sub_models/inventory_info.dart';
import '../../../../features/cart/providers/cart_provider.dart';

class ProductListTile extends ConsumerWidget {
  final ProductModel product;

  const ProductListTile({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => context.push('${AppRoutes.productDetails}/${product.id}'),
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.s),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.rM,
          border: Border.all(color: Colors.grey.withAlpha(40)),
        ),
        child: Row(
          children: [
            _buildProductImage(),
            AppSpacing.hM,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBadges(),
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (product.brand != null)
                    Text(
                      product.brand!,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  AppSpacing.vS,
                  Text(
                    '${product.packaging.weight} ${product.packaging.unit}',
                    style: TextStyle(color: Colors.grey[500], fontSize: 13),
                  ),
                  const Spacer(),
                  _buildPriceSection(context, ref),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage() {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: AppRadius.rM,
          ),
          child: Center(
            child: Hero(
              tag: 'product-${product.id}',
              child: NetworkImageWithFallback(
                imageUrl: product.imageUrl,
                fit: BoxFit.contain,
                fallbackIcon: Icons.shopping_bag_outlined,
              ),
            ),
          ),
        ),
        if (product.inventory.stockStatus == StockStatus.outOfStock)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(150),
                borderRadius: AppRadius.rM,
              ),
              child: const Center(
                child: Text('OUT OF STOCK',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildBadges() {
    return Row(
      children: [
        if (product.healthLabels.isVegan)
          const Icon(Icons.radio_button_checked, color: Colors.green, size: 14),
        if (product.inventory.isBestseller) ...[
          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(4)),
            child: const Text('BESTSELLER',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 8,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ],
    );
  }

  Widget _buildPriceSection(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.pricing.mrp > product.pricing.sellingPrice)
              Text(
                '₹${product.pricing.mrp.toStringAsFixed(0)}',
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough),
              ),
            Text(
              '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: AppColors.textPrimary),
            ),
          ],
        ),
        _AddButton(
          onTap: () {
            ref.read(cartProvider.notifier).addToCart(product);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${product.name} added to cart'),
                duration: const Duration(seconds: 1),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
        ),
      ],
    );
  }
}

class _AddButton extends StatelessWidget {
  final VoidCallback onTap;
  const _AddButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: AppRadius.rM,
        ),
        child: const Text('ADD',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
      ),
    );
  }
}
