import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/shop_model.dart';

class ShopCard extends StatelessWidget {
  final ShopModel shop;

  const ShopCard({
    super.key,
    required this.shop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(left: AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rL,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.l)),
                  image: shop.imageUrl.isNotEmpty
                      ? DecorationImage(image: NetworkImage(shop.imageUrl), fit: BoxFit.cover)
                      : null,
                ),
                child: shop.imageUrl.isEmpty
                    ? const Center(child: Icon(Icons.storefront, size: 60, color: AppColors.primary))
                    : null,
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.timer_outlined, size: 14, color: AppColors.primary),
                      const SizedBox(width: 4),
                      Text(
                        shop.deliveryTime,
                        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                      ),
                    ],
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Text(shop.rating.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                          const Icon(Icons.star, size: 14, color: Colors.green),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  shop.category,
                  style: TextStyle(color: Colors.grey[600], fontSize: 13, fontWeight: FontWeight.w500),
                ),
                AppSpacing.vS,
                const Divider(height: 1),
                AppSpacing.vS,
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 14, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(shop.distance, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                    const Spacer(),
                    Text('Min. ${shop.minOrder}', style: const TextStyle(color: Colors.grey, fontSize: 12)),
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
