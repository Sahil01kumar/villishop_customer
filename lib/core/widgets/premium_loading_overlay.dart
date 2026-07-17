import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PremiumLoadingOverlay extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isVisible;

  const PremiumLoadingOverlay({
    super.key,
    required this.title,
    required this.subtitle,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox.shrink();

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          // 1. Full-screen Blur Background
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.black.withAlpha(120),
            ),
          ).animate().fadeIn(duration: 250.ms),

          // 2. Center Loading Card
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(25),
                    blurRadius: 30,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Animated Green Progress
                  const SizedBox(
                    height: 64,
                    width: 64,
                    child: CircularProgressIndicator(
                      strokeWidth: 6,
                      color: Colors.green, // Brand Green
                      backgroundColor: Color(0xFFF3F4F6),
                    ),
                  )
                      .animate(onPlay: (controller) => controller.repeat())
                      .rotate(duration: 1.seconds),

                  const SizedBox(height: 32),

                  // Title
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: -0.5,
                    ),
                  )
                      .animate()
                      .fadeIn(delay: 100.ms, duration: 300.ms)
                      .slideY(begin: 0.1, end: 0),

                  const SizedBox(height: 12),

                  // Subtitle with Animated Switcher
                  AnimatedSwitcher(
                    duration: 350.ms,
                    child: Text(
                      subtitle,
                      key: ValueKey(subtitle),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            )
                .animate()
                .scale(duration: 350.ms, curve: Curves.easeOutBack)
                .fadeIn(),
          ),
        ],
      ),
    );
  }
}
