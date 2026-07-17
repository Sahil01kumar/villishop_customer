import 'package:flutter/material.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/communication/data/models/support_model.dart';
import 'package:villishop_customer/features/communication/presentation/screens/raise_ticket_screen.dart';

class SupportWorkflowScreen extends StatelessWidget {
  final IssueMetadata issue;

  const SupportWorkflowScreen({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(issue.label,
            style: const TextStyle(fontWeight: FontWeight.w900)),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(10),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(issue.icon, color: AppColors.primary, size: 32),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Common questions regarding ${issue.label.toLowerCase()}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text('FREQUENTLY ASKED',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Colors.grey,
                    letterSpacing: 1.2)),
            const SizedBox(height: 16),
            ...issue.faqs.map((faq) => _buildFaqItem(faq)),
            const SizedBox(height: 48),
            _buildActionSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFaqItem(SupportFAQ faq) {
    return ExpansionTile(
      title: Text(faq.question,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
      childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      expandedAlignment: Alignment.topLeft,
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      children: [
        Text(faq.answer,
            style: TextStyle(
                color: Colors.grey[700],
                height: 1.5,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildActionSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Column(
        children: [
          const Text(
            'Still need help?',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            'If your issue isn\'t listed above, please raise a ticket and our team will get back to you.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RaiseTicketScreen(issue: issue)),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 0,
              ),
              child: const Text('Raise a Ticket',
                  style: TextStyle(fontWeight: FontWeight.w900)),
            ),
          ),
        ],
      ),
    );
  }
}
