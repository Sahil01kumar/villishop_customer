enum OrderPlacementStatus {
  idle,
  validating,
  reservingInventory,
  paymentProcessing,
  placingOrder,
  success,
  paymentFailed,
  networkError,
  serverError,
  timeout,
  cancelled,
}

extension OrderPlacementStatusX on OrderPlacementStatus {
  String get message {
    switch (this) {
      case OrderPlacementStatus.validating:
        return 'Checking Order Details...';
      case OrderPlacementStatus.reservingInventory:
        return 'Reserving Fresh Items...';
      case OrderPlacementStatus.paymentProcessing:
        return 'Preparing Secure Payment...';
      case OrderPlacementStatus.placingOrder:
        return 'Creating your Village Order...';
      case OrderPlacementStatus.success:
        return 'Order Placed Successfully!';
      default:
        return 'Please wait...';
    }
  }
}
