import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/empty_widget.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/cart/providers/multi_shop_cart_provider.dart';
import 'package:villishop_customer/features/cart/providers/validation/cart_validation_provider.dart';
import 'package:villishop_customer/features/cart/providers/validation/cart_validation_state.dart';
import '../widgets/shop_cart_section.dart';
import '../widgets/validation/validation_result_card.dart';

class MultiShopCartScreen extends ConsumerStatefulWidget {
  const MultiShopCartScreen({super.key});

  @override
  ConsumerState<MultiShopCartScreen> createState() => _MultiShopCartScreenState();
}

class _MultiShopCartScreenState extends ConsumerState<MultiShopCartScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(cartValidationProvider.notifier).validateCart();
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(multiShopCartProvider);
    final validationState = ref.watch(cartValidationProvider);
    final cart = cartState.cart;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('My Cart', style: TextStyle(fontWeight: FontWeight.w900)),
        actions: [
          if (cart.shopCarts.isNotEmpty)
            TextButton(
              onPressed: () => ref.read(multiShopCartProvider.notifier).clearAll(),
              child: const Text('Clear All', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
      body: cartState.isLoading || validationState.isValidating
          ? const LoadingWidget()
          : cart.shopCarts.isEmpty
              ? const EmptyWidget(
                  message: 'Your cart is empty',
                  icon: Icons.shopping_basket_outlined,
                )
              : CustomScrollView(
                  slivers: [
                    // Validation Results
                    if (validationState.validationResult != null && validationState.validationResult!.results.isNotEmpty)
                      SliverToBoxAdapter(
                        child: Column(
                          children: validationState.validationResult!.results
                              .map((res) => ValidationResultCard(result: res))
                              .toList(),
                        ),
                      ),

                    SliverPadding(
                      padding: const EdgeInsets.all(AppSpacing.m),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => ShopCartSection(shopCart: cart.shopCarts[index]),
                          childCount: cart.shopCarts.length,
                        ),
                      ),
                    ),
                    
                    SliverToBoxAdapter(
                      child: _buildOverallSummary(context, cart.overallSummary),
                    ),
                    
                    const SliverToBoxAdapter(child: SizedBox(height: 120)),
                  ],
                ),
      bottomNavigationBar: cart.shopCarts.isEmpty ? null : _buildCheckoutBar(context, cart.overallSummary, validationState),
    );
  }

  Widget _buildOverallSummary(BuildContext context, dynamic summary) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rM,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Overall Bill Summary', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          AppSpacing.vM,
          _row('Total Item MRP', summary.subTotal),
          _row('Total Savings', -summary.totalDiscount, isGreen: true),
          _row('Total Delivery Fee', summary.deliveryCharge),
          _row('Packaging & Taxes', (summary.packagingCharge as double) + (summary.totalTax as double)),
          const Divider(),
          _row('Grand Total', summary.grandTotal, isBold: true),
        ],
      ),
    );
  }

  Widget _row(String label, double value, {bool isGreen = false, bool isBold = false}) {
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
              color: isGreen ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckoutBar(BuildContext context, dynamic summary, CartValidationState validationState) {
    final isAllowed = validationState.validationResult?.isCheckoutAllowed ?? true;

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
                  '₹${summary.grandTotal.toStringAsFixed(0)}',
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                Text('${summary.totalItems} Items', style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: isAllowed ? () {} : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: isAllowed ? AppColors.primary : Colors.grey,
                foregroundColor: Colors.white,
                minimumSize: const Size(180, 54),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                isAllowed ? 'Checkout All' : 'Fix Issues',
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
