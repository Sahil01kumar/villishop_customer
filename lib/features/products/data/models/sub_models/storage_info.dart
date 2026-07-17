import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_info.freezed.dart';
part 'storage_info.g.dart';

@freezed
class StorageInfo with _$StorageInfo {
  const factory StorageInfo({
    String? storageTemperature,
    String? storageInstructions,
    @Default(false) bool isColdStorageRequired,
    @Default(false) bool isRefrigerated,
    @Default(false) bool isFrozen,
    @Default(false) bool keepAwayFromSunlight,
    @Default(false) bool isFragile,
  }) = _StorageInfo;

  factory StorageInfo.fromJson(Map<String, dynamic> json) =>
      _$StorageInfoFromJson(json);
}
