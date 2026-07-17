import 'package:flutter/material.dart';
import 'package:villishop_customer/features/tracking/presentation/screens/tracking_screen.dart';

class OrderTrackingScreen extends StatelessWidget {
  final String orderId;
  const OrderTrackingScreen({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return TrackingScreen(orderId: orderId);
  }
}
