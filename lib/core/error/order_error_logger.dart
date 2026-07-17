import 'package:logger/logger.dart';

class OrderErrorLogger {
  final Logger _logger = Logger();

  void logOrderFailure({
    required String orderId,
    required String userId,
    String? paymentId,
    required String reason,
    required String errorType,
  }) {
    final Map<String, dynamic> errorData = {
      'orderId': orderId,
      'userId': userId,
      'paymentId': paymentId,
      'timestamp': DateTime.now().toIso8601String(),
      'reason': reason,
      'errorType': errorType,
    };

    _logger.e('Order Placement Failed: $errorData');

    // Future integration: Send to Sentry, Firebase Crashlytics, or a dedicated Analytics API
  }
}

final orderErrorLogger = OrderErrorLogger();
