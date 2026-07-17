import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'app_router.dart';
import '../utils/logger.dart';

class NotificationRouter {
  final Ref _ref;

  NotificationRouter(this._ref);

  void routeTo(Map<String, dynamic> data) {
    final context =
        _ref.read(routerProvider).configuration.navigatorKey.currentContext;
    if (context == null) {
      AppLogger.w('NotificationRouter: Context is null, cannot route');
      return;
    }

    final type = data['type'];
    final orderId = data['orderId'];
    final deepLink = data['deepLink'];

    AppLogger.i('Routing Notification: Type=$type, OrderId=$orderId');

    if (deepLink != null) {
      context.push(deepLink);
      return;
    }

    switch (type) {
      case 'tracking':
        if (orderId != null) {
          context.push('${AppRoutes.orderTracking}/$orderId');
        }
        break;
      case 'support':
        context.push(AppRoutes.supportHub);
        break;
      case 'offer':
        context.push(AppRoutes.offers);
        break;
      case 'rating':
        if (orderId != null) {
          // context.push('${AppRoutes.orderRating}/$orderId');
        }
        break;
      default:
        context.push(AppRoutes.notifications);
    }
  }
}

final notificationRouterProvider = Provider<NotificationRouter>((ref) {
  return NotificationRouter(ref);
});
