import 'package:flutter/material.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../data/models/shop_model.dart';

class ShopInfoSection extends StatelessWidget {
  final ShopModel shop;

  const ShopInfoSection({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shop.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    shop.category,
                    style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: AppRadius.rM,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(shop.rating.toString(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green)),
                        const Icon(Icons.star, size: 18, color: Colors.green),
                      ],
                    ),
                    Text('${shop.totalReviews} reviews', style: const TextStyle(fontSize: 10, color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
          AppSpacing.vM,
          Row(
            children: [
              _buildInfoItem(Icons.timer_outlined, shop.deliveryTime),
              _buildDivider(),
              _buildInfoItem(Icons.location_on_outlined, shop.distance),
              _buildDivider(),
              _buildInfoItem(Icons.shopping_bag_outlined, 'Min ${shop.minOrder}'),
            ],
          ),
          if (shop.description != null) ...[
            AppSpacing.vM,
            Text(
              shop.description!,
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey[600]),
        const SizedBox(width: 4),
        Text(text, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(height: 15, width: 1, color: Colors.grey[300]),
    );
  }
}
