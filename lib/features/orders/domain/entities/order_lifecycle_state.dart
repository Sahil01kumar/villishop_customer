enum OrderLifecycleState {
  orderPlaced,
  confirmed,
  preparing,
  packed,
  deliveryPartnerAssigned,
  pickedUp,
  onTheWay,
  nearby,
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
      case OrderLifecycleState.confirmed:
        return 'Store Accepted';
      case OrderLifecycleState.preparing:
        return 'Preparing';
      case OrderLifecycleState.packed:
        return 'Packing';
      case OrderLifecycleState.deliveryPartnerAssigned:
        return 'Rider Assigned';
      case OrderLifecycleState.pickedUp:
        return 'Picked Up';
      case OrderLifecycleState.onTheWay:
        return 'On The Way';
      case OrderLifecycleState.nearby:
        return 'Nearby';
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
