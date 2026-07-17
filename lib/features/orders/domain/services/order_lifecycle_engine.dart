import '../entities/order_lifecycle_state.dart';
import '../../data/models/order_model.dart';

abstract class OrderEvent {
  final String orderId;
  final DateTime timestamp;

  OrderEvent(this.orderId, this.timestamp);
}

class OrderPlacedEvent extends OrderEvent {
  OrderPlacedEvent(super.orderId, super.timestamp);
}

class PartnerAssignedEvent extends OrderEvent {
  PartnerAssignedEvent(super.orderId, super.timestamp);
}

class OrderStartedEvent extends OrderEvent {
  OrderStartedEvent(super.orderId, super.timestamp);
}

class OrderDeliveredEvent extends OrderEvent {
  OrderDeliveredEvent(super.orderId, super.timestamp);
}

class OrderCancelledEvent extends OrderEvent {
  OrderCancelledEvent(super.orderId, super.timestamp);
}

class OrderRefundedEvent extends OrderEvent {
  OrderRefundedEvent(super.orderId, super.timestamp);
}

class OrderLifecycleEngine {
  static bool isValidTransition(
      OrderLifecycleState from, OrderLifecycleState to) {
    // Prevent backward transitions from terminal states
    if (from.isTerminal && !to.isTerminal) return false;
    if (from == OrderLifecycleState.delivered) return false;

    switch (from) {
      case OrderLifecycleState.orderPlaced:
        return to == OrderLifecycleState.deliveryPartnerAssigned ||
            to == OrderLifecycleState.cancelled ||
            to == OrderLifecycleState.failed;

      case OrderLifecycleState.deliveryPartnerAssigned:
        return to == OrderLifecycleState.onTheWay ||
            to == OrderLifecycleState.cancelled ||
            to == OrderLifecycleState.failed;

      case OrderLifecycleState.onTheWay:
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

    // Log transition for debugging (production grade logging can be integrated later)
    // ignore: avoid_print
    print(
        'ORDER_LIFECYCLE: Order ${order.orderId} transitioning from ${order.lifecycleState} to $newState at $now');

    return order.copyWith(
      lifecycleState: newState,
      updatedAt: now,
      partnerAssignedAt: newState == OrderLifecycleState.deliveryPartnerAssigned
          ? now
          : order.partnerAssignedAt,
      onTheWayAt:
          newState == OrderLifecycleState.onTheWay ? now : order.onTheWayAt,
      deliveredAt:
          newState == OrderLifecycleState.delivered ? now : order.deliveredAt,
      cancelledAt:
          newState == OrderLifecycleState.cancelled ? now : order.cancelledAt,
    );
  }
}
