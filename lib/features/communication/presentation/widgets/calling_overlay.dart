import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:villishop_customer/features/communication/data/models/call_model.dart';
import 'package:villishop_customer/features/communication/providers/communication_provider.dart';

class CallingOverlay extends ConsumerWidget {
  const CallingOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeCall = ref.watch(activeCallProvider);
    if (activeCall == null) return const SizedBox.shrink();

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: Container(color: Colors.black.withAlpha(150)),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(activeCall.receiverPhoto),
                  backgroundColor: Colors.white24,
                ).animate().scale(duration: 600.ms, curve: Curves.elasticOut),
                const SizedBox(height: 24),
                Text(
                  activeCall.receiverName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 28),
                ),
                const SizedBox(height: 8),
                Text(
                  activeCall.status == CallStatus.dialing
                      ? 'DIALING...'
                      : 'CONNECTED',
                  style: const TextStyle(
                      color: Colors.white70,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
                    .animate(onPlay: (c) => c.repeat())
                    .fadeIn(duration: 1.seconds)
                    .fadeOut(duration: 1.seconds),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _callAction(
                          Icons.mic_off_rounded, 'Mute', Colors.white24),
                      _callAction(
                          Icons.videocam_off_rounded, 'Video', Colors.white24),
                      _callAction(
                        Icons.call_end_rounded,
                        'End',
                        Colors.redAccent,
                        onTap: () =>
                            ref.read(activeCallProvider.notifier).state = null,
                      ),
                      _callAction(
                          Icons.volume_up_rounded, 'Speaker', Colors.white24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _callAction(IconData icon, String label, Color color,
      {VoidCallback? onTap}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
        ),
        const SizedBox(height: 8),
        Text(label,
            style: const TextStyle(
                color: Colors.white70,
                fontSize: 11,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
