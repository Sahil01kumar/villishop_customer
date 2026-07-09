import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_info.freezed.dart';
part 'inventory_info.g.dart';

enum StockStatus { inStock, lowStock, outOfStock }

@freezed
class InventoryInfo with _$InventoryInfo {
  const factory InventoryInfo({
    @Default(0) int stockQuantity,
    @Default(0) int reservedQuantity,
    @Default(100) int availableQuantity,
    @Default(5) int lowStockThreshold,
    @Default(StockStatus.inStock) StockStatus stockStatus,
    @Default(false) bool isTrending,
    @Default(false) bool isBestseller,
    @Default(false) bool isRecommended,
    @Default(false) bool isNewArrival,
    @Default(1) int minOrderQuantity,
    @Default(10) int maxOrderQuantity,
  }) = _InventoryInfo;

  factory InventoryInfo.fromJson(Map<String, dynamic> json) => _$InventoryInfoFromJson(json);
}
