import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_info.freezed.dart';
part 'delivery_info.g.dart';

@freezed
class DeliveryInfo with _$DeliveryInfo {
  const factory DeliveryInfo({
    String? deliveryEta,
    @Default(0.0) double deliveryCharge,
    @Default(false) bool isFreeDelivery,
    @Default(false) bool isExpressDeliveryAvailable,
  }) = _DeliveryInfo;

  factory DeliveryInfo.fromJson(Map<String, dynamic> json) => _$DeliveryInfoFromJson(json);
}
