import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_review_state.freezed.dart';

@freezed
class OrderReviewState with _$OrderReviewState {
  const factory OrderReviewState({
    @Default([]) List<String> specialInstructions,
    String? otherInstructions,
    String? orderNote,
    @Default(false) bool isValidating,
    String? validationError,
  }) = _OrderReviewState;
}
