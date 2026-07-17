// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketModelImpl _$$SupportTicketModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportTicketModelImpl(
      id: json['id'] as String,
      orderId: json['orderId'] as String,
      customerId: json['customerId'] as String,
      category: $enumDecode(_$IssueCategoryEnumMap, json['category']),
      title: json['title'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$SupportTicketStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      resolutionSummary: json['resolutionSummary'] as String?,
      isEscalated: json['isEscalated'] as bool? ?? false,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SupportTicketModelImplToJson(
        _$SupportTicketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'customerId': instance.customerId,
      'category': _$IssueCategoryEnumMap[instance.category]!,
      'title': instance.title,
      'description': instance.description,
      'status': _$SupportTicketStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'resolutionSummary': instance.resolutionSummary,
      'isEscalated': instance.isEscalated,
      'attachments': instance.attachments,
    };

const _$IssueCategoryEnumMap = {
  IssueCategory.wrongItem: 'wrong_item',
  IssueCategory.lateDelivery: 'late_delivery',
  IssueCategory.damagedPackage: 'damaged_package',
  IssueCategory.paymentIssue: 'payment_issue',
  IssueCategory.orderNotFound: 'order_not_found',
  IssueCategory.other: 'other',
};

const _$SupportTicketStatusEnumMap = {
  SupportTicketStatus.open: 'open',
  SupportTicketStatus.underReview: 'under_review',
  SupportTicketStatus.assigned: 'assigned',
  SupportTicketStatus.resolved: 'resolved',
  SupportTicketStatus.closed: 'closed',
};
