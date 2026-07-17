import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  final Color? color;

  const LoadingWidget({
    super.key,
    this.size = 40.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              strokeWidth: 4,
              valueColor: AlwaysStoppedAnimation<Color>(color ?? Colors.green),
              backgroundColor: const Color(0xFFF3F4F6),
            ),
          )
              .animate(onPlay: (controller) => controller.repeat())
              .rotate(duration: 1.seconds),
        ],
      ).animate().fadeIn(duration: 300.ms),
    );
  }
}
