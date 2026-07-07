// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionInfoImpl _$$SubscriptionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionInfoImpl(
      isDailySubscriptionAvailable:
          json['isDailySubscriptionAvailable'] as bool? ?? false,
      isWeeklySubscriptionAvailable:
          json['isWeeklySubscriptionAvailable'] as bool? ?? false,
      isMonthlySubscriptionAvailable:
          json['isMonthlySubscriptionAvailable'] as bool? ?? false,
      canRepeatLastOrder: json['canRepeatLastOrder'] as bool? ?? true,
    );

Map<String, dynamic> _$$SubscriptionInfoImplToJson(
        _$SubscriptionInfoImpl instance) =>
    <String, dynamic>{
      'isDailySubscriptionAvailable': instance.isDailySubscriptionAvailable,
      'isWeeklySubscriptionAvailable': instance.isWeeklySubscriptionAvailable,
      'isMonthlySubscriptionAvailable': instance.isMonthlySubscriptionAvailable,
      'canRepeatLastOrder': instance.canRepeatLastOrder,
    };
