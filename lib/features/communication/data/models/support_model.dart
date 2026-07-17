import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_model.freezed.dart';
part 'support_model.g.dart';

enum SupportTicketStatus {
  @JsonValue('open')
  open,
  @JsonValue('under_review')
  underReview,
  @JsonValue('assigned')
  assigned,
  @JsonValue('resolved')
  resolved,
  @JsonValue('closed')
  closed,
}

enum IssueCategory {
  @JsonValue('wrong_item')
  wrongItem,
  @JsonValue('late_delivery')
  lateDelivery,
  @JsonValue('damaged_package')
  damagedPackage,
  @JsonValue('payment_issue')
  paymentIssue,
  @JsonValue('order_not_found')
  orderNotFound,
  @JsonValue('other')
  other,
}

@freezed
class SupportTicketModel with _$SupportTicketModel {
  const factory SupportTicketModel({
    required String id,
    required String orderId,
    required String customerId,
    required IssueCategory category,
    required String title,
    required String description,
    required SupportTicketStatus status,
    required DateTime createdAt,
    DateTime? resolvedAt,
    String? resolutionSummary,
    @Default(false) bool isEscalated,
    @Default([]) List<String> attachments,
  }) = _SupportTicketModel;

  factory SupportTicketModel.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketModelFromJson(json);
}

class IssueMetadata {
  final String label;
  final IconData icon;
  final IssueCategory category;
  final List<SupportFAQ> faqs;

  const IssueMetadata({
    required this.label,
    required this.icon,
    required this.category,
    required this.faqs,
  });
}

class SupportFAQ {
  final String question;
  final String answer;

  const SupportFAQ({
    required this.question,
    required this.answer,
  });
}
