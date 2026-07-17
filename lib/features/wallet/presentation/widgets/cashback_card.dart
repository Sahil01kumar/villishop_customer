import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../data/models/wallet_cashback_model.dart';

class CashbackCard extends StatelessWidget {
  final WalletCashbackModel cashback;

  const CashbackCard({super.key, required this.cashback});

  @override
  Widget build(BuildContext context) {
    final isPending = cashback.status == CashbackStatus.pending;

    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: AppSpacing.m),
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color:
            isPending ? Colors.blue.withAlpha(10) : Colors.green.withAlpha(10),
        borderRadius: AppRadius.rM,
        border: Border.all(
          color: isPending
              ? Colors.blue.withAlpha(50)
              : Colors.green.withAlpha(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹${cashback.amount.toStringAsFixed(0)}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: isPending ? Colors.blue : Colors.green,
                ),
              ),
              Icon(
                isPending ? Icons.timer_outlined : Icons.check_circle_outline,
                color: isPending ? Colors.blue : Colors.green,
                size: 20,
              ),
            ],
          ),
          AppSpacing.vS,
          Text(
            cashback.description ?? 'Order Cashback',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const Spacer(),
          Text(
            isPending ? 'Unlocks soon' : 'Available',
            style: TextStyle(
              color: isPending ? Colors.blue[700] : Colors.green[700],
              fontSize: 10,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
