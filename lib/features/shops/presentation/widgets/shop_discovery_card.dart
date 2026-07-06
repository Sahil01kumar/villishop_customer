import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/router/app_router.dart';
import '../../data/models/shop_model.dart';

class ShopDiscoveryCard extends StatelessWidget {
  final ShopModel shop;
  final bool isGrid;

  const ShopDiscoveryCard({
    super.key,
    required this.shop,
    this.isGrid = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('${AppRoutes.shopDetails}/${shop.id}'),
      child: Container(
        width: isGrid ? null : 320,
        margin: isGrid ? EdgeInsets.zero : const EdgeInsets.only(left: AppSpacing.m),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.rL,
          border: Border.all(color: Colors.grey.withAlpha(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.l)),
                  child: Container(
                    height: isGrid ? 120 : 160,
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: shop.imageUrl.isNotEmpty
                        ? Image.network(shop.imageUrl, fit: BoxFit.cover)
                        : const Center(child: Icon(Icons.storefront, size: 50, color: AppColors.primary)),
                  ),
                ),
                if (!shop.isOpen)
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(150),
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.l)),
                      ),
                      child: const Center(
                        child: Text(
                          'CLOSED',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Column(
                    children: shop.offers
                        .map((offer) => Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                offer,
                                style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(
                      shop.isFavourite ? Icons.favorite : Icons.favorite_border,
                      size: 18,
                      color: shop.isFavourite ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.m),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          shop.name,
                          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      _RatingBadge(rating: shop.rating),
                    ],
                  ),
                  Text(
                    shop.category,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                  AppSpacing.vS,
                  Row(
                    children: [
                      const Icon(Icons.timer_outlined, size: 14, color: AppColors.primary),
                      const SizedBox(width: 4),
                      Text(shop.deliveryTime, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 8),
                      const Text('•', style: TextStyle(color: Colors.grey)),
                      const SizedBox(width: 8),
                      Text(shop.distance, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                    ],
                  ),
                  AppSpacing.vS,
                  Row(
                    children: [
                      Text('Min ${shop.minOrder}', style: TextStyle(color: Colors.grey[600], fontSize: 11)),
                      const Spacer(),
                      if (shop.deliveryCharge == 'Free')
                        const Text('FREE DELIVERY',
                            style: TextStyle(color: Colors.green, fontSize: 10, fontWeight: FontWeight.bold))
                      else
                        Text('Delivery ${shop.deliveryCharge}', style: TextStyle(color: Colors.grey[600], fontSize: 11)),
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

class _RatingBadge extends StatelessWidget {
  final double rating;
  const _RatingBadge({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Text(rating.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.green)),
          const Icon(Icons.star, size: 12, color: Colors.green),
        ],
      ),
    );
  }
}
