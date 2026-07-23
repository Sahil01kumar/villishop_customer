import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              physics: const BouncingScrollPhysics(),
              children: [
                _CompactTrackingHeader(
                    eta: eta, distance: distance, tracking: tracking),
                const SizedBox(height: 16),
                _buildDelayBanner(tracking),
                const SizedBox(height: 20),
                if (tracking.riderName != null) ...[
                  _RiderEngagementSection(
                      tracking: tracking, orderId: order.orderId),
                  const SizedBox(height: 24),
                ],
                _buildBadgeRow(tracking),
                const SizedBox(height: 24),
                const _ProgressLabel(),
                const SizedBox(height: 16),
                SmartOrderTimeline(items: tracking.timeline),
                const SizedBox(height: 32),
                _StoreCard(tracking: tracking),
                const SizedBox(height: 32),
                DeliveryAddressSection(order: order),
                const SizedBox(height: 32),
                _OTPSection(otp: tracking.otp),
                const SizedBox(height: 32),
                _CollapsibleOrderSummary(order: order),
                const SizedBox(height: 32),
                _SupportSection(orderId: order.orderId),
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

  Widget _buildDelayBanner(OrderTrackingModel tracking) {
    if (tracking.delayReason == DelayReason.none) {
      return const SizedBox.shrink();
    }

    String message = '';
    IconData icon = Icons.info_outline;

    switch (tracking.delayReason) {
      case DelayReason.traffic:
        message = 'Slow movement due to heavy traffic';
        icon = Icons.traffic_rounded;
        break;
      case DelayReason.heavyRain:
        message = 'Slight delay expected due to heavy rain';
        icon = Icons.cloudy_snowing;
        break;
      case DelayReason.festivalRush:
        message = 'High demand in village due to festival';
        icon = Icons.celebration_rounded;
        break;
      default:
        message = 'Delayed due to unforeseen circumstances';
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.shade100),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.red.shade800, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.red.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          ),
        ],
      ),
    ).animate().shake();
  }

  Widget _buildBadgeRow(OrderTrackingModel tracking) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        if (tracking.isExpress)
          const _SpecialBadge(
              label: 'EXPRESS', color: Colors.green, icon: Icons.bolt_rounded),
        if (tracking.isPriority)
          const _SpecialBadge(
              label: 'PRIORITY', color: Colors.blue, icon: Icons.star_rounded),
        if (tracking.isNearbyZoneDelivery)
          const _SpecialBadge(
              label: 'DELIVERED FROM NEARBY ZONE',
              color: Colors.orange,
              icon: Icons.location_city_rounded),
        if (tracking.isColdChain)
          const _SpecialBadge(
              label: 'COLD CHAIN',
              color: Colors.cyan,
              icon: Icons.ac_unit_rounded),
        if (tracking.isFragile)
          const _SpecialBadge(
              label: 'FRAGILE',
              color: Colors.amber,
              icon: Icons.warning_amber_rounded),
        _SpecialBadge(
            label: tracking.isCOD ? 'COD' : 'PAID',
            color: Colors.grey,
            icon: Icons.payments_rounded),
      ],
    );
  }
}

class _CompactTrackingHeader extends StatelessWidget {
  final int? eta;
  final double? distance;
  final OrderTrackingModel tracking;
  const _CompactTrackingHeader(
      {required this.eta, required this.distance, required this.tracking});

  @override
  Widget build(BuildContext context) {
    final bool isNearbyZone = tracking.isNearbyZoneDelivery;
    final String etaText = eta == null
        ? 'Calculating ETA...'
        : (isNearbyZone
            ? '45-60 mins'
            : (eta! <= 1 ? 'Arriving Now' : 'Arriving in $eta mins'));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                etaText,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    letterSpacing: -0.5),
              ),
              Text(
                distance == null
                    ? 'Calculating distance...'
                    : (isNearbyZone
                        ? 'From ${tracking.nearbyZoneName ?? "Nearby Zone"} • Expanding village reach'
                        : '${distance!.toStringAsFixed(1)} km away • ${tracking.status == TrackingStatus.nearby ? "Almost there!" : "On the way"}'),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w700,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        if (tracking.isExpress && !isNearbyZone)
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
                    backgroundImage: (tracking.riderPhoto != null && tracking.riderPhoto!.isNotEmpty)
                        ? CachedNetworkImageProvider(tracking.riderPhoto!)
                        : null,
                    backgroundColor: Colors.grey[200],
                    child: (tracking.riderPhoto == null || tracking.riderPhoto!.isEmpty)
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(height: 1, thickness: 0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _RiderStat(
                  label: 'Deliveries',
                  value: '${tracking.completedDeliveries}+'),
              _RiderStat(
                  label: 'Vehicle', value: tracking.vehicleType ?? 'E-Bike'),
              _RiderStat(
                  label: 'Speed',
                  value:
                      '${tracking.currentSpeedKmph.toStringAsFixed(0)} km/h'),
            ],
          ),
        ],
      ),
    );
  }
}

