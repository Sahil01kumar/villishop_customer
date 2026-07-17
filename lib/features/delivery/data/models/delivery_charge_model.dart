import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_charge_model.freezed.dart';
part 'delivery_charge_model.g.dart';

@freezed
class DeliveryChargeModel with _$DeliveryChargeModel {
  const factory DeliveryChargeModel({
    @Default(0.0) double baseCharge,
    @Default(0.0) double distanceCharge,
    @Default(0.0) double weightCharge,
    @Default(0.0) double volumeCharge,
    @Default(0.0) double surgeCharge, // Rain, Festival, Night
    @Default(0.0) double packagingCharge,
    @Default(0.0) double handlingCharge,
    @Default(0.0) double fragileItemCharge,
    @Default(0.0) double coldStorageCharge,
    @Default(0.0) double expressCharge,
    @Default(0.0) double totalCharge,

    // Revenue Ready Fields
    @Default(0.0) double deliveryPartnerEarning,
    @Default(0.0) double platformMargin,
    @Default(0.0) double shopContribution,
  }) = _DeliveryChargeModel;

  factory DeliveryChargeModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryChargeModelFromJson(json);
}
