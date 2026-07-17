import 'package:flutter/material.dart';
import '../../../../core/widgets/premium_loading_overlay.dart';
import '../../data/models/order_placement_status.dart';

class OrderPlacementOverlay extends StatelessWidget {
  final OrderPlacementStatus status;
  const OrderPlacementOverlay({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return PremiumLoadingOverlay(
      title: _getTitle(status),
      subtitle: _getSubtitle(status),
    );
  }

  String _getTitle(OrderPlacementStatus status) {
    switch (status) {
      case OrderPlacementStatus.validating:
        return 'Checking your order...';
      case OrderPlacementStatus.paymentProcessing:
        return 'Preparing secure payment...';
      case OrderPlacementStatus.placingOrder:
        return 'Placing your order...';
      default:
        return 'Please wait...';
    }
  }

  String _getSubtitle(OrderPlacementStatus status) {
    switch (status) {
      case OrderPlacementStatus.validating:
        return 'Validating inventory...';
      case OrderPlacementStatus.reservingInventory:
        return 'Checking delivery partner...';
      case OrderPlacementStatus.paymentProcessing:
        return 'Connecting securely...';
      case OrderPlacementStatus.placingOrder:
        return 'Generating invoice and assigning\ndelivery partner...';
      default:
        return 'Almost done...';
    }
  }
}
