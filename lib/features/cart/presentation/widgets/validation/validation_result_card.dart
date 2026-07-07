import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/cart/data/models/validation/validation_result_model.dart';

class ValidationResultCard extends StatelessWidget {
  final ValidationResultModel result;

  const ValidationResultCard({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final color = _getSeverityColor();
    final icon = _getSeverityIcon();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: 4),
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: AppRadius.rM,
        border: Border.all(color: color.withAlpha(40)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          AppSpacing.hM,
          Expanded(
            child: Text(
              result.message,
              style: TextStyle(
                color: color.withAlpha(255),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getSeverityColor() {
    switch (result.severity) {
      case ValidationSeverity.critical:
      case ValidationSeverity.error:
        return Colors.red;
      case ValidationSeverity.warning:
        return Colors.orange;
      case ValidationSeverity.info:
        return Colors.blue;
    }
  }

  IconData _getSeverityIcon() {
    switch (result.severity) {
      case ValidationSeverity.critical:
      case ValidationSeverity.error:
        return Icons.error_outline;
      case ValidationSeverity.warning:
        return Icons.warning_amber_rounded;
      case ValidationSeverity.info:
        return Icons.info_outline;
    }
  }
}
