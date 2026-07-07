// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceSummaryModelImpl _$$FinanceSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FinanceSummaryModelImpl(
      dailyRevenue: (json['dailyRevenue'] as num?)?.toDouble() ?? 0.0,
      weeklyRevenue: (json['weeklyRevenue'] as num?)?.toDouble() ?? 0.0,
      monthlyRevenue: (json['monthlyRevenue'] as num?)?.toDouble() ?? 0.0,
      yearlyRevenue: (json['yearlyRevenue'] as num?)?.toDouble() ?? 0.0,
      totalCommissionEarned:
          (json['totalCommissionEarned'] as num?)?.toDouble() ?? 0.0,
      totalNetProfit: (json['totalNetProfit'] as num?)?.toDouble() ?? 0.0,
      topSellingShopIds: (json['topSellingShopIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      topSellingProductIds: (json['topSellingProductIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      aiProjectedProfit: (json['aiProjectedProfit'] as num?)?.toDouble() ?? 0.0,
      aiDemandPredictionIndex:
          (json['aiDemandPredictionIndex'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$FinanceSummaryModelImplToJson(
        _$FinanceSummaryModelImpl instance) =>
    <String, dynamic>{
      'dailyRevenue': instance.dailyRevenue,
      'weeklyRevenue': instance.weeklyRevenue,
      'monthlyRevenue': instance.monthlyRevenue,
      'yearlyRevenue': instance.yearlyRevenue,
      'totalCommissionEarned': instance.totalCommissionEarned,
      'totalNetProfit': instance.totalNetProfit,
      'topSellingShopIds': instance.topSellingShopIds,
      'topSellingProductIds': instance.topSellingProductIds,
      'aiProjectedProfit': instance.aiProjectedProfit,
      'aiDemandPredictionIndex': instance.aiDemandPredictionIndex,
    };
