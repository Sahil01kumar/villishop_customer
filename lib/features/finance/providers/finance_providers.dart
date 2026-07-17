import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/invoice_model.dart';
import '../domain/repositories/invoice_repository.dart';
import '../data/repositories/invoice_repository_impl.dart';
import '../../../features/cart/providers/cart_provider.dart';
import '../../../features/coupons/providers/coupon_provider.dart';
import '../../../features/delivery/providers/delivery_provider.dart';
import '../../../features/delivery/data/models/delivery_slot_model.dart';
import '../../../features/location/providers/location_provider.dart';

final invoiceRepositoryProvider = Provider<InvoiceRepository>((ref) {
  return InvoiceRepositoryImpl();
});

final invoiceProvider = FutureProvider<InvoiceModel>((ref) async {
  final cart = ref.watch(cartProvider).cart;
  final couponState = ref.watch(couponProvider);
  final deliveryState = ref.watch(deliveryProvider);
  final locationState = ref.watch(locationProvider);

  final repository = ref.watch(invoiceRepositoryProvider);

  return await repository.calculateInvoice(
    cart: cart,
    couponDiscount: couponState.calculation?.discountAmount,
    isDeliverNow: deliveryState.deliveryMode == DeliveryMode.deliverNow,
    manualDeliveryCharge: deliveryState.deliveryMode == DeliveryMode.scheduled
        ? deliveryState.selectedSlot?.deliveryCharge
        : null,
    deliveryAddress: locationState.selectedAddress,
  );
});

final billSummaryProvider = Provider<AsyncValue<InvoiceModel>>((ref) {
  return ref.watch(invoiceProvider);
});

final grandTotalProvider = Provider<double>((ref) {
  return ref.watch(invoiceProvider).maybeWhen(
        data: (invoice) => invoice.grandTotal,
        orElse: () => 0.0,
      );
});

final savingsProvider = Provider<double>((ref) {
  return ref.watch(invoiceProvider).maybeWhen(
        data: (invoice) => invoice.savedAmount,
        orElse: () => 0.0,
      );
});

final deliveryFeeProvider = Provider<double>((ref) {
  return ref.watch(invoiceProvider).maybeWhen(
        data: (invoice) => invoice.deliveryCharge,
        orElse: () => 0.0,
      );
});

final taxProvider = Provider<double>((ref) {
  return ref.watch(invoiceProvider).maybeWhen(
        data: (invoice) => invoice.gstAmount,
        orElse: () => 0.0,
      );
});
