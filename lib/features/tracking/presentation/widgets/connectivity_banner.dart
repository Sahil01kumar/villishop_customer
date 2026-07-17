import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/services/connectivity_service.dart';

class ConnectivityBanner extends ConsumerWidget {
  const ConnectivityBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusAsync = ref.watch(connectionStatusProvider);

    return statusAsync.maybeWhen(
      data: (status) {
        if (status == ConnectionStatus.online) return const SizedBox.shrink();

        Color color = Colors.grey;
        String message = 'Reconnecting...';
        IconData icon = Icons.sync_rounded;

        if (status == ConnectionStatus.offline) {
          color = Colors.redAccent;
          message = 'Connection lost. Showing last known update.';
          icon = Icons.cloud_off_rounded;
        } else if (status == ConnectionStatus.poor) {
          color = Colors.orangeAccent;
          message = 'Poor connection. Updates may be delayed.';
          icon = Icons.signal_cellular_connected_no_internet_4_bar_rounded;
        }

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          decoration: BoxDecoration(
            color: color,
            boxShadow: [
              BoxShadow(
                  color: color.withAlpha(50),
                  blurRadius: 10,
                  offset: const Offset(0, 5))
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 16),
              const SizedBox(width: 12),
              Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ).animate().slideY(begin: -1, end: 0, duration: 400.ms);
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
