import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_model.freezed.dart';
part 'payment_method_model.g.dart';

enum PaymentType { 
  upi, 
  card, 
  netbanking, 
  wallet, 
  cod 
}

@freezed
class PaymentMethodModel with _$PaymentMethodModel {
  const factory PaymentMethodModel({
    required String id,
    required String name,
    required String icon,
    required PaymentType type,
    @Default(true) bool enabled,
    @Default(false) bool recommended,
    @Default('Instant') String processingTime,
    @Default(true) bool supportsRefund,
    @Default(true) bool supportsSplitPayment,
    String? unavailableReason,
    @Default(0.0) double additionalCharge,
    String? badge,
  }) = _PaymentMethodModel;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) => _$PaymentMethodModelFromJson(json);
}
