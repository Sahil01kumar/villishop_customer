import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/product_model.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';
import '../../../cart/presentation/widgets/quantity_stepper.dart';
import '../../../wishlist/providers/wishlist_provider.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final isOutOfStock =
        product.inventory.stockStatus == StockStatus.outOfStock;
    final hasDiscount = product.pricing.mrp > product.pricing.sellingPrice;

    return Semantics(
      label: 'Product: ${product.name}',
      hint: 'Double tap to view details',
      child: Container(
        width: 156,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withAlpha(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            onTap: () =>
                context.push('${AppRoutes.productDetails}/${product.id}'),
            borderRadius: BorderRadius.circular(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image Section
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF8F9FB),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      child: Center(
                        child: Hero(
                          tag: 'product-${product.id}',
                          child: CachedNetworkImage(
                            imageUrl: product.imageUrl,
                            fit: BoxFit.contain,
                            placeholder: (context, url) => Container(
                              color: Colors.grey[100],
                            ),
                            errorWidget: (context, url, error) => const Icon(
                                Icons.shopping_basket_outlined,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    // Badges
                    if (hasDiscount)
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            '${product.pricing.discountPercentage}% OFF',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),

                    Positioned(
                      top: 4,
                      right: 4,
                      child: _WishlistButton(product: product),
                    ),

                    // Badge Logic (New / Organic / Trending)
                    _buildTopLeftBadge(),

                    if (isOutOfStock)
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(180),
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                          ),
                          child: const Center(
                            child: Text('OUT OF STOCK',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10)),
                          ),
                        ),
                      ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined,
                              size: 10, color: Colors.green),
                          const SizedBox(width: 2),
                          Text(product.delivery.deliveryEta ?? '10 MINS',
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w900)),
                          const Spacer(),
                          if (product.rating > 0)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 1),
                              decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(product.rating.toString(),
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.green.shade800)),
                                  Icon(Icons.star_rounded,
                                      size: 10, color: Colors.green.shade800),
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            height: 1.1,
                            color: Colors.black87),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                          '${product.packaging.weight} ${product.packaging.unit}',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (hasDiscount) ...[
                                  Text(
                                    '₹${product.pricing.mrp.toStringAsFixed(0)}',
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                                Text(
                                  '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          if (!isOutOfStock)
                            QuantityStepper(
                                product: product, width: 56, height: 28)
                          else
                            const Text('OFFLINE',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w900)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopLeftBadge() {
    String? label;
    Color color = AppColors.primary;

    if (product.inventory.isNewArrival) {
      label = 'NEW';
      color = Colors.blue;
    } else if (product.healthLabels.isOrganic) {
      label = 'ORGANIC';
      color = Colors.green;
    } else if (product.inventory.isTrending) {
      label = 'TRENDING';
      color = Colors.deepPurple;
    }

    if (label == null) return const SizedBox.shrink();

    return Positioned(
      bottom: 4,
      left: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.white, fontSize: 8, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}

class _WishlistButton extends ConsumerWidget {
  final ProductModel product;
  const _WishlistButton({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isWishlisted = ref.watch(wishlistProvider
        .select((s) => s.products.any((p) => p.product.id == product.id)));

    return GestureDetector(
      onTap: () =>
          ref.read(wishlistProvider.notifier).toggleProductWishlist(product),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(200),
          shape: BoxShape.circle,
        ),
        child: Icon(
          isWishlisted ? Icons.favorite : Icons.favorite_border,
          size: 16,
          color: isWishlisted ? Colors.red : Colors.grey.shade700,
        ),
      ),
    );
  }
}
