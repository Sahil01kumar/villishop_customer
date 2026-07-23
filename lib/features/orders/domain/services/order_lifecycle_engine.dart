import 'package:flutter/foundation.dart';
import '../entities/order_lifecycle_state.dart';
import '../../data/models/order_model.dart';

abstract class OrderEvent {
  final String orderId;
  final DateTime timestamp;

  OrderEvent(this.orderId, this.timestamp);
}

class OrderLifecycleEngine {
  static bool isValidTransition(
      OrderLifecycleState from, OrderLifecycleState to) {
    if (from == to) return true; // Allow no-op transitions
    if (from.isTerminal && !to.isTerminal) return false;

    switch (from) {
      case OrderLifecycleState.orderPlaced:
        return to == OrderLifecycleState.confirmed ||
            to == OrderLifecycleState.cancelled ||
            to == OrderLifecycleState.failed;

      case OrderLifecycleState.confirmed:
        return to == OrderLifecycleState.preparing ||
            to == OrderLifecycleState.cancelled;

      case OrderLifecycleState.preparing:
        return to == OrderLifecycleState.packed ||
            to == OrderLifecycleState.cancelled;

      case OrderLifecycleState.packed:
        return to == OrderLifecycleState.deliveryPartnerAssigned ||
            to == OrderLifecycleState.cancelled;

      case OrderLifecycleState.deliveryPartnerAssigned:
        return to == OrderLifecycleState.pickedUp ||
            to == OrderLifecycleState.cancelled;

      case OrderLifecycleState.pickedUp:
        return to == OrderLifecycleState.onTheWay ||
            to == OrderLifecycleState.failed;

      case OrderLifecycleState.onTheWay:
        return to == OrderLifecycleState.nearby ||
            to == OrderLifecycleState.failed;

      case OrderLifecycleState.nearby:
        return to == OrderLifecycleState.delivered ||
            to == OrderLifecycleState.failed;

      case OrderLifecycleState.failed:
        return to == OrderLifecycleState.refunded;

      case OrderLifecycleState.delivered:
        return to == OrderLifecycleState.returned;

      default:
        return false;
    }
  }

  static OrderModel applyTransition(
      OrderModel order, OrderLifecycleState newState) {
    if (!isValidTransition(order.lifecycleState, newState)) {
      throw Exception(
          'Invalid order state transition from ${order.lifecycleState} to $newState');
    }

    final now = DateTime.now();

    debugPrint(
        'ORDER_LIFECYCLE: Order ${order.orderId} transitioning from ${order.lifecycleState} to $newState at $now');

    return order.copyWith(
      lifecycleState: newState,
      updatedAt: now,
      confirmedAt:
          newState == OrderLifecycleState.confirmed ? now : order.confirmedAt,
      preparingAt:
          newState == OrderLifecycleState.preparing ? now : order.preparingAt,
      packedAt: newState == OrderLifecycleState.packed ? now : order.packedAt,
      partnerAssignedAt: newState == OrderLifecycleState.deliveryPartnerAssigned
          ? now
          : order.partnerAssignedAt,
      pickedUpAt:
          newState == OrderLifecycleState.pickedUp ? now : order.pickedUpAt,
      onTheWayAt:
          newState == OrderLifecycleState.onTheWay ? now : order.onTheWayAt,
      nearbyAt: newState == OrderLifecycleState.nearby ? now : order.nearbyAt,
      deliveredAt:
          newState == OrderLifecycleState.delivered ? now : order.deliveredAt,
      cancelledAt:
          newState == OrderLifecycleState.cancelled ? now : order.cancelledAt,
    );
  }
}
