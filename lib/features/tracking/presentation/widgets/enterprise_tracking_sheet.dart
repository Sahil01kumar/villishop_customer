import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/app_router.dart';
import '../../../orders/data/models/order_model.dart';
import '../../data/models/order_tracking_model.dart';
import '../../providers/rider_tracking_provider.dart';
import 'order_items_section.dart';
import 'delivery_address_section.dart';
import 'bill_summary_section.dart';
import 'smart_order_timeline.dart';
import '../../../communication/providers/communication_provider.dart';
import '../../../communication/data/models/chat_model.dart';

class EnterpriseTrackingSheet extends ConsumerWidget {
  final OrderTrackingModel tracking;
  final OrderModel order;
  final ScrollController scrollController;

  const EnterpriseTrackingSheet({
    super.key,
    required this.tracking,
    required this.order,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Only rebuild parts of the sheet when ETA/Distance changes
    final eta = ref.watch(etaProvider);
    final distance = ref.watch(distanceProvider);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 0),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          _buildHandle(),
          Expanded(
            child: ListView(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              physics: const BouncingScrollPhysics(),
              children: [
                _CompactTrackingHeader(eta: eta, distance: distance),
                const SizedBox(height: 24),
                if (tracking.riderName != null) ...[
                  _RiderEngagementSection(
                      tracking: tracking, orderId: order.orderId),
                  const SizedBox(height: 32),
                ],
                const _ProgressLabel(),
                const SizedBox(height: 16),
                SmartOrderTimeline(items: tracking.timeline),
                const SizedBox(height: 32),
                DeliveryAddressSection(order: order),
                const SizedBox(height: 32),
                OrderItemsSection(order: order),
                const SizedBox(height: 32),
                BillSummarySection(order: order),
                const SizedBox(height: 48),
                _ActionButtons(orderId: order.orderId),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHandle() {
    return Container(
      height: 4,
      width: 36,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class _CompactTrackingHeader extends StatelessWidget {
  final int eta;
  final double distance;
  const _CompactTrackingHeader({required this.eta, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Arriving in $eta mins',
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  letterSpacing: -0.5),
            ),
            Text(
              '${distance.toStringAsFixed(1)} km away • Your order is on the way',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.green.withAlpha(20),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            children: [
              Icon(Icons.bolt_rounded, color: Colors.green, size: 16),
              SizedBox(width: 4),
              Text('EXPRESS',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 11)),
            ],
          ),
        ),
      ],
    );
  }
}

class _RiderEngagementSection extends ConsumerWidget {
  final OrderTrackingModel tracking;
  final String orderId;
  const _RiderEngagementSection(
      {required this.tracking, required this.orderId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: tracking.riderPhoto != null
                        ? NetworkImage(tracking.riderPhoto!)
                        : null,
                    backgroundColor: Colors.grey[200],
                    child: tracking.riderPhoto == null
                        ? const Icon(Icons.person, color: Colors.grey)
                        : null,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          tracking.riderName ?? 'VilliShop Partner',
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.verified_rounded,
                            color: Colors.blue, size: 16),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star_rounded,
                            color: Colors.orange, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          '${tracking.riderRating} • ${tracking.vehicleNumber}',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _ActionIcon(
                icon: Icons.call_rounded,
                color: Colors.green,
                onTap: () async {
                  final Uri launchUri = Uri(
                      scheme: 'tel',
                      path: tracking.riderPhone ?? '+919876543210');
                  if (await canLaunchUrl(launchUri)) {
                    await launchUrl(launchUri);
                  }
                },
              ),
              const SizedBox(width: 12),
              _ActionIcon(
                icon: Icons.chat_bubble_rounded,
                color: AppColors.primary,
                onTap: () async {
                  final thread = await ref
                      .read(communicationRepositoryProvider)
                      .getOrCreateThread(
                        orderId: orderId,
                        participantId: 'rider_1',
                        participantName: tracking.riderName ?? 'Rahul Singh',
                        participantPhoto: tracking.riderPhoto ?? '',
                        participantType: ChatParticipantType.rider,
                      );
                  if (context.mounted) {
                    context.push(AppRoutes.chat, extra: thread);
                  }
                },
              ),
            ],
          ),
          if (tracking.otp != null) ...[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(height: 1, thickness: 0.5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DELIVERY OTP',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 10)),
                    Text('Share only after receiving items',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ],
                ),
                Text(
                  tracking.otp!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      letterSpacing: 4,
                      color: AppColors.primary),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _ActionIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  const _ActionIcon(
      {required this.icon, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: color.withAlpha(20),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color, size: 22),
      ),
    );
  }
}

class _ProgressLabel extends StatelessWidget {
  const _ProgressLabel();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'DELIVERY PROGRESS',
      style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 11,
          color: Colors.grey,
          letterSpacing: 1.2),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  final String orderId;
  const _ActionButtons({required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _SecondaryButton(
                label: 'Get Help',
                icon: Icons.support_agent_rounded,
                onTap: () => context.push(AppRoutes.supportHub),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _SecondaryButton(
                label: 'View Bill',
                icon: Icons.receipt_long_rounded,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Opening Invoice...')));
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: _SecondaryButton(
            label: 'Share Live Tracking',
            icon: Icons.share_rounded,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tracking link copied!')));
            },
          ),
        ),
      ],
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  const _SecondaryButton(
      {required this.label, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 18),
      label: Text(label,
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
        side: BorderSide(color: Colors.grey[200]!),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
