import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/router/app_router.dart';

import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/cart/data/models/cart_model.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'package:villishop_customer/features/cart/providers/cart_state.dart';
import 'package:villishop_customer/features/coupons/presentation/widgets/coupon_bottom_sheet.dart';
import 'package:villishop_customer/features/coupons/providers/coupon_provider.dart';
import 'package:villishop_customer/features/delivery/presentation/widgets/delivery_slot_selector.dart';
import 'package:villishop_customer/features/delivery/providers/delivery_provider.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import 'package:villishop_customer/features/finance/providers/finance_providers.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/invoice/bill_summary_widget.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/invoice/free_delivery_banner.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/invoice/savings_card.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/checkout_progress_bar.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/reservation_timer_widget.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/one_tap_banner.dart';
import 'package:villishop_customer/features/checkout/providers/checkout_provider.dart';
import '../widgets/shop_cart_section.dart';
import '../widgets/saved_for_later_section.dart';
import '../widgets/premium_empty_cart.dart';
import '../../../home/providers/home_provider.dart';
import '../../../products/presentation/widgets/product_grid_card.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(checkoutProvider.notifier).updateStep(CheckoutStep.cart);
    });
  }

  void _initDeliverySlots() {
    Future.microtask(() {
      final cart = ref.read(cartProvider).cart;
      final address = ref.read(locationProvider).selectedAddress;

      if (cart.shopCarts.isNotEmpty && address != null) {
        ref.read(deliveryProvider.notifier).loadAvailableSlots(
              shopId: cart.shopCarts.first.shopId,
              cartValue: cart.overallSummary.subTotal -
                  cart.overallSummary.totalDiscount,
              addressId: address.id,
            );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartProvider);
    final cart = cartState.cart;
    final grandTotal = ref.watch(grandTotalProvider);

    // Synchronize delivery fee when mode/slot changes
    ref.listen(deliveryProvider, (prev, next) {
      if (next.deliveryMode != prev?.deliveryMode ||
          next.selectedSlot != prev?.selectedSlot) {
        ref.read(cartProvider.notifier).syncWithDelivery(next);
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('Checkout',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          if (cart.shopCarts.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Center(
                child: Row(
                  children: [
                    const ReservationTimerWidget(),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: () => _showClearCartDialog(context),
                      icon: const Icon(Icons.delete_sweep_outlined,
                          color: Colors.red),
                      tooltip: 'Clear Cart',
                    ),
                  ],
                ),
              ),
            ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: CheckoutProgressBar(),
        ),
      ),
      body: cartState.isLoading
          ? const LoadingWidget()
          : cart.shopCarts.isEmpty
              ? const PremiumEmptyCart()
              : CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.m, vertical: AppSpacing.s),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) =>
                              ShopCartSection(shopCart: cart.shopCarts[index]),
                          childCount: cart.shopCarts.length,
                        ),
                      ),
                    ),

                    // Enterprise Delivery Type Selection
                    const SliverToBoxAdapter(child: DeliverySlotSelector()),

                    // One-Tap Optimization
                    const SliverToBoxAdapter(child: OneTapBanner()),

                    // Premium Coupon Section
                    SliverToBoxAdapter(
                        child: _buildCouponSection(context, cartState)),

                    // Recommended Items
                    SliverToBoxAdapter(child: _buildRecommendedInCart(ref)),

                    // Detailed Bill Summary & Savings
                    const SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: AppSpacing.m),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          children: [
                            FreeDeliveryBanner(),
                            BillSummaryWidget(),
                            SavingsCard(),
                          ],
                        ),
                      ),
                    ),

                    const SliverToBoxAdapter(child: SavedForLaterSection()),

                    const SliverToBoxAdapter(child: SizedBox(height: 140)),
                  ],
                ),
      bottomNavigationBar: cart.shopCarts.isEmpty
          ? null
          : _buildStickyCheckout(context, cart, grandTotal),
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
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 10,
              offset: const Offset(0, 4))
        ],
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
                    color: (appliedCoupon == null
                            ? AppColors.primary
                            : Colors.green)
                        .withAlpha(15),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    appliedCoupon == null
                        ? Icons.confirmation_num_outlined
                        : Icons.verified_rounded,
                    color: appliedCoupon == null
                        ? AppColors.primary
                        : Colors.green,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appliedCoupon == null
                            ? 'Apply Coupon'
                            : '${appliedCoupon.code} Applied!',
                        style: const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      Text(
                        appliedCoupon == null
                            ? 'Save more with village offers'
                            : 'Coupon discount applied to total',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                if (appliedCoupon == null)
                  const Icon(Icons.arrow_forward_ios_rounded,
                      size: 14, color: Colors.grey)
                else
                  GestureDetector(
                    onTap: () {
                      ref.read(couponProvider.notifier).removeCoupon();
                      ref
                          .read(cartProvider.notifier)
                          .updateWithCoupon(null, null);
                    },
                    child: const Text('REMOVE',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                            fontSize: 12,
                            letterSpacing: 0.5)),
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
    final productIds =
        cart.shopCarts.expand((s) => s.items.map((i) => i.product.id)).toList();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useRootNavigator: true,
      builder: (context) => CouponBottomSheet(
        cartValue:
            cart.overallSummary.subTotal - cart.overallSummary.totalDiscount,
        deliveryCharge: cart.overallSummary.deliveryCharge,
        shopIds: List<String>.from(shopIds),
        productIds: List<String>.from(productIds),
      ),
    );
  }

  Widget _buildStickyCheckout(
      BuildContext context, CartModel cart, double grandTotal) {
    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.m, 12, AppSpacing.m, 32),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(8),
              blurRadius: 20,
              offset: const Offset(0, -10))
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('₹${grandTotal.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      letterSpacing: -1)),
              const Text('VIEW DETAILED BILL',
                  style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                      letterSpacing: 0.5)),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(checkoutProvider.notifier)
                  .updateStep(CheckoutStep.address);
              context.push(AppRoutes.orderReview);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(180, 56),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
            child: const Row(
              children: [
                Text('Next: Review',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
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
        title: const Text('Clear Cart?',
            style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text(
            'Are you sure you want to remove all items from your cart?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL')),
          TextButton(
            onPressed: () {
              ref.read(cartProvider.notifier).clearCart();
              Navigator.pop(context);
            },
            child: const Text('CLEAR',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedInCart(WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    final recommended = homeState.featuredProducts;

    if (recommended.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(AppSpacing.m, AppSpacing.l, AppSpacing.m, AppSpacing.m),
          child: Text(
            'Before you checkout',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: recommended.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: SizedBox(
                  width: 150,
                  child: ProductGridCard(product: recommended[index]),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

