import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_info.freezed.dart';
part 'subscription_info.g.dart';

@freezed
class SubscriptionInfo with _$SubscriptionInfo {
  const factory SubscriptionInfo({
    @Default(false) bool isDailySubscriptionAvailable,
    @Default(false) bool isWeeklySubscriptionAvailable,
    @Default(false) bool isMonthlySubscriptionAvailable,
    @Default(true) bool canRepeatLastOrder,
  }) = _SubscriptionInfo;

  factory SubscriptionInfo.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionInfoFromJson(json);
}
