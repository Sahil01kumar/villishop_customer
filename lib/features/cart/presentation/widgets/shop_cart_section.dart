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
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 15,
              offset: const Offset(0, 8)),
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => ref
                .read(cartProvider.notifier)
                .toggleShopExpansion(shopCart.shopId, !shopCart.isExpanded),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(8),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(
                      value: shopCart.isSelected,
                      onChanged: (val) => ref
                          .read(cartProvider.notifier)
                          .toggleShopSelection(shopCart.shopId, val ?? false),
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.storefront_rounded,
                      size: 20, color: AppColors.primary),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shopCart.shopName,
                          style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              letterSpacing: -0.2),
                        ),
                        if (!shopCart.isOpen)
                          const Text('Closed • Opens at 8 AM',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Icon(
                      shopCart.isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: Colors.grey[600]),
                ],
              ),
            ),
          ),
          if (shopCart.isExpanded) ...[
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: shopCart.items.length,
              separatorBuilder: (context, index) => Divider(
                  height: 1,
                  indent: 16,
                  endIndent: 16,
                  color: Colors.grey.withAlpha(20)),
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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
        border: Border(top: BorderSide(color: Colors.grey.withAlpha(20))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                const Text('Shop Total: ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13)),
                Flexible(
                  child: Text(
                      '₹${shopCart.summary.grandTotal.toStringAsFixed(0)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 16)),
                ),
              ],
            ),
          ),
          if (shopCart.summary.totalDiscount > 0)
            Flexible(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.green.withAlpha(15),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'SAVED ₹${shopCart.summary.totalDiscount.toStringAsFixed(0)}',
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 11,
                      letterSpacing: 0.5),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
