import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import '../authentication/providers/auth_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async {
    // Wait for 2.5 seconds to show brand identity
    await Future.delayed(const Duration(milliseconds: 2500));
    
    // Auth check is handled by GoRouter's redirect logic which watches authProvider
    // But we trigger the provider here just in case.
    ref.read(authProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120, width: 120,
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(20),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.shopping_basket_rounded, size: 60, color: AppColors.primary),
            ).animate()
             .scale(duration: 800.ms, curve: Curves.elasticOut)
             .fadeIn(duration: 600.ms),
             
            const SizedBox(height: 24),
            
            Column(
              children: [
                Text(
                  AppStrings.appName.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  AppStrings.appTagline,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ).animate().slideY(begin: 0.2, end: 0, duration: 600.ms, curve: Curves.easeOut).fadeIn(),
            
            const SizedBox(height: 100),
            
            const CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
            ).animate().fadeIn(delay: 1000.ms),
          ],
        ),
      ),
    );
  }
}
