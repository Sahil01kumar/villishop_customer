import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';

class SmartOrderTimeline extends StatelessWidget {
  final List<TrackingTimelineItem> items;
  const SmartOrderTimeline({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Text(
            'ORDER TIMELINE',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 10,
              letterSpacing: 1.2,
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return _TimelineItem(
                item: items[index],
                isLast: index == items.length - 1,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final TrackingTimelineItem item;
  final bool isLast;
  const _TimelineItem({required this.item, required this.isLast});

  @override
  Widget build(BuildContext context) {
    final Color color = item.isCompleted
        ? Colors.green
        : (item.isCurrent ? AppColors.primary : const Color(0xFFE0E0E0));

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withAlpha(item.isCurrent ? 30 : 50),
                  border: item.isCurrent
                      ? Border.all(color: color, width: 1.5)
                      : null,
                ),
                child: Center(
                  child: item.isCompleted
                      ? const Icon(Icons.check_rounded,
                          size: 14, color: Colors.green)
                      : (item.isCurrent
                          ? _buildCurrentIndicator()
                          : _getStatusIcon(item.status, color)),
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2.5,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: item.isCompleted
                          ? Colors.green
                          : const Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            letterSpacing: -0.2,
                            color: item.isCurrent
                                ? Colors.black
                                : (item.isCompleted
                                    ? Colors.black87
                                    : Colors.grey[400]),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      if (item.isCompleted || item.isCurrent)
                        Text(
                          _formatTime(item.timestamp),
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item.description,
                    style: TextStyle(
                      color:
                          item.isCurrent ? Colors.grey[700] : Colors.grey[400],
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentIndicator() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary),
        ),
        Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primary.withAlpha(40)),
        )
            .animate(onPlay: (c) => c.repeat())
            .scale(
                duration: 1200.ms,
                begin: const Offset(0.5, 0.5),
                end: const Offset(1.5, 1.5))
            .fadeOut(),
      ],
    );
  }

  Widget _getStatusIcon(TrackingStatus status, Color color) {
    IconData iconData;
    switch (status) {
      case TrackingStatus.orderConfirmed:
        iconData = Icons.receipt_long_rounded;
        break;
      case TrackingStatus.preparing:
        iconData = Icons.soup_kitchen_rounded;
        break;
      case TrackingStatus.riderAssigned:
        iconData = Icons.person_add_rounded;
        break;
      case TrackingStatus.onTheWay:
        iconData = Icons.directions_bike_rounded;
        break;
      case TrackingStatus.nearby:
        iconData = Icons.near_me_rounded;
        break;
      case TrackingStatus.delivered:
        iconData = Icons.home_work_rounded;
        break;
    }
    return Icon(iconData, size: 10, color: color);
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour > 12 ? dt.hour - 12 : (dt.hour == 0 ? 12 : dt.hour);
    final amPm = dt.hour >= 12 ? 'PM' : 'AM';
    return '$hour:${dt.minute.toString().padLeft(2, '0')} $amPm';
  }
}
