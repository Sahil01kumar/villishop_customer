import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../constants/app_dimensions.dart';
import 'primary_button.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const CustomErrorWidget({
    super.key,
    required this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    // Filter technical messages for a production-ready feel
    final String displayMessage = _getUserFriendlyMessage(message);

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange.withAlpha(15),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.error_outline_rounded,
                  size: 64, color: Colors.orange),
            ),
            AppSpacing.vM,
            const Text(
              'Something went wrong',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              displayMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 32),
              PrimaryButton(
                text: AppStrings.retry,
                onPressed: onRetry!,
                width: 150,
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _getUserFriendlyMessage(String rawMessage) {
    final msg = rawMessage.toLowerCase();
    if (msg.contains('http 400') || msg.contains('clientexception')) {
      return 'We couldn\'t complete your request. Please try again.';
    }
    if (msg.contains('http 403') || msg.contains('unauthorized')) {
      return 'Session expired. Please log in again.';
    }
    if (msg.contains('socketexception') || msg.contains('network')) {
      return 'Please check your internet connection and try again.';
    }
    return rawMessage; // Fallback for already friendly messages
  }
}
