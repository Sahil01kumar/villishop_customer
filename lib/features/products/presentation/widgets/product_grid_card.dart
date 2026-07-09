import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/app_router.dart';
import '../../../home/data/models/product_model.dart';
import '../../data/models/sub_models/inventory_info.dart';
import '../../../cart/presentation/widgets/quantity_stepper.dart';
import '../../../../features/wishlist/providers/wishlist_provider.dart';

class ProductGridCard extends ConsumerWidget {
  final ProductModel product;

  const ProductGridCard({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOutOfStock = product.inventory.stockStatus == StockStatus.outOfStock;
    final hasDiscount = product.pricing.mrp > product.pricing.sellingPrice;

    return GestureDetector(
      onTap: () => context.push('${AppRoutes.productDetails}/${product.id}'),
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withAlpha(30)),
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
            // Image Section (~55% of height)
            Expanded(
              flex: 55,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF8F9FB),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Center(
                      child: Hero(
                        tag: 'product-${product.id}',
                        child: product.imageUrl.isNotEmpty
                            ? CachedNetworkImage(
                                imageUrl: product.imageUrl,
                                fit: BoxFit.contain,
                                placeholder: (context, url) => Container(color: Colors.grey[100]),
                                errorWidget: (context, url, error) => const Icon(Icons.shopping_basket_outlined, size: 40, color: Colors.grey),
                              )
                            : const Icon(Icons.shopping_basket_outlined, size: 40, color: Colors.grey),
                      ),
                    ),
                  ),
                  
                  // Discount Badge Top-Left
                  if (hasDiscount)
                    Positioned(
                      top: 0, left: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          '${product.pricing.discountPercentage}% OFF',
                          style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),

                  // Wishlist Button Top-Right
                  Positioned(
                    top: 8, right: 8,
                    child: _WishlistButton(product: product),
                  ),

                  // Special Badges (Bestseller/Trending)
                  if (product.inventory.isBestseller || product.inventory.isTrending)
                    Positioned(
                      bottom: 8, left: 8,
                      child: _buildMiniBadge(
                        product.inventory.isBestseller ? 'BESTSELLER' : 'TRENDING',
                        product.inventory.isBestseller ? Colors.orange : Colors.purple,
                      ),
                    ),

                  // Out of Stock Overlay
                  if (isOutOfStock)
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(150),
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                        ),
                        child: const Center(
                          child: Text('SOLD OUT', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 10)),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // Content Section (~45% of height)
            Expanded(
              flex: 45,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Delivery Time & Rating below image
                    Row(
                      children: [
                        const Icon(Icons.timer_outlined, size: 10, color: Colors.green),
                        const SizedBox(width: 2),
                        Text(
                          product.delivery.deliveryEta ?? '10 MINS',
                          style: const TextStyle(color: Colors.green, fontSize: 9, fontWeight: FontWeight.w900),
                        ),
                        const Spacer(),
                        if (product.rating > 0)
                          Row(
                            children: [
                              const Icon(Icons.star, size: 10, color: Colors.orange),
                              Text(
                                product.rating.toString(),
                                style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    
                    // Product Name (Max 2 lines)
                    Text(
                      product.name,
                      style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 11, height: 1.1, color: Colors.black87),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    
                    // Packaging info
                    Text(
                      '${product.packaging.weight} ${product.packaging.unit}',
                      style: TextStyle(color: Colors.grey[600], fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                    
                    const Spacer(),
                    
                    // Pricing & Action Row (Fixed at bottom)
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
                                  style: const TextStyle(color: Colors.grey, fontSize: 9, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),
                                ),
                              Text(
                                '₹${product.pricing.sellingPrice.toStringAsFixed(0)}',
                                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        if (!isOutOfStock)
                          QuantityStepper(product: product, width: 60, height: 26)
                        else
                          const Text('OFFLINE', style: TextStyle(color: Colors.grey, fontSize: 8, fontWeight: FontWeight.w900)),
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
  }

  Widget _buildMiniBadge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 7, fontWeight: FontWeight.w900)),
    );
  }
}

class _WishlistButton extends ConsumerWidget {
  final ProductModel product;
  const _WishlistButton({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isWishlisted = ref.watch(wishlistProvider.select((s) => s.products.any((p) => p.product.id == product.id)));
    
    return GestureDetector(
      onTap: () => ref.read(wishlistProvider.notifier).toggleProductWishlist(product),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Colors.black.withAlpha(10), blurRadius: 4, offset: const Offset(0, 2))],
        ),
        child: Icon(
          isWishlisted ? Icons.favorite : Icons.favorite_border,
          size: 14,
          color: isWishlisted ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}
