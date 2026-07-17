import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../core/router/app_router.dart';
import '../../providers/payment_provider.dart';
import '../widgets/payment_method_tile.dart';
import '../widgets/wallet_selection_card.dart';
import '../../../orders/providers/order_provider.dart';
import '../../../orders/presentation/widgets/order_placement_overlay.dart';
import '../../../orders/presentation/widgets/order_retry_bottom_sheet.dart';
import '../../../checkout/presentation/widgets/checkout_progress_bar.dart';
import '../../../checkout/providers/checkout_provider.dart';

class PaymentSelectionScreen extends ConsumerStatefulWidget {
  const PaymentSelectionScreen({super.key});

  @override
  ConsumerState<PaymentSelectionScreen> createState() =>
      _PaymentSelectionScreenState();
}

class _PaymentSelectionScreenState
    extends ConsumerState<PaymentSelectionScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(checkoutProvider.notifier).updateStep(CheckoutStep.payment);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentProvider);
    final notifier = ref.read(paymentProvider.notifier);
    final placeOrderState = ref.watch(placeOrderProvider);
    final isProcessing =
        ref.watch(checkoutProvider.select((s) => s.isProcessing));

    // Listen for order events
    ref.listen(placeOrderProvider, (prev, next) {
      next.maybeWhen(
        success: (order) {
          ref.read(checkoutProvider.notifier).updateStep(CheckoutStep.success);
          context.go(AppRoutes.orderSuccess, extra: order);
        },
        failure: (status, message, code) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            isDismissible: false,
            enableDrag: false,
            builder: (context) => OrderRetryBottomSheet(
              status: status,
              message: message,
              onRetry: () {
                Navigator.pop(context);
                ref.read(placeOrderProvider.notifier).retryPlaceOrder();
              },
              onCancel: () {
                Navigator.pop(context);
                ref.read(placeOrderProvider.notifier).reset();
              },
            ),
          );
        },
        orElse: () {},
      );
    });

    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color(0xFFF7F8FA),
          appBar: AppBar(
            title: const Text('Payment Method',
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
          body: state.isLoading
              ? const LoadingWidget()
              : state.errorMessage != null
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline_rounded,
                              color: Colors.orange, size: 48),
                          const SizedBox(height: 16),
                          const Text('Something went wrong',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          const SizedBox(height: 8),
                          Text('We couldn\'t load payment methods.',
                              style: TextStyle(color: Colors.grey[600])),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () => notifier.loadMethods(),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                foregroundColor: Colors.white),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    )
                  : CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      slivers: [
                        const SliverToBoxAdapter(child: SizedBox(height: 16)),
                        const SliverToBoxAdapter(child: WalletSelectionCard()),
                        const SliverToBoxAdapter(child: SizedBox(height: 24)),
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppSpacing.m, vertical: 8),
                            child: Text('RECOMMENDED',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                    fontSize: 12,
                                    letterSpacing: 1)),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.m),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final method = state.methods
                                    .where((m) => m.recommended)
                                    .toList()[index];
                                return PaymentMethodTile(
                                  method: method,
                                  isSelected:
                                      state.selectedMethod?.id == method.id,
                                  onTap: () => notifier.selectMethod(method),
                                );
                              },
                              childCount: state.methods
                                  .where((m) => m.recommended)
                                  .length,
                            ),
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppSpacing.m, vertical: 8),
                            child: Text('OTHER METHODS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                    fontSize: 12,
                                    letterSpacing: 1)),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.m),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final method = state.methods
                                    .where((m) => !m.recommended)
                                    .toList()[index];
                                return PaymentMethodTile(
                                  method: method,
                                  isSelected:
                                      state.selectedMethod?.id == method.id,
                                  onTap: () => notifier.selectMethod(method),
                                );
                              },
                              childCount: state.methods
                                  .where((m) => !m.recommended)
                                  .length,
                            ),
                          ),
                        ),
                        const SliverToBoxAdapter(child: SizedBox(height: 140)),
                      ],
                    ),
          bottomNavigationBar:
              _buildBottomBar(context, ref, placeOrderState, isProcessing),
        ),

        // Premium Animated Placement Overlay
        placeOrderState.maybeWhen(
          loading: (status, _) => OrderPlacementOverlay(status: status),
          retrying: (status, _) => OrderPlacementOverlay(status: status),
          orElse: () => const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildBottomBar(BuildContext context, WidgetRef ref,
      PlaceOrderState placeOrderState, bool isProcessing) {
    final state = ref.watch(paymentProvider);
    final notifier = ref.read(paymentProvider.notifier);
    final isOrderProcessing = placeOrderState.maybeWhen(
        loading: (_, __) => true,
        retrying: (_, __) => true,
        orElse: () => false);

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
              Text('₹${notifier.remainingAmount.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      letterSpacing: -1)),
              Text(
                state.useWallet ? 'SPLIT PAYMENT' : 'TOTAL PAYABLE',
                style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    letterSpacing: 0.5),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: (state.selectedMethod == null ||
                    isOrderProcessing ||
                    isProcessing)
                ? null
                : () {
                    ref.read(checkoutProvider.notifier).setProcessing(true);
                    ref.read(placeOrderProvider.notifier).placeOrder();
                    ref.read(checkoutProvider.notifier).setProcessing(false);
                  },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(180, 56),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
            child: (isOrderProcessing || isProcessing)
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                        color: Colors.white, strokeWidth: 2))
                : const Row(
                    children: [
                      Text('Pay Now',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 16)),
                      SizedBox(width: 8),
                      Icon(Icons.lock_outline_rounded, size: 16),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
