import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/tracking/data/models/order_tracking_model.dart';

class SmartOrderTimeline extends StatelessWidget {
  final List<TrackingTimelineItem> items;
  const SmartOrderTimeline({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TRACK PROGRESS',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 10,
              letterSpacing: 1.2,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
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
        ],
      ),
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
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withAlpha(item.isCurrent ? 30 : 50),
                ),
                child: Center(
                  child: item.isCompleted
                      ? const Icon(Icons.check, size: 12, color: Colors.green)
                      : (item.isCurrent
                          ? Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primary),
                            )
                              .animate(onPlay: (c) => c.repeat())
                              .scale(
                                  duration: 1.seconds,
                                  end: const Offset(1.5, 1.5))
                              .fadeOut()
                          : null),
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: item.isCompleted
                        ? Colors.green
                        : const Color(0xFFEEEEEE),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                      color: item.isCurrent
                          ? Colors.black
                          : (item.isCompleted
                              ? Colors.black87
                              : Colors.grey[400]),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.description,
                    style: TextStyle(
                      color:
                          item.isCurrent ? Colors.grey[800] : Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
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
}
