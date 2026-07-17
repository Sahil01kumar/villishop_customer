import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_model.freezed.dart';
part 'tax_model.g.dart';

@freezed
class TaxModel with _$TaxModel {
  const factory TaxModel({
    @Default(0.0) double cgst,
    @Default(0.0) double sgst,
    @Default(0.0) double igst,
    @Default(0.0) double totalTax,
    @Default(0.0) double gstPercentage,
    @Default('GST_INVOICE_READY') String taxLabel,
  }) = _TaxModel;

  factory TaxModel.fromJson(Map<String, dynamic> json) =>
      _$TaxModelFromJson(json);
}
