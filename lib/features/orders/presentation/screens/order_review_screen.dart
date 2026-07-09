import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import 'package:villishop_customer/features/delivery/providers/delivery_provider.dart';
import '../widgets/order_review_widgets.dart';
import '../../providers/order_provider.dart';

class OrderReviewScreen extends ConsumerWidget {
  const OrderReviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartProvider);
    final locationState = ref.watch(locationProvider);
    final deliveryState = ref.watch(deliveryProvider);
    final orderState = ref.watch(orderReviewProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('Order Review', style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: cartState.cart.shopCarts.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                // Delivery Address Section
                SliverToBoxAdapter(
                  child: AddressReviewCard(
                    address: locationState.selectedAddress,
                    onTap: () => context.push(AppRoutes.addresses),
                  ),
                ),

                // Delivery Slot Section
                SliverToBoxAdapter(
                  child: SlotReviewCard(
                    slot: deliveryState.selectedSlot,
                  ),
                ),

                // Multi-Shop Products Section
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final shopCart = cartState.cart.shopCarts[index];
                      return ShopProductsReviewSection(shopCart: shopCart);
                    },
                    childCount: cartState.cart.shopCarts.length,
                  ),
                ),

                // Delivery Info (ETA, Weight etc)
                SliverToBoxAdapter(
                  child: DeliveryInfoCard(
                    slot: deliveryState.selectedSlot,
                    totalItems: cartState.cart.overallSummary.totalQuantity,
                  ),
                ),

                // Special Instructions
                SliverToBoxAdapter(
                  child: SpecialInstructionsSection(
                    selectedInstructions: orderState.specialInstructions,
                    onToggle: (val) => ref.read(orderReviewProvider.notifier).toggleSpecialInstruction(val),
                    onOtherChanged: (val) => ref.read(orderReviewProvider.notifier).updateOtherInstructions(val),
                    otherText: orderState.otherInstructions,
                  ),
                ),

                // Bill Summary
                SliverToBoxAdapter(
                  child: PriceBreakdownCard(
                    summary: cartState.cart.overallSummary,
                  ),
                ),

                const SliverToBoxAdapter(child: SizedBox(height: 140)),
              ],
            ),
      bottomNavigationBar: _buildBottomBar(context, ref, cartState.cart.overallSummary.grandTotal, orderState),
    );
  }

  Widget _buildBottomBar(BuildContext context, WidgetRef ref, double total, dynamic orderState) {
    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.m, 12, AppSpacing.m, 32),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(8), blurRadius: 20, offset: const Offset(0, -10))],
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('₹${(total + 2.0).toStringAsFixed(0)}', 
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24, letterSpacing: -1)),
              const Text('TOTAL PAYABLE', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 10, letterSpacing: 0.5)),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: orderState.isValidating ? null : () async {
               final isValid = await ref.read(orderReviewProvider.notifier).validateOrder();
               if (!context.mounted) return;
               if (isValid) {
                 context.push(AppRoutes.paymentSelection);
               } else if (orderState.validationError != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(orderState.validationError!)),
                  );
               }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(180, 56),
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
            child: orderState.isValidating
                ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2))
                : const Row(
                    children: [
                      Text('Continue to Payment', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
