import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Palette (Villiship Green)
  static const Color primary = Color(0xFF1B5E20);
  static const Color primaryLight = Color(0xFF4C8C4A);
  static const Color primaryDark = Color(0xFF003300);

  // Secondary Palette (Villiship Amber/Orange)
  static const Color secondary = Color(0xFFFFA000);
  static const Color secondaryLight = Color(0xFFFFD149);
  static const Color secondaryDark = Color(0xFFC67100);

  // Backgrounds
  static const Color background = Color(0xFFF8F9FA);
  static const Color surface = Colors.white;

  // Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFFBDBDBD);

  // Status Colors
  static const Color success = Color(0xFF43A047);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFFB300);
  static const Color info = Color(0xFF1E88E5);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryLight, primary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
