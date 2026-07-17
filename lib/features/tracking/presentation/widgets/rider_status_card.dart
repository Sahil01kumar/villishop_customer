import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/tracking/data/models/rider_model.dart';
import 'package:villishop_customer/core/widgets/network_image_with_fallback.dart';
import 'package:villishop_customer/features/communication/providers/communication_provider.dart';
import 'package:villishop_customer/features/communication/data/models/chat_model.dart';
import 'package:villishop_customer/features/communication/data/models/call_model.dart';

class RiderStatusCard extends ConsumerWidget {
  final RiderModel rider;
  const RiderStatusCard({super.key, required this.rider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(200),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: Colors.white.withAlpha(120), width: 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(15),
                blurRadius: 30,
                offset: const Offset(0, 15),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 1. Primary Rider Header
              Row(
                children: [
                  _buildAnimatedProfile(),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              rider.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                letterSpacing: -0.6,
                              ),
                            ),
                            const SizedBox(width: 8),
                            _buildSafetyBadges(),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star_rounded,
                                color: Colors.orange, size: 16),
                            const SizedBox(width: 4),
                            Text(
                              '${rider.rating} • ${rider.experienceYears} yrs exp',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _buildActionButtons(context, ref),
                ],
              ),

              const Divider(height: 40, thickness: 0.5),

              // 2. Task 8: Speed Analytics & Telemetry Indicators
              _buildTelemetryRibbon(),

              const SizedBox(height: 20),

              // 3. Status & Vehicle Highlights
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _statusIndicator(),
                  _vehicleBadge(),
                ],
              ),

              const SizedBox(height: 24),

              // 4. Live Rider Insights (Animated Grid)
              _buildInsightsGrid(),

              const SizedBox(height: 24),

              // 5. Customer Experience / Safety Message
              _buildSafetyBanner(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedProfile() {
    return Stack(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary, width: 2.5),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withAlpha(30),
                blurRadius: 10,
                spreadRadius: 2,
              )
            ],
          ),
          child: ClipOval(
            child: NetworkImageWithFallback(
              imageUrl: rider.photoUrl,
              fallbackIcon: Icons.person,
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2.5),
            ),
          ).animate(onPlay: (c) => c.repeat()).scale(
                duration: 1.seconds,
                begin: const Offset(1, 1),
                end: const Offset(1.2, 1.2),
              ),
        ),
      ],
    );
  }

  Widget _buildSafetyBadges() {
    return Row(
      children: [
        if (rider.isHelmetVerified)
          const Padding(
            padding: EdgeInsets.only(right: 4),
            child: Icon(Icons.health_and_safety_rounded,
                color: Colors.blue, size: 18),
          ),
        if (rider.isIdentityVerified)
          const Icon(Icons.verified_user_rounded,
              color: AppColors.primary, size: 18),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        _circleButton(Icons.call, Colors.green, () async {
          final call =
              await ref.read(communicationRepositoryProvider).initiateCall(
                    orderId: 'VS-12345',
                    receiverId: rider.id,
                    type: CallType.voip,
                  );
          ref.read(activeCallProvider.notifier).state = call;
        }),
        const SizedBox(width: 12),
        _circleButton(Icons.chat_bubble_outline_rounded, AppColors.primary,
            () async {
          final thread =
              await ref.read(communicationRepositoryProvider).getOrCreateThread(
                    orderId: 'VS-12345',
                    participantId: rider.id,
                    participantName: rider.name,
                    participantPhoto: rider.photoUrl,
                    participantType: ChatParticipantType.rider,
                  );
          if (context.mounted) {
            context.push(AppRoutes.chat, extra: thread);
          }
        }),
      ],
    );
  }

  Widget _circleButton(IconData icon, Color color, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: color, size: 22),
        onPressed: onTap,
        visualDensity: VisualDensity.compact,
      ),
    );
  }

  Widget _buildTelemetryRibbon() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _telemetryItem(Icons.signal_cellular_alt_rounded,
              rider.internetQuality, 'Network'),
          _telemetryItem(Icons.gps_fixed_rounded,
              '${rider.gpsAccuracyMeters.toStringAsFixed(0)}m', 'GPS'),
          _telemetryItem(Icons.battery_3_bar_rounded,
              '${rider.batteryPercentage}%', 'Battery',
              color: Colors.green),
          _telemetryItem(Icons.update_rounded, 'Live', 'Data'),
        ],
      ),
    );
  }

  Widget _telemetryItem(IconData icon, String value, String label,
      {Color? color}) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 10, color: color ?? Colors.black45),
            const SizedBox(width: 4),
            Text(value,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 10)),
          ],
        ),
        Text(label,
            style: const TextStyle(
                fontSize: 8,
                color: Colors.black38,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _statusIndicator() {
    String label = 'On the way';
    IconData icon = Icons.delivery_dining_rounded;
    Color color = AppColors.primary;

    switch (rider.status) {
      case RiderActivityStatus.headingToStore:
        label = 'Heading to Store';
        icon = Icons.store_rounded;
        color = Colors.orange;
        break;
      case RiderActivityStatus.nearYou:
        label = 'Nearby';
        icon = Icons.location_on_rounded;
        color = Colors.blue;
        break;
      case RiderActivityStatus.arrived:
        label = 'Arrived';
        icon = Icons.check_circle_rounded;
        color = Colors.green;
        break;
      default:
        break;
    }

    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Text(
          label.toUpperCase(),
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w900,
            fontSize: 12,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }

  Widget _vehicleBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
              rider.isEV
                  ? Icons.electric_bolt_rounded
                  : Icons.motorcycle_rounded,
              color: Colors.black54,
              size: 14),
          const SizedBox(width: 6),
          Text(
            rider.vehicleNumber,
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 11,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _buildInsightsGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _insightItem(
            'AVG SPEED',
            '${rider.averageSpeedKmph.toStringAsFixed(1)} km/h',
            Icons.insights_rounded),
        _insightItem(
            'TOTAL', '${rider.completedDeliveries}+', Icons.task_alt_rounded),
        _insightItem(
            'CURRENT',
            '${rider.currentSpeedKmph.toStringAsFixed(0)} km/h',
            Icons.speed_rounded),
        _insightItem(
            'AI CONF.',
            '${(rider.aiDeliveryConfidence * 100).toInt()}%',
            Icons.auto_awesome_rounded),
      ],
    );
  }

  Widget _insightItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: Colors.black45, size: 18),
        ),
        const SizedBox(height: 8),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
        Text(label,
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 8,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildSafetyBanner() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(10),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withAlpha(20)),
      ),
      child: Row(
        children: [
          const Icon(Icons.verified_rounded,
              color: AppColors.primary, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'TRUSTED VILLISHOP PARTNER',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    letterSpacing: 0.5,
                  ),
                ),
                Text(
                  rider.safetyMessage ??
                      'Carrying your order with extreme care',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
