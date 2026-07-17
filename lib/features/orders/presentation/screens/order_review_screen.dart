import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/cart/providers/cart_provider.dart';
import 'package:villishop_customer/features/location/providers/location_provider.dart';
import 'package:villishop_customer/features/delivery/providers/delivery_provider.dart';
import 'package:villishop_customer/features/finance/providers/finance_providers.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/invoice/bill_summary_widget.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/invoice/free_delivery_banner.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/invoice/savings_card.dart';
import 'package:villishop_customer/features/checkout/presentation/widgets/checkout_progress_bar.dart';
import 'package:villishop_customer/features/checkout/providers/checkout_provider.dart';
import '../widgets/order_review_widgets.dart';
import '../widgets/order_validation_overlay.dart';
import '../widgets/validation_error_sheet.dart';
import '../../providers/order_provider.dart';
import '../../providers/order_validation_provider.dart';

class OrderReviewScreen extends ConsumerStatefulWidget {
  const OrderReviewScreen({super.key});

  @override
  ConsumerState<OrderReviewScreen> createState() => _OrderReviewScreenState();
}

class _OrderReviewScreenState extends ConsumerState<OrderReviewScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(checkoutProvider.notifier).updateStep(CheckoutStep.review);
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartProvider);
    final locationState = ref.watch(locationProvider);
    final deliveryState = ref.watch(deliveryProvider);
    final orderState = ref.watch(orderReviewProvider);
    final validationState = ref.watch(orderValidationProvider);
    final grandTotal = ref.watch(grandTotalProvider);
    final isProcessing =
        ref.watch(checkoutProvider.select((s) => s.isProcessing));

    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color(0xFFF7F8FA),
          appBar: AppBar(
            title: const Text('Order Review',
                style: TextStyle(fontWeight: FontWeight.w900)),
            centerTitle: false,
            backgroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(4),
              child: CheckoutProgressBar(),
            ),
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
                    const SliverToBoxAdapter(
                      child: SlotReviewCard(),
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
                        onToggle: (val) => ref
                            .read(orderReviewProvider.notifier)
                            .toggleSpecialInstruction(val),
                        onOtherChanged: (val) => ref
                            .read(orderReviewProvider.notifier)
                            .updateOtherInstructions(val),
                        otherText: orderState.otherInstructions,
                      ),
                    ),

                    // Bill Summary & Savings
                    const SliverPadding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSpacing.m, vertical: AppSpacing.m),
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

                    const SliverToBoxAdapter(child: SizedBox(height: 140)),
                  ],
                ),
          bottomNavigationBar: _buildBottomBar(
              context, ref, grandTotal, validationState, isProcessing),
        ),

        // Centralized Validation Overlay
        if (validationState.maybeWhen(loading: () => true, orElse: () => false))
          const OrderValidationOverlay(),
      ],
    );
  }

  Widget _buildBottomBar(BuildContext context, WidgetRef ref, double total,
      OrderValidationState validationState, bool isProcessing) {
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
              Text('₹${total.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      letterSpacing: -1)),
              const Text('TOTAL PAYABLE',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                      letterSpacing: 0.5)),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: isProcessing ? null : () => _handleProceed(context, ref),
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
                Text('Continue to Payment',
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

  Future<void> _handleProceed(BuildContext context, WidgetRef ref) async {
    ref.read(checkoutProvider.notifier).setProcessing(true);
    final success =
        await ref.read(orderValidationProvider.notifier).validateOrder();

    if (success && context.mounted) {
      ref.read(checkoutProvider.notifier).updateStep(CheckoutStep.payment);
      context.push(AppRoutes.paymentSelection);
    } else if (context.mounted) {
      final state = ref.read(orderValidationProvider);
      state.maybeWhen(
        failure: (result) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => ValidationErrorSheet(
              result: result,
              onRetry: () {
                Navigator.pop(context);
                _handleProceed(context, ref);
              },
              onAction: () {
                Navigator.pop(context);
                _handleAction(context, ref, result.actionRequired);
              },
            ),
          );
        },
        orElse: () {},
      );
    }
    ref.read(checkoutProvider.notifier).setProcessing(false);
  }

  void _handleAction(BuildContext context, WidgetRef ref, String? action) {
    if (action == null) return;
    switch (action) {
      case 'SELECT_ADDRESS':
        context.push(AppRoutes.addresses);
        break;
      case 'MODIFY_CART':
        context.go(AppRoutes.home);
        break;
      default:
        break;
    }
  }
}
