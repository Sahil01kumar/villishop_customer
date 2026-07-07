import 'package:freezed_annotation/freezed_annotation.dart';

part 'manufacturing_info.freezed.dart';
part 'manufacturing_info.g.dart';

@freezed
class ManufacturingInfo with _$ManufacturingInfo {
  const factory ManufacturingInfo({
    required String manufacturer,
    required String packedBy,
    String? importedBy,
    required String countryOfOrigin,
    String? manufacturingDate,
    String? expiryDate,
    String? shelfLife,
    String? batchNumber,
    String? lotNumber,
    String? fssaiNumber,
    String? hsnCode,
    @Default(0.0) double gstPercentage,
  }) = _ManufacturingInfo;

  factory ManufacturingInfo.fromJson(Map<String, dynamic> json) => _$ManufacturingInfoFromJson(json);
}
