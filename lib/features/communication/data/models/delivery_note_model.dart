import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_note_model.freezed.dart';
part 'delivery_note_model.g.dart';

@freezed
class DeliveryNoteModel with _$DeliveryNoteModel {
  const factory DeliveryNoteModel({
    required String id,
    required String title,
    required String content,
    @Default(false) bool isPersistent,
    @Default(true) bool isActive,
  }) = _DeliveryNoteModel;

  factory DeliveryNoteModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryNoteModelFromJson(json);
}
