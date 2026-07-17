import 'package:flutter/material.dart';
import '../../../../core/widgets/premium_loading_overlay.dart';

class OrderValidationOverlay extends StatelessWidget {
  const OrderValidationOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return const PremiumLoadingOverlay(
      title: 'Checking your order...',
      subtitle:
          'Validating inventory and checking\ndelivery partner availability',
    );
  }
}
