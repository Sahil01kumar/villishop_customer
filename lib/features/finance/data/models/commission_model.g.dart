// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommissionModelImpl _$$CommissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommissionModelImpl(
      platformCommissionPercentage:
          (json['platformCommissionPercentage'] as num?)?.toDouble() ?? 0.0,
      platformFixedCommission:
          (json['platformFixedCommission'] as num?)?.toDouble() ?? 0.0,
      platformServiceFee:
          (json['platformServiceFee'] as num?)?.toDouble() ?? 0.0,
      platformConvenienceFee:
          (json['platformConvenienceFee'] as num?)?.toDouble() ?? 0.0,
      shopCommissionAmount:
          (json['shopCommissionAmount'] as num?)?.toDouble() ?? 0.0,
      totalPlatformEarnings:
          (json['totalPlatformEarnings'] as num?)?.toDouble() ?? 0.0,
      isDynamicCommissionApplied:
          json['isDynamicCommissionApplied'] as bool? ?? false,
      aiDynamicAdjustment:
          (json['aiDynamicAdjustment'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CommissionModelImplToJson(
        _$CommissionModelImpl instance) =>
    <String, dynamic>{
      'platformCommissionPercentage': instance.platformCommissionPercentage,
      'platformFixedCommission': instance.platformFixedCommission,
      'platformServiceFee': instance.platformServiceFee,
      'platformConvenienceFee': instance.platformConvenienceFee,
      'shopCommissionAmount': instance.shopCommissionAmount,
      'totalPlatformEarnings': instance.totalPlatformEarnings,
      'isDynamicCommissionApplied': instance.isDynamicCommissionApplied,
      'aiDynamicAdjustment': instance.aiDynamicAdjustment,
    };
