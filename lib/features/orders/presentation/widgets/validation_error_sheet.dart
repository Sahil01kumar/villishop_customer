import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/orders/data/models/order_validation_result.dart';

class ValidationErrorSheet extends StatelessWidget {
  final OrderValidationResult result;
  final VoidCallback onRetry;
  final VoidCallback onAction;

  const ValidationErrorSheet({
    super.key,
    required this.result,
    required this.onRetry,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(AppSpacing.m, 12, AppSpacing.m, 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: _getSeverityColor(result.severity).withAlpha(15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _getSeverityIcon(result.severity),
              color: _getSeverityColor(result.severity),
              size: 48,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            result.errorTitle ?? 'Order Issue',
            style: const TextStyle(
                fontWeight: FontWeight.w900, fontSize: 22, letterSpacing: -0.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              result.errorMessage ?? 'There was a problem with your order.',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onRetry,
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  child: const Text('RETRY',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.black)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: onAction,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text(
                    _getActionLabel(result.actionRequired),
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getSeverityColor(ValidationSeverity severity) {
    switch (severity) {
      case ValidationSeverity.info:
        return Colors.blue;
      case ValidationSeverity.warning:
        return Colors.orange;
      case ValidationSeverity.error:
        return Colors.red;
      case ValidationSeverity.critical:
        return Colors.red[900]!;
    }
  }

  IconData _getSeverityIcon(ValidationSeverity severity) {
    switch (severity) {
      case ValidationSeverity.info:
        return Icons.info_outline_rounded;
      case ValidationSeverity.warning:
        return Icons.warning_amber_rounded;
      case ValidationSeverity.error:
        return Icons.error_outline_rounded;
      case ValidationSeverity.critical:
        return Icons.gpp_maybe_rounded;
    }
  }

  String _getActionLabel(String? action) {
    if (action == null) return 'OKAY';
    switch (action) {
      case 'SELECT_ADDRESS':
        return 'PICK ADDRESS';
      case 'MODIFY_CART':
        return 'OPEN CART';
      case 'CHANGE_PAYMENT':
        return 'CHANGE PAYMENT';
      default:
        return 'FIX ISSUE';
    }
  }
}
