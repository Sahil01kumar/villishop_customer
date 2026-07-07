import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/empty_widget.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import '../widgets/cart_item_card.dart';
import '../widgets/saved_for_later_section.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartProvider);
    final cart = cartState.cart;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Shopping Cart', style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        actions: [
          if (cart.items.isNotEmpty)
            TextButton(
              onPressed: () => ref.read(cartProvider.notifier).clearCart(),
              child: const Text('Clear All', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
      body: cartState.isLoading
          ? const LoadingWidget()
          : CustomScrollView(
              slivers: [
                if (cart.items.isEmpty)
                  const SliverFillRemaining(
                    child: EmptyWidget(
                      message: 'Your cart feels light! Add some village fresh products.',
                      icon: Icons.shopping_basket_outlined,
                    ),
                  )
                else ...[
                  // Free Delivery Progress
                  _buildFreeDeliveryProgress(cart.summary.subTotal),
                  
                  // Grouped Items by Shop
                  ...cart.itemsByShop.entries.map((entry) {
                    final shopName = entry.value.first.product.shopName ?? 'Local Shop';
                    return SliverMainAxisGroup(
                      slivers: [
                        SliverAppBar(
                          pinned: true,
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.white,
                          toolbarHeight: 40,
                          title: Row(
                            children: [
                              const Icon(Icons.storefront, size: 18, color: AppColors.primary),
                              AppSpacing.hS,
                              Text(
                                shopName,
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => CartItemCard(item: entry.value[index]),
                            childCount: entry.value.length,
                          ),
                        ),
                      ],
                    );
                  }),

                  // Detailed Bill Summary
                  SliverToBoxAdapter(
                    child: _buildBillSummary(context, cart.summary),
                  ),
                ],

                // Saved for Later Section (Even if cart is empty)
                const SliverToBoxAdapter(
                  child: SavedForLaterSection(),
                ),

                const SliverToBoxAdapter(child: SizedBox(height: 120)),
              ],
            ),
      bottomNavigationBar: cart.items.isEmpty ? null : _buildStickyCheckout(context, cart),
    );
  }

  Widget _buildFreeDeliveryProgress(double total) {
    const double freeThreshold = 500.0;
    final double remaining = freeThreshold - total;
    final double progress = (total / freeThreshold).clamp(0.0, 1.0);

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(AppSpacing.m),
        padding: const EdgeInsets.all(AppSpacing.m),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppRadius.rM,
          border: Border.all(color: AppColors.primary.withAlpha(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.delivery_dining_outlined, color: remaining > 0 ? Colors.blue : Colors.green),
                AppSpacing.hS,
                Text(
                  remaining > 0 ? 'Add ₹${remaining.toStringAsFixed(0)} more for FREE delivery' : 'You got FREE delivery!',
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
                ),
              ],
            ),
            AppSpacing.vS,
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[100],
              valueColor: AlwaysStoppedAnimation<Color>(remaining > 0 ? Colors.blue : Colors.green),
              minHeight: 6,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillSummary(BuildContext context, dynamic summary) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Bill Summary', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          AppSpacing.vM,
          _summaryRow('Item Total', summary.subTotal),
          _summaryRow('Item Discount', -summary.totalDiscount, isGreen: true),
          _summaryRow('Delivery Charge', summary.deliveryCharge),
          _summaryRow('Packaging Charge', 10),
          _summaryRow('Taxes & GST', 5),
          const Divider(),
          _summaryRow('Grand Total', summary.grandTotal + 15, isBold: true), // adjusted for new charges
        ],
      ),
    );
  }

  Widget _summaryRow(String label, double value, {bool isGreen = false, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(
            fontSize: 13, 
            fontWeight: isBold ? FontWeight.w900 : FontWeight.w500,
            color: isBold ? Colors.black : Colors.grey[700],
          )),
          Text(
            '${value < 0 ? "-" : ""}₹${value.abs().toStringAsFixed(0)}',
            style: TextStyle(
              fontSize: 13, 
              fontWeight: isBold ? FontWeight.w900 : FontWeight.w900,
              color: isGreen ? Colors.green : (isBold ? Colors.black : Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStickyCheckout(BuildContext context, dynamic cart) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(13), blurRadius: 10, offset: const Offset(0, -4)),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '₹${(cart.summary.grandTotal + 15).toStringAsFixed(0)}',
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                Text('${cart.summary.totalItems} Items', style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => context.push(AppRoutes.home), // Placeholder for checkout
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                minimumSize: const Size(200, 54),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Row(
                children: [
                  Text('Checkout', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
