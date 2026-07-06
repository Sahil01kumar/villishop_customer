import 'package:flutter/material.dart';
import '../constants/app_dimensions.dart';
import '../constants/app_strings.dart';

class DialogHelper {
  DialogHelper._();

  static Future<void> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String message,
    required VoidCallback onConfirm,
    String? confirmText,
    String? cancelText,
  }) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: AppRadius.rL),
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(cancelText ?? AppStrings.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm();
            },
            child: Text(confirmText ?? AppStrings.confirm),
          ),
        ],
      ),
    );
  }
}
