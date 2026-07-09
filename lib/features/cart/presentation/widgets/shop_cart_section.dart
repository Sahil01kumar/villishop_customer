import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/cart/data/models/shop_cart_model.dart';
import 'package:villishop_customer/features/cart/presentation/widgets/cart_item_card.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';

class ShopCartSection extends ConsumerWidget {
  final ShopCartModel shopCart;
  const ShopCartSection({super.key, required this.shopCart});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(5), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => ref.read(cartProvider.notifier).toggleShopExpansion(shopCart.shopId, !shopCart.isExpanded),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(5),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 24, width: 24,
                    child: Checkbox(
                      value: shopCart.isSelected,
                      onChanged: (val) => ref.read(cartProvider.notifier).toggleShopSelection(shopCart.shopId, val ?? false),
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.storefront_rounded, size: 20, color: AppColors.primary),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shopCart.shopName,
                          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15, letterSpacing: -0.2),
                        ),
                        if (!shopCart.isOpen)
                          const Text('Shop is currently closed', style: TextStyle(color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Icon(shopCart.isExpanded ? Icons.expand_less_rounded : Icons.expand_more_rounded, color: Colors.grey),
                ],
              ),
            ),
          ),

          if (shopCart.isExpanded) ...[
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shopCart.items.length,
              separatorBuilder: (context, index) => const Divider(height: 1, indent: 16, endIndent: 16, color: Color(0xFFF3F4F6)),
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
        color: Colors.grey[50],
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text('Shop Total: ', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12)),
              Text('₹${shopCart.summary.grandTotal.toStringAsFixed(0)}', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
            ],
          ),
          if (shopCart.summary.totalDiscount > 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: Colors.green.withAlpha(15), borderRadius: BorderRadius.circular(6)),
              child: Text(
                'SAVED ₹${shopCart.summary.totalDiscount.toStringAsFixed(0)}',
                style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 10),
              ),
            ),
        ],
      ),
    );
  }
}
