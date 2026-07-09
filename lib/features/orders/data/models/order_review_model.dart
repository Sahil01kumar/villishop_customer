import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:villishop_customer/features/cart/data/models/cart_model.dart';
import 'package:villishop_customer/features/location/data/models/address_model.dart';
import 'package:villishop_customer/features/delivery/data/models/delivery_slot_model.dart';

part 'order_review_model.freezed.dart';
part 'order_review_model.g.dart';

@freezed
class OrderReviewModel with _$OrderReviewModel {
  const factory OrderReviewModel({
    required CartModel cart,
    required AddressModel address,
    required DeliverySlotModel deliverySlot,
    @Default([]) List<String> specialInstructions,
    String? otherInstructions,
    String? orderNote,
  }) = _OrderReviewModel;

  factory OrderReviewModel.fromJson(Map<String, dynamic> json) => _$OrderReviewModelFromJson(json);
}
