import 'package:freezed_annotation/freezed_annotation.dart';

part 'packaging_info.freezed.dart';
part 'packaging_info.g.dart';

@freezed
class PackagingInfo with _$PackagingInfo {
  const factory PackagingInfo({
    required double weight,
    required String unit,
    String? packSize,
    String? variant,
    @Default(1) int piecesPerPack,
    String? cartonSize,
  }) = _PackagingInfo;

  factory PackagingInfo.fromJson(Map<String, dynamic> json) =>
      _$PackagingInfoFromJson(json);
}
