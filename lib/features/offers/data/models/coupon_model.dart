import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

@freezed
class CouponModel with _$CouponModel {
  const factory CouponModel({
    required String id,
    required String code,
    required String title,
    required String description,
    required double discountValue,
    @Default(false) bool isPercentage,
    required double minOrderValue,
    double? maxDiscountAmount,
    required DateTime expiryDate,
    @Default(1) int usageLimitPerUser,
    @Default(0) int currentUsageCount,
    @Default(false) bool isSaved,
    @Default([]) List<String> terms,
    String? shopId,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) => _$CouponModelFromJson(json);
}
