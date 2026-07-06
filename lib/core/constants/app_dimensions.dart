import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();
  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 16.0;
  static const double l = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;

  static const SizedBox vXS = SizedBox(height: xs);
  static const SizedBox vS = SizedBox(height: s);
  static const SizedBox vM = SizedBox(height: m);
  static const SizedBox vL = SizedBox(height: l);
  static const SizedBox vXL = SizedBox(height: xl);

  static const SizedBox hXS = SizedBox(width: xs);
  static const SizedBox hS = SizedBox(width: s);
  static const SizedBox hM = SizedBox(width: m);
  static const SizedBox hL = SizedBox(width: l);
}

class AppRadius {
  AppRadius._();
  static const double s = 4.0;
  static const double m = 8.0;
  static const double l = 12.0;
  static const double xl = 16.0;
  static const double xxl = 24.0;
  static const double circular = 100.0;

  static BorderRadius get rS => BorderRadius.circular(s);
  static BorderRadius get rM => BorderRadius.circular(m);
  static BorderRadius get rL => BorderRadius.circular(l);
  static BorderRadius get rXL => BorderRadius.circular(xl);
}

class AppShadows {
  AppShadows._();
  static List<BoxShadow> get soft => [
        BoxShadow(
          color: Colors.black.withAlpha((0.05 * 255).toInt()),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ];
}
