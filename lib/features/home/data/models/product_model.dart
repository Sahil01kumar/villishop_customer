import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/storage_info.dart';
import '../../../products/data/models/sub_models/nutrition_info.dart';
import '../../../products/data/models/sub_models/health_labels.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../products/data/models/sub_models/subscription_info.dart';
import '../../../products/data/models/sub_models/delivery_info.dart';
import '../../../products/data/models/sub_models/ai_intelligence.dart';
import '../../../products/data/models/sub_models/customer_discovery.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    // Basic Product
    required String id,
    required String name,
    required String imageUrl,
    @Default([]) List<String> imageUrls,
    String? videoUrl,
    required String category,
    String? subCategory,
    String? brand,
    String? description,
    String? shortDescription,
    String? sku,
    String? barcode,
    
    // Usage & Safety
    String? usageInstructions,
    String? safetyWarning,
    String? careInstructions,
    
    // Complex Info Objects
    required PackagingInfo packaging,
    required ManufacturingInfo manufacturing,
    @Default(StorageInfo()) StorageInfo storage,
    @Default(NutritionInfo()) NutritionInfo nutrition,
    @Default(HealthLabels()) HealthLabels healthLabels,
    @Default(InventoryInfo()) InventoryInfo inventory,
    required PricingInfo pricing,
    @Default(SubscriptionInfo()) SubscriptionInfo subscription,
    @Default(DeliveryInfo()) DeliveryInfo delivery,
    @Default(AiIntelligence()) AiIntelligence ai,
    @Default(CustomerDiscovery()) CustomerDiscovery discovery,

    // Metadata
    @Default(0.0) double rating,
    @Default(0) int totalReviews,
    @Default(0) int quantityInCart,
    String? shopId,
    String? shopName,
    @Default([]) List<ProductModel> relatedProducts,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
