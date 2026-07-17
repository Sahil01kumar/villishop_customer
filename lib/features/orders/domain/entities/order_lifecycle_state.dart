enum OrderLifecycleState {
  orderPlaced,
  deliveryPartnerAssigned,
  onTheWay,
  delivered,
  cancelled,
  failed,
  refunded,
  returned,
}

extension OrderLifecycleStateX on OrderLifecycleState {
  String get displayName {
    switch (this) {
      case OrderLifecycleState.orderPlaced:
        return 'Order Placed';
      case OrderLifecycleState.deliveryPartnerAssigned:
        return 'Partner Assigned';
      case OrderLifecycleState.onTheWay:
        return 'On The Way';
      case OrderLifecycleState.delivered:
        return 'Delivered';
      case OrderLifecycleState.cancelled:
        return 'Cancelled';
      case OrderLifecycleState.failed:
        return 'Failed';
      case OrderLifecycleState.refunded:
        return 'Refunded';
      case OrderLifecycleState.returned:
        return 'Returned';
    }
  }

  bool get isTerminal {
    return this == OrderLifecycleState.delivered ||
        this == OrderLifecycleState.cancelled ||
        this == OrderLifecycleState.failed ||
        this == OrderLifecycleState.refunded ||
        this == OrderLifecycleState.returned;
  }
}
