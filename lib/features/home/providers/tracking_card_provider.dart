import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../orders/providers/active_order_provider.dart';

final trackingCardDismissedProvider = StateProvider<bool>((ref) {
  // Reset dismissal when a new order arrives
  ref.listen(activeOrderProvider.select((o) => o?.orderId), (prev, next) {
    if (next != prev && next != null) {
      ref.controller.state = false;
    }
  });
  return false;
});
