import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/widgets/empty_widget.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/notifications/providers/notification_provider.dart';
import 'package:villishop_customer/features/notifications/data/models/notification_model.dart';
import 'package:villishop_customer/features/notifications/presentation/widgets/in_app_notification_card.dart';

class NotificationCenterScreen extends ConsumerWidget {
  const NotificationCenterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsAsync = ref.watch(notificationHistoryProvider);
    final filteredNotifications = ref.watch(filteredNotificationsProvider);
    final currentCategory = ref.watch(categoryFilterProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        title: const Text('Notifications',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              if (currentCategory != null) {
                ref
                    .read(notificationRepositoryProvider)
                    .markAllAsRead(currentCategory);
              }
            },
            child: const Text('Mark all as read',
                style: TextStyle(
                    color: AppColors.primary, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          _buildCategoryFilter(ref, currentCategory),
          Expanded(
            child: notificationsAsync.when(
              data: (_) => filteredNotifications.isEmpty
                  ? const EmptyWidget(
                      title: 'No Notifications',
                      message:
                          'We will keep you posted with your order updates and latest offers.',
                      icon: Icons.notifications_off_outlined,
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      itemCount: filteredNotifications.length,
                      itemBuilder: (context, index) {
                        final notification = filteredNotifications[index];
                        return InAppNotificationCard(
                          notification: notification,
                          onDismiss: () => ref
                              .read(notificationRepositoryProvider)
                              .deleteNotification(notification.id),
                          onTap: () => ref
                              .read(notificationRepositoryProvider)
                              .markAsRead(notification.id),
                        );
                      },
                    ),
              loading: () => const LoadingWidget(),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilter(WidgetRef ref, NotificationCategory? current) {
    return Container(
      height: 60,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _filterChip(ref, 'All', null, current == null),
          _filterChip(ref, 'Orders', NotificationCategory.orders,
              current == NotificationCategory.orders),
          _filterChip(ref, 'Offers', NotificationCategory.offers,
              current == NotificationCategory.offers),
          _filterChip(ref, 'Wallet', NotificationCategory.wallet,
              current == NotificationCategory.wallet),
          _filterChip(ref, 'Support', NotificationCategory.support,
              current == NotificationCategory.support),
        ],
      ),
    );
  }

  Widget _filterChip(WidgetRef ref, String label,
      NotificationCategory? category, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) =>
            ref.read(categoryFilterProvider.notifier).state = category,
        selectedColor: AppColors.primary.withAlpha(30),
        checkmarkColor: AppColors.primary,
        labelStyle: TextStyle(
          color: isSelected ? AppColors.primary : Colors.grey[600],
          fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
          fontSize: 13,
        ),
        backgroundColor: Colors.grey[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: BorderSide.none,
      ),
    );
  }
}
