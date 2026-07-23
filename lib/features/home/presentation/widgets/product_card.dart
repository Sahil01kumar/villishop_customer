import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/product_model.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';
import '../../../cart/presentation/widgets/quantity_stepper.dart';
import '../../../wishlist/providers/wishlist_provider.dart';

class ProductCard extends ConsumerWidget {
  final ProductModel product;
  final double width;
  final bool showNearbyBadge;
  final String heroContext;

  const ProductCard({
    super.key,
    required this.product,
    this.width = 160,
    this.showNearbyBadge = true,
    this.heroContext = 'default',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOutOfStock =
        product.inventory.stockStatus == StockStatus.outOfStock;
    final hasDiscount = product.pricing.mrp > product.pricing.sellingPrice;
    final bool isNearbyZone = product.shopId == 's2';
    final String deliveryEta = isNearbyZone
        ? '45-60 MINS'
        : (product.delivery.deliveryEta ?? '10 MINS');

    return Semantics(
      label: 'Product: ${product.name}',
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withAlpha(20)),
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
              children: [
                // Image Section - Equal Height Ratio
                Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF8F9FB),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16)),
                        ),
                        child: Center(
                          child: Hero(
                            tag: 'product-$heroContext-${product.id}',
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CachedNetworkImage(
                                imageUrl: product.imageUrl,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => Container(
                                  color: Colors.grey[100],
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.shopping_basket_outlined,
                                        color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (hasDiscount)
                        Positioned(
                          top: 0,
                          left: 0,
                          child: _DiscountBadge(
                              percentage: product.pricing.discountPercentage),
                        ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: _WishlistButton(product: product),
                      ),
                      _buildTopLeftBadge(),
                      if (isOutOfStock) _buildOutOfStockOverlay(),
                    ],
                  ),
                ),

                // Info Section - Equal Height Ratio
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
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
                              child: Text(deliveryEta,
                                  style: TextStyle(
                                      color: isNearbyZone
                                          ? Colors.orange
                                          : Colors.green,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w900),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            const Spacer(),
                            if (product.rating > 0) _buildRatingBadge(),
                          ],
                        ),
                        const SizedBox(height: 4),
                        if (isNearbyZone && showNearbyBadge) _buildNearbyBadge(),
                        const Spacer(flex: 1),
                        Text(
                          product.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 11,
                              height: 1.1,
                              color: Colors.black87),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 1),
                        Text(
                            '${product.packaging.weight} ${product.packaging.unit}',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 9,
                                fontWeight: FontWeight.w700)),
                        const Spacer(flex: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (hasDiscount)
                                    Text(
                                      '₹${product.pricing.mrp.toStringAsFixed(0)}',
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                          decoration: TextDecoration.lineThrough,
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
                                  product: product, width: 58, height: 28)
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
        ),
      ),
    ).animate().fadeIn(duration: 400.ms).scale(begin: const Offset(0.98, 0.98));
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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.white, fontSize: 7, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  Widget _buildRatingBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(product.rating.toString(),
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w900,
                  color: Colors.green.shade800)),
          Icon(Icons.star_rounded, size: 9, color: Colors.green.shade800),
        ],
      ),
    );
  }

  Widget _buildNearbyBadge() {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.orange.withAlpha(15),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.orange.withAlpha(30)),
      ),
      child: const Text(
        'NEARBY ZONE',
        style: TextStyle(
            color: Colors.orange, fontSize: 7, fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget _buildOutOfStockOverlay() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(180),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: const Center(
          child: Text('OUT OF STOCK',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 10)),
        ),
      ),
    );
  }
}

class _DiscountBadge extends StatelessWidget {
  final int percentage;
  const _DiscountBadge({required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Text(
        '$percentage% OFF',
        style: const TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.w900),
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
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(220),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(10),
                blurRadius: 4,
                offset: const Offset(0, 2))
          ],
        ),
        child: Icon(
          isWishlisted ? Icons.favorite_rounded : Icons.favorite_border_rounded,
          size: 14,
          color: isWishlisted ? Colors.red : Colors.grey.shade800,
        ),
      ),
    );
  }
}
