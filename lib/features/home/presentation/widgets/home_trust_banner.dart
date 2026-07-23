import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_dimensions.dart';

class HomeTrustBanner extends StatelessWidget {
  const HomeTrustBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isTablet = MediaQuery.of(context).size.width > 600;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF5FFF5),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withAlpha(10),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: isTablet ? _buildHorizontalRow() : _buildResponsiveGrid(),
    )
        .animate()
        .fadeIn(duration: 600.ms)
        .slideY(begin: 0.1, end: 0, curve: Curves.easeOut);
  }

  Widget _buildHorizontalRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: _TrustFeatureItem(
          icon: Icons.verified_rounded,
          title: 'Fresh Quality',
          subtitle: '100% Fresh Products',
        )),
        Expanded(
            child: _TrustFeatureItem(
          icon: Icons.local_shipping_rounded,
          title: 'Fast Delivery',
          subtitle: '10–30 Minutes',
        )),
        Expanded(
            child: _TrustFeatureItem(
          icon: Icons.currency_rupee_rounded,
          title: 'Best Prices',
          subtitle: 'Village Special Offers',
        )),
        Expanded(
            child: _TrustFeatureItem(
          icon: Icons.support_agent_rounded,
          title: '24×7 Support',
          subtitle: 'Always Here to Help',
        )),
      ],
    );
  }

  Widget _buildResponsiveGrid() {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: _TrustFeatureItem(
              icon: Icons.verified_rounded,
              title: 'Fresh Quality',
              subtitle: '100% Fresh Products',
            )),
            Expanded(
                child: _TrustFeatureItem(
              icon: Icons.local_shipping_rounded,
              title: 'Fast Delivery',
              subtitle: '10–30 Minutes',
            )),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: _TrustFeatureItem(
              icon: Icons.currency_rupee_rounded,
              title: 'Best Prices',
              subtitle: 'Village Special Offers',
            )),
            Expanded(
                child: _TrustFeatureItem(
              icon: Icons.support_agent_rounded,
              title: '24×7 Support',
              subtitle: 'Always Here to Help',
            )),
          ],
        ),
      ],
    );
  }
}

class _TrustFeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _TrustFeatureItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$title: $subtitle',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(height: 8),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 11,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Flexible(
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 9,
                color: Colors.grey[600],
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
