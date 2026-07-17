import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../finance/providers/finance_providers.dart';
import '../../../../delivery/domain/services/delivery_charge_calculator.dart';

class FreeDeliveryBanner extends ConsumerWidget {
  const FreeDeliveryBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoiceAsync = ref.watch(invoiceProvider);

    return invoiceAsync.maybeWhen(
      data: (invoice) {
        if (invoice.isFreeDelivery) return const SizedBox.shrink();

        final double remaining =
            DeliveryChargeCalculator.remainingForFreeDelivery(
                invoice.sellingPrice);

        if (remaining <= 0) return const SizedBox.shrink();

        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue[100]!),
          ),
          child: Row(
            children: [
              Icon(Icons.delivery_dining_rounded,
                  color: Colors.blue[700], size: 20),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Add ₹${remaining.toStringAsFixed(0)} more to get FREE Delivery',
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
