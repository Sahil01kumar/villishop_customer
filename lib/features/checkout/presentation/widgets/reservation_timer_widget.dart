import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/checkout_provider.dart';

class ReservationTimerWidget extends ConsumerWidget {
  const ReservationTimerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerText = ref.watch(checkoutTimerProvider);
    final seconds =
        ref.watch(checkoutProvider.select((s) => s.reservationTimer));

    if (seconds <= 0) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.orange.withAlpha(15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.timer_outlined, size: 14, color: Colors.orange),
          const SizedBox(width: 6),
          Text(
            'Items reserved for $timerText',
            style: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.w900,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