class _RiderStat extends StatelessWidget {
  final String label;
  final String value;
  const _RiderStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
        Text(label,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 11,
                fontWeight: FontWeight.bold)),
      ],
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

class _StoreCard extends StatelessWidget {
  final OrderTrackingModel tracking;
  const _StoreCard({required this.tracking});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(10),
                borderRadius: BorderRadius.circular(12)),
            child:
                const Icon(Icons.storefront_rounded, color: AppColors.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('VilliShop Local Store',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
                Text('Main Market, Jaipur Central',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.call_outlined, color: Colors.green),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _OTPSection extends StatelessWidget {
  final String? otp;
  const _OTPSection({this.otp});

  @override
  Widget build(BuildContext context) {
    if (otp == null) return const SizedBox.shrink();
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(10),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DELIVERY OTP',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: AppColors.primary)),
              Text('Share after checking items',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
            ],
          ),
          Text(otp!,
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  letterSpacing: 4,
                  color: AppColors.primary)),
        ],
      ),
    );
  }
}

class _CollapsibleOrderSummary extends StatefulWidget {
  final OrderModel order;
  const _CollapsibleOrderSummary({required this.order});

  @override
  State<_CollapsibleOrderSummary> createState() =>
      _CollapsibleOrderSummaryState();
}

class _CollapsibleOrderSummaryState extends State<_CollapsibleOrderSummary> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: () => setState(() => _isExpanded = !_isExpanded),
            title: const Text('Order Summary',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
            subtitle: Text(
                '${widget.order.shopOrders.length} items • ₹${widget.order.invoiceSnapshot.grandTotal.toStringAsFixed(0)}',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
            trailing: Icon(_isExpanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded),
          ),
          if (_isExpanded) ...[
            const Divider(height: 1),
            OrderItemsSection(order: widget.order),
            const Divider(height: 1),
            BillSummarySection(order: widget.order),
          ],
        ],
      ),
    );
  }
}

class _SupportSection extends StatelessWidget {
  final String orderId;
  const _SupportSection({required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('SUPPORT',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 11,
                color: Colors.grey,
                letterSpacing: 1.2)),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
                child: _SupportItem(
                    icon: Icons.help_outline_rounded,
                    label: 'Help Center',
                    onTap: () => context.push(AppRoutes.supportHub))),
            const SizedBox(width: 12),
            const Expanded(
                child: _SupportItem(
                    icon: Icons.chat_bubble_outline_rounded,
                    label: 'Chat Support',
                    onTap: _mockAction)),
          ],
        ),
        const SizedBox(height: 12),
        const Row(
          children: [
            Expanded(
                child: _SupportItem(
                    icon: Icons.report_problem_outlined,
                    label: 'Report Issue',
                    onTap: _mockAction,
                    color: Colors.orange)),
            SizedBox(width: 12),
            Expanded(
                child: _SupportItem(
                    icon: Icons.emergency_share_outlined,
                    label: 'Emergency',
                    onTap: _mockAction,
                    color: Colors.red)),
          ],
        ),
      ],
    );
  }

  static void _mockAction() {}
}

class _SupportItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? color;
  const _SupportItem(
      {required this.icon,
      required this.label,
      required this.onTap,
      this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: (color ?? Colors.grey).withAlpha(10),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: (color ?? Colors.grey).withAlpha(20)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color ?? Colors.black87, size: 24),
            const SizedBox(height: 8),
            Text(label,
                style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

class _SpecialBadge extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  const _SpecialBadge(
      {required this.label, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 14),
          const SizedBox(width: 4),
          Text(label,
              style: TextStyle(
                  color: color, fontWeight: FontWeight.w900, fontSize: 9)),
        ],
      ),
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
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tracking link copied!')));
            },
            icon: const Icon(Icons.share_rounded, size: 18),
            label: const Text('Share Live Tracking',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
      ],
    );
  }
}
