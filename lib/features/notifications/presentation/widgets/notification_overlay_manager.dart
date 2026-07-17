import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/features/notifications/providers/notification_provider.dart';
import 'package:villishop_customer/features/notifications/data/models/notification_model.dart';
import 'in_app_notification_card.dart';

class NotificationOverlayManager extends ConsumerStatefulWidget {
  final Widget child;
  const NotificationOverlayManager({super.key, required this.child});

  @override
  ConsumerState<NotificationOverlayManager> createState() =>
      _NotificationOverlayManagerState();
}

class _NotificationOverlayManagerState
    extends ConsumerState<NotificationOverlayManager> {
  final List<NotificationModel> _activeNotifications = [];
  ProviderSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    // Use listenManual for persistent monitoring in stateful widgets
    _subscription = ref.listenManual<AsyncValue<List<NotificationModel>>>(
      notificationHistoryProvider,
      (previous, next) {
        final newNotifications = next.value ?? [];
        final oldNotifications = previous?.value ?? [];

        for (final n in newNotifications) {
          if (!oldNotifications.any((old) => old.id == n.id) && !n.isRead) {
            _showOverlay(n);
          }
        }
      },
    );
  }

  @override
  void dispose() {
    _subscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: _activeNotifications
                .map((n) => InAppNotificationCard(
                      notification: n,
                      onDismiss: () => _hideOverlay(n.id),
                      onTap: () {
                        _hideOverlay(n.id);
                      },
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  void _showOverlay(NotificationModel notification) {
    setState(() {
      _activeNotifications.add(notification);
    });

    if (notification.priority != NotificationPriority.critical) {
      Future.delayed(const Duration(seconds: 5), () {
        if (mounted) {
          _hideOverlay(notification.id);
        }
      });
    }
  }

  void _hideOverlay(String id) {
    setState(() {
      _activeNotifications.removeWhere((n) => n.id == id);
    });
  }
}
