import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/payment/providers/payment_provider.dart';
import '../widgets/payment_method_tile.dart';
import '../widgets/wallet_selection_card.dart';

class PaymentSelectionScreen extends ConsumerWidget {
  const PaymentSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentProvider);
    final notifier = ref.read(paymentProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('Payment Method', style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: state.isLoading
          ? const LoadingWidget()
          : state.errorMessage != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.errorMessage!, style: const TextStyle(color: Colors.red)),
                      TextButton(onPressed: () => notifier.loadMethods(), child: const Text('Retry')),
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
                        padding: EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
                        child: Text('RECOMMENDED', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey, fontSize: 12, letterSpacing: 1)),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final method = state.methods.where((m) => m.recommended).toList()[index];
                            return PaymentMethodTile(
                              method: method,
                              isSelected: state.selectedMethod?.id == method.id,
                              onTap: () => notifier.selectMethod(method),
                            );
                          },
                          childCount: state.methods.where((m) => m.recommended).length,
                        ),
                      ),
                    ),

                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 8),
                        child: Text('OTHER METHODS', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey, fontSize: 12, letterSpacing: 1)),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final method = state.methods.where((m) => !m.recommended).toList()[index];
                            return PaymentMethodTile(
                              method: method,
                              isSelected: state.selectedMethod?.id == method.id,
                              onTap: () => notifier.selectMethod(method),
                            );
                          },
                          childCount: state.methods.where((m) => !m.recommended).length,
                        ),
                      ),
                    ),

                    const SliverToBoxAdapter(child: SizedBox(height: 140)),
                  ],
                ),
      bottomNavigationBar: _buildBottomBar(context, ref),
    );
  }

  Widget _buildBottomBar(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentProvider);
    final notifier = ref.read(paymentProvider.notifier);

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
              Text('₹${notifier.remainingAmount.toStringAsFixed(0)}', 
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 24, letterSpacing: -1)),
              Text(
                state.useWallet ? 'SPLIT PAYMENT' : 'TOTAL PAYABLE',
                style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 10, letterSpacing: 0.5),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: state.selectedMethod == null ? null : () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Payment... (Task 5)')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(180, 56),
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
            child: const Row(
              children: [
                Text('Pay Now', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
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
