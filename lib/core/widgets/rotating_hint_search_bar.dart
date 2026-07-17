import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/app_colors.dart';


class RotatingHintSearchBar extends StatefulWidget {
  final List<String> hints;
  final VoidCallback? onTap;
  final bool readOnly;

  const RotatingHintSearchBar({
    super.key,
    required this.hints,
    this.onTap,
    this.readOnly = true,
  });

  @override
  State<RotatingHintSearchBar> createState() => _RotatingHintSearchBarState();
}

class _RotatingHintSearchBarState extends State<RotatingHintSearchBar> {
  int _currentHintIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    if (widget.hints.length > 1) {
      _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        if (mounted) {
          setState(() {
            _currentHintIndex = (_currentHintIndex + 1) % widget.hints.length;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 54,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: Colors.grey.withAlpha(25)),
        ),
        child: Row(
          children: [
            const Icon(Icons.search_rounded, color: AppColors.primary, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, 0.5),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  );
                },
                child: Text(
                  widget.hints[_currentHintIndex],
                  key: ValueKey<String>(widget.hints[_currentHintIndex]),
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const VerticalDivider(width: 20, indent: 16, endIndent: 16, thickness: 1),
            const Icon(Icons.mic_none_rounded, color: AppColors.primary, size: 22),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 400.ms).slideX(begin: -0.05, end: 0);
  }
}
