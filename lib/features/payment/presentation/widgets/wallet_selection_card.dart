import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/payment/providers/payment_provider.dart';

class WalletSelectionCard extends ConsumerWidget {
  const WalletSelectionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentProvider);
    final notifier = ref.read(paymentProvider.notifier);
    final totalBalance = state.walletBalance + state.cashbackBalance;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: state.useWallet ? AppColors.primary : const Color(0xFFF3F4F6)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: AppColors.primary.withAlpha(10), shape: BoxShape.circle),
                child: const Icon(Icons.account_balance_wallet_rounded, color: AppColors.primary, size: 20),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Village Wallet', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                    Text(
                      'Available: ₹${totalBalance.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.grey[600], fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Switch.adaptive(
                value: state.useWallet,
                onChanged: totalBalance > 0 ? (val) => notifier.toggleUseWallet(val) : null,
                activeTrackColor: AppColors.primary,
              ),
            ],
          ),
          if (state.useWallet) ...[
            const Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Wallet Deduction', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12)),
                Text(
                  '-₹${notifier.walletDeduction.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 14),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
