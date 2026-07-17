import '../../data/models/invoice_model.dart';
import '../../../../features/cart/data/models/cart_model.dart';
import '../../../../features/location/data/models/address_model.dart';

abstract class InvoiceRepository {
  Future<InvoiceModel> calculateInvoice({
    required CartModel cart,
    double? couponDiscount,
    required bool isDeliverNow,
    double? manualDeliveryCharge,
    AddressModel? deliveryAddress,
  });
}
