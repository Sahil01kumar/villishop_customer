import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../providers/checkout_provider.dart';

class CheckoutProgressBar extends ConsumerWidget {
  const CheckoutProgressBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep =
        ref.watch(checkoutProvider.select((s) => s.currentStep));

    final steps = [
      CheckoutStep.cart,
      CheckoutStep.address,
      CheckoutStep.delivery,
      CheckoutStep.payment,
      CheckoutStep.review,
    ];

    return Container(
      height: 4,
      width: double.infinity,
      color: Colors.grey[200],
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: (steps.indexOf(currentStep) + 1) / steps.length,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(2),
              bottomRight: Radius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}
