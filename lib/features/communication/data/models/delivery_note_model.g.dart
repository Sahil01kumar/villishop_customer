// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryNoteModelImpl _$$DeliveryNoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryNoteModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      isPersistent: json['isPersistent'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$DeliveryNoteModelImplToJson(
        _$DeliveryNoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'isPersistent': instance.isPersistent,
      'isActive': instance.isActive,
    };
