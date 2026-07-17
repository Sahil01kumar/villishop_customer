import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/wishlist/data/models/favourite_shop_model.dart';

class FavouriteShopCard extends StatelessWidget {
  final FavouriteShopModel item;
  final VoidCallback onRemove;
  final VoidCallback onTap;

  const FavouriteShopCard({
    super.key,
    required this.item,
    required this.onRemove,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final shop = item.shop;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.m),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.rM,
          border: Border.all(color: Colors.grey.withAlpha(40)),
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(20),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.storefront, color: AppColors.primary),
            ),
            AppSpacing.hM,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shop.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                  Text(
                    shop.category,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                  AppSpacing.vXS,
                  Row(
                    children: [
                      const Icon(Icons.star,
                          size: 14, color: AppColors.secondary),
                      const SizedBox(width: 4),
                      Text(shop.rating.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      const SizedBox(width: 8),
                      Text(shop.deliveryTime,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.favorite, color: Colors.red),
              onPressed: onRemove,
            ),
          ],
        ),
      ),
    );
  }
}
