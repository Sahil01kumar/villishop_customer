import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/app_router.dart';
import '../../../home/data/models/product_model.dart';
import '../../data/models/sub_models/inventory_info.dart';
import '../../../cart/presentation/widgets/quantity_stepper.dart';
import '../../../../features/wishlist/providers/wishlist_provider.dart';

class ProductCard extends ConsumerWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOutOfStock =
        product.inventory.stockStatus == StockStatus.outOfStock;
    final hasDiscount = product.pricing.mrp > product.pricing.sellingPrice;

    final bool isNearbyZone = product.shopId == 's2';
    final String deliveryEta = isNearbyZone
        ? '45-60 MINS'
        : (product.delivery.deliveryEta ?? '10 MINS');

    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () =>
              context.push('${AppRoutes.productDetails}/${product.id}'),
          behavior: HitTestBehavior.opaque,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.withAlpha(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(5),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Section
                Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF8F9FB),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16)),
                        ),
                        child: Center(
                          child: Hero(
                            tag: 'product-grid-${product.id}',
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CachedNetworkImage(
                                imageUrl: product.imageUrl,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => Container(
                                  color: Colors.grey[100],
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.shopping_basket_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        top: 8,
                        right: 8,
                        child: _WishlistButton(product: product),
                      ),
                      _buildMiniBadgeRow(),
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
                ),

                // Content Section
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer_outlined,
                                size: 10,
                                color: isNearbyZone
                                    ? Colors.orange
                                    : Colors.green),
                            const SizedBox(width: 2),
                            Flexible(
                              child: Text(
                                deliveryEta,
                                style: TextStyle(
                                    color: isNearbyZone
                                        ? Colors.orange
                                        : Colors.green,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w900),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Spacer(),
                            if (product.rating > 0) _buildSmallRatingBadge(),
                          ],
                        ),
                        const SizedBox(height: 6),
                        if (isNearbyZone)
                          Container(
                            margin: const EdgeInsets.only(bottom: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.orange.withAlpha(20),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.orange.withAlpha(50)),
                            ),
                            child: const Text(
                              'NEARBY',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        Text(
                          product.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 12,
                              height: 1.1,
                              color: Colors.black87),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${product.packaging.weight} ${product.packaging.unit}',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (hasDiscount)
                                    Text(
                                      '₹${product.pricing.mrp.toStringAsFixed(0)}',
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  Text(
                                    '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 14,
                                        letterSpacing: -0.2),
                                  ),
                                ],
                              ),
                            ),
                            if (!isOutOfStock)
                              QuantityStepper(
                                  product: product,
                                  width: constraints.maxWidth * 0.45 > 60
                                      ? 60
                                      : constraints.maxWidth * 0.45,
                                  height: 28)
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
                ),
              ],
            ),
          ),
        );
      },
    ).animate().fadeIn(duration: 400.ms).scale(begin: const Offset(0.95, 0.95));
  }

  Widget _buildSmallRatingBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Text(
            product.rating.toString(),
            style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w900,
                color: Colors.green.shade900),
          ),
          const SizedBox(width: 1),
          Icon(Icons.star_rounded, color: Colors.green.shade900, size: 10),
        ],
      ),
    );
  }

  Widget _buildMiniBadgeRow() {
    String? label;
    Color color = Colors.orange;

    if (product.inventory.isNewArrival) {
      label = 'NEW';
      color = Colors.blue;
    } else if (product.healthLabels.isOrganic) {
      label = 'ORGANIC';
      color = Colors.green;
    } else if (product.inventory.isBestseller) {
      label = 'BESTSELLER';
      color = Colors.orange;
    } else if (product.inventory.isTrending) {
      label = 'TRENDING';
      color = Colors.purple;
    }

    if (label == null) return const SizedBox.shrink();

    return Positioned(
      bottom: 8,
      left: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
        child: Text(label,
            style: const TextStyle(
                color: Colors.white, fontSize: 8, fontWeight: FontWeight.w900)),
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
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(220),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(15),
                blurRadius: 5,
                offset: const Offset(0, 2))
          ],
        ),
        child: Icon(
          isWishlisted ? Icons.favorite : Icons.favorite_border,
          size: 16,
          color: isWishlisted ? Colors.red : Colors.grey.shade800,
        ),
      ),
    );
  }
}
