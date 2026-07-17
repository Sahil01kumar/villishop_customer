import 'dart:convert';
import 'package:flutter/material.dart';
import '../../domain/repositories/support_repository.dart';
import '../models/support_model.dart';
import '../../../../core/services/shared_pref_service.dart';

class SupportRepositoryImpl implements SupportRepository {
  final SharedPreferenceService? _prefs;
  static const String _supportKey = 'persistent_support_tickets_v2';
  List<SupportTicketModel> _tickets = [];

  SupportRepositoryImpl([this._prefs]) {
    _loadTickets();
  }

  Future<void> _loadTickets() async {
    if (_prefs == null) return;
    final jsonStr = _prefs!.getString(_supportKey);
    if (jsonStr != null) {
      try {
        final List<dynamic> list = jsonDecode(jsonStr);
        _tickets =
            list.map((item) => SupportTicketModel.fromJson(item)).toList();
      } catch (_) {}
    }
  }

  Future<void> _saveTickets() async {
    if (_prefs == null) return;
    await _prefs!.setString(
        _supportKey, jsonEncode(_tickets.map((t) => t.toJson()).toList()));
  }

  @override
  Future<List<SupportTicketModel>> getTickets(String customerId) async {
    return _tickets.where((t) => t.customerId == customerId).toList();
  }

  @override
  Future<SupportTicketModel> createTicket(SupportTicketModel ticket) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    _tickets.insert(0, ticket);
    await _saveTickets();
    return ticket;
  }

  @override
  Future<void> updateTicketStatus(
      String ticketId, SupportTicketStatus status) async {
    final index = _tickets.indexWhere((t) => t.id == ticketId);
    if (index != -1) {
      _tickets[index] = _tickets[index].copyWith(status: status);
      await _saveTickets();
    }
  }

  @override
  Future<void> addAttachment(String ticketId, String filePath) async {
    final index = _tickets.indexWhere((t) => t.id == ticketId);
    if (index != -1) {
      final currentAttachments = List<String>.from(_tickets[index].attachments);
      currentAttachments.add(filePath);
      _tickets[index] =
          _tickets[index].copyWith(attachments: currentAttachments);
      await _saveTickets();
    }
  }

  @override
  List<IssueMetadata> getIssueCategories() {
    return [
      const IssueMetadata(
        label: 'Wrong Item',
        icon: Icons.shopping_bag_outlined,
        category: IssueCategory.wrongItem,
        faqs: [
          SupportFAQ(
            question: 'What if I received a different item?',
            answer:
                'We apologize for the mix-up. Please raise a ticket with photos of the item and its packaging. We will initiate a replacement or refund immediately.',
          ),
          SupportFAQ(
            question: 'How long does replacement take?',
            answer:
                'Replacements are typically processed within 30-45 minutes in village areas.',
          ),
        ],
      ),
      const IssueMetadata(
        label: 'Late Delivery',
        icon: Icons.timer_outlined,
        category: IssueCategory.lateDelivery,
        faqs: [
          SupportFAQ(
            question: 'Why is my order delayed?',
            answer:
                'Delays can happen due to weather, traffic, or village road conditions. You can check the live tracking for real-time updates.',
          ),
          SupportFAQ(
            question: 'Can I get compensation for delay?',
            answer:
                'If the delay exceeds 15 minutes from the original ETA, you may be eligible for a VilliShop credit.',
          ),
        ],
      ),
      const IssueMetadata(
        label: 'Damaged Package',
        icon: Icons.inventory_2_outlined,
        category: IssueCategory.damagedPackage,
        faqs: [
          SupportFAQ(
            question: 'Items were damaged on arrival',
            answer:
                'Please do not accept the package if it looks tampered with. If already accepted, take photos and share with us for a full refund.',
          ),
        ],
      ),
      const IssueMetadata(
        label: 'Payment Issue',
        icon: Icons.account_balance_wallet_outlined,
        category: IssueCategory.paymentIssue,
        faqs: [
          SupportFAQ(
            question: 'Amount deducted but order failed',
            answer:
                'Don\'t worry! Refunds for failed transactions are usually processed within 5-7 business days by your bank.',
          ),
        ],
      ),
      const IssueMetadata(
        label: 'Order Not Found',
        icon: Icons.search_off_outlined,
        category: IssueCategory.orderNotFound,
        faqs: [
          SupportFAQ(
            question: 'Where is my active order?',
            answer:
                'Check the "My Orders" section or the home screen banner. If it\'s still not visible, please provide the transaction details.',
          ),
        ],
      ),
      const IssueMetadata(
        label: 'Something Else',
        icon: Icons.more_horiz_rounded,
        category: IssueCategory.other,
        faqs: [
          SupportFAQ(
            question: 'How to contact support directly?',
            answer:
                'You can use our in-app chat or call feature from the "Contact Us" section below.',
          ),
        ],
      ),
    ];
  }
}
