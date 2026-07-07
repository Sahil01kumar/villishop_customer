import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/shop_cart_model.dart';
import '../widgets/cart_item_card.dart';
import '../../providers/multi_shop_cart_provider.dart';

class ShopCartSection extends ConsumerWidget {
  final ShopCartModel shopCart;
  const ShopCartSection({super.key, required this.shopCart});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(10), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          // Sticky Shop Header (Simulation)
          InkWell(
            onTap: () => ref.read(multiShopCartProvider.notifier).toggleShopExpansion(shopCart.shopId, !shopCart.isExpanded),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.m),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(AppRadius.m)),
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: shopCart.isSelected,
                    onChanged: (val) => ref.read(multiShopCartProvider.notifier).toggleShopSelection(shopCart.shopId, val ?? false),
                    activeColor: AppColors.primary,
                  ),
                  const Icon(Icons.storefront, size: 20, color: AppColors.primary),
                  AppSpacing.hS,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shopCart.shopName,
                          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                        ),
                        if (!shopCart.isOpen)
                          const Text('Closed Now', style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Icon(shopCart.isExpanded ? Icons.expand_less : Icons.expand_more, color: Colors.grey),
                ],
              ),
            ),
          ),
          
          if (shopCart.isExpanded) ...[
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shopCart.items.length,
              itemBuilder: (context, index) {
                return CartItemCard(item: shopCart.items[index]);
              },
            ),
            _buildShopSummary(context),
          ],
        ],
      ),
    );
  }

  Widget _buildShopSummary(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(5),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(AppRadius.m)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Shop Total: ₹${shopCart.summary.grandTotal.toStringAsFixed(0)}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          if (shopCart.summary.totalDiscount > 0)
            Text(
              'Savings: ₹${shopCart.summary.totalDiscount.toStringAsFixed(0)}',
              style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12),
            ),
        ],
      ),
    );
  }
}
