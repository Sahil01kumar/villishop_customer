import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/save_for_later_model.dart';

part 'save_for_later_state.freezed.dart';

@freezed
class SaveForLaterState with _$SaveForLaterState {
  const factory SaveForLaterState({
    @Default(false) bool isLoading,
    @Default([]) List<SaveForLaterModel> items,
    String? errorMessage,
  }) = _SaveForLaterState;
}
