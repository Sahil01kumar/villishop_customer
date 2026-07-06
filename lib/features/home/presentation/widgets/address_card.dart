import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';

class AddressCard extends StatelessWidget {
  final String label;
  final String address;
  final VoidCallback onTap;

  const AddressCard({
    super.key,
    required this.label,
    required this.address,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.rM,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(40),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.location_on, color: Colors.white, size: 24),
            ),
            AppSpacing.hS,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 18),
                    ],
                  ),
                  Text(
                    address,
                    style: TextStyle(
                      color: Colors.white.withAlpha(180),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
