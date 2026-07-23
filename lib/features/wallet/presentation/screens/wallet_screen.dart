import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/core/widgets/error_widget.dart';
import 'package:villishop_customer/features/wallet/providers/wallet_provider.dart';
import '../widgets/transaction_card.dart';
import '../widgets/cashback_card.dart';

class WalletScreen extends ConsumerWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(walletProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('My Wallet',
            style: TextStyle(fontWeight: FontWeight.w900)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: state.isLoading
          ? const LoadingWidget()
          : state.errorMessage != null
              ? CustomErrorWidget(
                  message: state.errorMessage!,
                  onRetry: () => ref.read(walletProvider.notifier).refresh())
              : RefreshIndicator(
                  onRefresh: () => ref.read(walletProvider.notifier).refresh(),
                  child: CustomScrollView(
                    slivers: [
                      // Balance Header
                      SliverToBoxAdapter(
                        child: _buildBalanceHeader(state),
                      ),

                      // Active Cashbacks
                      if (state.cashbacks.isNotEmpty) ...[
                        const SliverToBoxAdapter(
                          child: _SectionHeader(title: 'Active Cashbacks'),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 120,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.only(left: AppSpacing.m),
                              itemCount: state.cashbacks.length,
                              itemBuilder: (context, index) => CashbackCard(
                                  cashback: state.cashbacks[index]),
                            ),
                          ),
                        ),
                      ],

                      // Transactions
                      const SliverToBoxAdapter(
                        child: _SectionHeader(title: 'Transaction History'),
                      ),
                      if (state.transactions.isEmpty)
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Center(
                              child: Text(
                                'No transactions yet.',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.m),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => TransactionCard(
                                  transaction: state.transactions[index]),
                              childCount: state.transactions.length,
                            ),
                          ),
                        ),

                      const SliverToBoxAdapter(child: SizedBox(height: 100)),
                    ],
                  ),
                ),
    );
  }

  Widget _buildBalanceHeader(dynamic state) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      padding: const EdgeInsets.all(AppSpacing.l),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: AppRadius.rL,
        boxShadow: [
          BoxShadow(
              color: AppColors.primary.withAlpha(50),
              blurRadius: 20,
              offset: const Offset(0, 10)),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Available Balance',
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                  Text(
                    '₹${state.wallet?.balance.toStringAsFixed(0) ?? "0"}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(50), shape: BoxShape.circle),
                child: const Icon(Icons.account_balance_wallet,
                    color: Colors.white, size: 30),
              ),
            ],
          ),
          AppSpacing.vM,
          Container(height: 1, color: Colors.white24),
          AppSpacing.vM,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _headerInfoItem('Pending',
                  '₹${state.wallet?.pendingCashback.toStringAsFixed(0) ?? "0"}'),
              _headerInfoItem(
                  'Rewards', '${state.wallet?.loyaltyPoints ?? "0"} pts'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _headerInfoItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(color: Colors.white70, fontSize: 12)),
        Text(value,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Text(title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
    );
  }
}
