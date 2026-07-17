class DeliveryChargeCalculator {
  static const double freeDeliveryThreshold = 199.0;
  static const double standardDeliveryCharge = 19.0;

  /// Returns the delivery charge based on the merchandise subtotal.
  static double calculate(double subtotal) {
    if (subtotal >= freeDeliveryThreshold) {
      return 0.0;
    }
    return standardDeliveryCharge;
  }

  /// Returns the remaining amount needed for free delivery.
  static double remainingForFreeDelivery(double subtotal) {
    final remaining = freeDeliveryThreshold - subtotal;
    return remaining > 0 ? remaining : 0.0;
  }

  /// Check if the order is eligible for free delivery.
  static bool isEligibleForFreeDelivery(double subtotal) {
    return subtotal >= freeDeliveryThreshold;
  }
}
