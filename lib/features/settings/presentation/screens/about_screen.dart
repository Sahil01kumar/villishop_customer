import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/branding_footer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('About VilliShop',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.l),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              AppStrings.appName.toUpperCase(),
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Color(0xFF0B5D1E),
                letterSpacing: 2,
              ),
            ),
            const Text(
              AppStrings.appTagline,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48),
            const Text(
              'VilliShop is India\'s premier hyperlocal village commerce platform, dedicated to empowering village entrepreneurs and providing the fastest delivery of fresh essentials to every rural household.',
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 15, height: 1.6, color: Colors.black87),
            ),
            const SizedBox(height: 40),
            _buildVersionInfo(),
            const SizedBox(height: 60),
          ],
        ),
      ),
      bottomNavigationBar: const BrandingFooter(),
    );
  }

  Widget _buildVersionInfo() {
    return const Column(
      children: [
        Divider(),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Version', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('1.0.0+1', style: TextStyle(color: Colors.grey)),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Developed By', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('YoungXCode Private Limited',
                style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
