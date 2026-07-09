import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/core/widgets/empty_widget.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/cart/data/models/cart_model.dart';
import 'package:villishop_customer/features/cart/data/models/cart_summary_model.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'package:villishop_customer/features/cart/providers/cart_state.dart';
import 'package:villishop_customer/features/coupons/presentation/widgets/coupon_bottom_sheet.dart';
import 'package:villishop_customer/features/coupons/providers/coupon_provider.dart';
import 'package:villishop_customer/features/delivery/presentation/widgets/delivery_slot_selector.dart';
import 'package:villishop_customer/features/delivery/providers/delivery_provider.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import '../widgets/shop_cart_section.dart';
import '../widgets/saved_for_later_section.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {

  @override
  void initState() {
    super.initState();
    _initDeliverySlots();
  }

  void _initDeliverySlots() {
    Future.microtask(() {
      final cart = ref.read(cartProvider).cart;
      final address = ref.read(locationProvider).selectedAddress;
      
      if (cart.shopCarts.isNotEmpty && address != null) {
        ref.read(deliveryProvider.notifier).loadAvailableSlots(
          shopId: cart.shopCarts.first.shopId,
          cartValue: cart.overallSummary.subTotal - cart.overallSummary.totalDiscount,
          addressId: address.id,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartProvider);
    final couponState = ref.watch(couponProvider);
    final cart = cartState.cart;

    // Listen for slot changes and update cart summary
    ref.listen(deliveryProvider.select((s) => s.selectedSlot), (prev, next) {
      if (next != prev) {
        ref.read(cartProvider.notifier).updateDeliverySlot(next);
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('Checkout', style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          if (cart.shopCarts.isNotEmpty)
            TextButton(
              onPressed: () => _showClearCartDialog(context),
              child: const Text('Clear All', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
        ],
      ),
      body: cartState.isLoading
          ? const LoadingWidget()
          : cart.shopCarts.isEmpty
              ? const EmptyWidget(
                  message: 'Your cart is empty. Start adding some village fresh items!',
                  icon: Icons.shopping_basket_outlined,
                )
              : CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: AppSpacing.s),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => ShopCartSection(shopCart: cart.shopCarts[index]),
                          childCount: cart.shopCarts.length,
                        ),
                      ),
                    ),

                    // Enterprise Delivery Slot Selection
                    const SliverToBoxAdapter(child: DeliverySlotSelector()),
                    
                    // Premium Coupon Section
                    SliverToBoxAdapter(child: _buildCouponSection(context, cartState)),
                    
                    // Detailed Bill Summary
                    SliverToBoxAdapter(
                      child: _buildOverallSummary(context, cart.overallSummary, couponState),
                    ),
                    
                    const SliverToBoxAdapter(child: SavedForLaterSection()),
                    
                    const SliverToBoxAdapter(child: SizedBox(height: 140)),
                  ],
                ),
      bottomNavigationBar: cart.shopCarts.isEmpty ? null : _buildStickyCheckout(context, cart, couponState),
    );
  }

  Widget _buildCouponSection(BuildContext context, CartState cartState) {
    final couponState = ref.watch(couponProvider);
    final appliedCoupon = couponState.appliedCoupon;

    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(5), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showCouponBottomSheet(context, cartState),
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: (appliedCoupon == null ? AppColors.primary : Colors.green).withAlpha(15),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    appliedCoupon == null ? Icons.confirmation_num_outlined : Icons.verified_rounded,
                    color: appliedCoupon == null ? AppColors.primary : Colors.green,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appliedCoupon == null ? 'Apply Coupon' : '${appliedCoupon.code} Applied!',
                        style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      Text(
                        appliedCoupon == null 
                            ? 'Save more with village offers' 
                            : 'You saved ₹${couponState.calculation?.discountAmount.toStringAsFixed(0)} additionally',
                        style: TextStyle(color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                if (appliedCoupon == null)
                  const Icon(Icons.arrow_forward_ios_rounded, size: 14, color: Colors.grey)
                else
                  GestureDetector(
                    onTap: () {
                       ref.read(couponProvider.notifier).removeCoupon();
                       ref.read(cartProvider.notifier).updateWithCoupon(null, null);
                    },
                    child: const Text(
                      'REMOVE', 
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 12, letterSpacing: 0.5)
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showCouponBottomSheet(BuildContext context, CartState cartState) {
    final cart = cartState.cart;
    final shopIds = cart.shopCarts.map((s) => s.shopId).toList();
    final productIds = cart.shopCarts.expand((s) => s.items.map((i) => i.product.id)).toList();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useRootNavigator: true,
      builder: (context) => CouponBottomSheet(
        cartValue: cart.overallSummary.subTotal - cart.overallSummary.totalDiscount,
        deliveryCharge: cart.overallSummary.deliveryCharge,
        shopIds: List<String>.from(shopIds),
        productIds: List<String>.from(productIds),
      ),
    );
  }

  Widget _buildOverallSummary(BuildContext context, CartSummaryModel summary, CouponState couponState) {
    final double subtotal = summary.subTotal;
    final double productDiscount = summary.totalDiscount;
    final double couponDiscount = summary.couponDiscount;
    final double deliveryCharge = summary.deliveryCharge;
    
    // In production, we'd have a default base charge for strikethrough logic
    const double baseDeliveryCharge = 29.0;
    final double totalSavings = productDiscount + couponDiscount + (deliveryCharge == 0 ? baseDeliveryCharge : 0);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Bill Summary', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 16),
          _summaryRow('Item Total (MRP)', subtotal),
          if (productDiscount > 0) 
            _summaryRow('Product Discount', -productDiscount, isGreen: true),
          if (couponDiscount > 0) 
            _summaryRow('Coupon Discount', -couponDiscount, isGreen: true),
          
          _summaryRow(
            'Delivery Charge', 
            deliveryCharge, 
            isFree: deliveryCharge == 0,
            originalValue: deliveryCharge == 0 ? baseDeliveryCharge : null,
          ),
          
          if (summary.packagingCharge > 0)
            _summaryRow('Handling & Packaging', summary.packagingCharge),
            
          _summaryRow('Taxes & GST', summary.totalTax),
          
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(height: 1),
          ),
          
          _summaryRow('Grand Total', summary.grandTotal, isBold: true),
          
          if (totalSavings > 0)
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.green.withAlpha(15), borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Icon(Icons.celebration_rounded, color: Colors.green, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Yay! You saved ₹${totalSavings.toStringAsFixed(0)} on this order',
                      style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _summaryRow(String label, double value, {bool isGreen = false, bool isBold = false, bool isFree = false, double? originalValue}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.w900 : FontWeight.w500,
            color: isBold ? Colors.black : Colors.grey[700],
          )),
          if (isFree)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (originalValue != null)
                  Text(
                    '₹${originalValue.toStringAsFixed(0)}',
                    style: const TextStyle(color: Colors.grey, fontSize: 13, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),
                  ),
                const SizedBox(width: 6),
                const Text('FREE', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 14)),
              ],
            )
          else
            Text(
              '${value < 0 ? "-" : ""}₹${value.abs().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: isBold ? 16 : 14,
                fontWeight: isBold ? FontWeight.w900 : FontWeight.w900,
                color: isGreen ? Colors.green : Colors.black,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStickyCheckout(BuildContext context, CartModel cart, CouponState couponState) {
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
              Text('₹${cart.overallSummary.grandTotal.toStringAsFixed(0)}', 
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24, letterSpacing: -1)),
              const Text('VIEW DETAILED BILL', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 10, letterSpacing: 0.5)),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => context.push(AppRoutes.orderReview),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(180, 56),
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
            child: const Row(
              children: [
                Text('Next: Review', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward_ios_rounded, size: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showClearCartDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: const Text('Clear Cart?', style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('Are you sure you want to remove all items from your cart?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CANCEL')),
          TextButton(
            onPressed: () {
              ref.read(cartProvider.notifier).clearCart();
              Navigator.pop(context);
            },
            child: const Text('CLEAR', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
