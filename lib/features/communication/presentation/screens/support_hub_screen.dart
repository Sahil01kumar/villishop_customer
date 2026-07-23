import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/features/communication/data/models/support_model.dart';
import 'package:villishop_customer/features/communication/providers/support_provider.dart';
import 'package:villishop_customer/features/communication/presentation/screens/support_workflow_screen.dart';
import 'package:villishop_customer/features/communication/data/models/chat_model.dart';
import 'package:villishop_customer/features/communication/providers/communication_provider.dart';

class SupportHubScreen extends ConsumerWidget {
  const SupportHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(issueCategoriesProvider);
    final ticketsAsync = ref.watch(supportTicketsProvider('cust_1'));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Help Center',
            style: TextStyle(fontWeight: FontWeight.w900)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How can we help?',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  letterSpacing: -0.8),
            ),
            const SizedBox(height: 8),
            const Text(
              'Select an issue category to get started',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            const SizedBox(height: 32),
            _buildIssueGrid(context, categories),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('YOUR RECENT TICKETS',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 11,
                        color: Colors.grey,
                        letterSpacing: 1.2)),
                if (ticketsAsync.value?.isNotEmpty ?? false)
                  TextButton(
                    onPressed: () {},
                    child: const Text('VIEW ALL',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primary)),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            ticketsAsync.when(
              data: (tickets) {
                if (tickets.isEmpty) return _buildNoTickets();
                return Column(
                  children:
                      tickets.take(3).map((t) => _buildTicketItem(t)).toList(),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Text('Error: $e'),
            ),
            const SizedBox(height: 48),
            const Text('STILL NEED HELP?',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    color: Colors.grey,
                    letterSpacing: 1.2)),
            const SizedBox(height: 16),
            _buildActionCard(
              context,
              'Chat with us',
              'Fastest way to get your query resolved.',
              Icons.chat_bubble_outline_rounded,
              () async {
                final thread = await ref
                    .read(communicationRepositoryProvider)
                    .getOrCreateThread(
                      orderId: 'general_support',
                      participantId: 'admin_support',
                      participantName: 'VilliShop Support',
                      participantPhoto: '',
                      participantType:
                          ChatParticipantType.shop, // Use shop type for now
                    );
                if (context.mounted) {
                  context.push(AppRoutes.chat, extra: thread);
                }
              },
            ),
            const SizedBox(height: 12),
            _buildActionCard(
              context,
              'Call Support',
              'Available from 9 AM to 9 PM.',
              Icons.call_outlined,
              () {},
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  Widget _buildIssueGrid(BuildContext context, List<IssueMetadata> categories) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.4,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final issue = categories[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.withAlpha(25)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(5),
                  blurRadius: 15,
                  offset: const Offset(0, 8))
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SupportWorkflowScreen(issue: issue)),
                );
              },
              borderRadius: BorderRadius.circular(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.primary.withAlpha(10),
                        shape: BoxShape.circle),
                    child: Icon(issue.icon, color: AppColors.primary, size: 24),
                  ),
                  const SizedBox(height: 10),
                  Text(issue.label,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                          letterSpacing: -0.2)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNoTickets() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Icon(Icons.confirmation_number_outlined,
              color: Colors.grey[300], size: 40),
          const SizedBox(height: 12),
          const Text('No active tickets',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 13)),
        ],
      ),
    );
  }

  Widget _buildTicketItem(SupportTicketModel ticket) {
    final statusColor = _getStatusColor(ticket.status);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: statusColor.withAlpha(15), shape: BoxShape.circle),
            child: Icon(Icons.confirmation_number_outlined,
                color: statusColor, size: 18),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ticket.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 14)),
                Text('Order #${ticket.orderId}',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w800)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
                color: statusColor.withAlpha(10),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              ticket.status.name.toUpperCase(),
              style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 9,
                  letterSpacing: 0.5),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(SupportTicketStatus status) {
    switch (status) {
      case SupportTicketStatus.open:
        return Colors.blue;
      case SupportTicketStatus.underReview:
        return Colors.orange;
      case SupportTicketStatus.assigned:
        return Colors.deepPurple;
      case SupportTicketStatus.resolved:
        return Colors.green;
      case SupportTicketStatus.closed:
        return Colors.grey;
    }
  }

  Widget _buildActionCard(BuildContext context, String title, String desc,
      IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.grey.withAlpha(30)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: const Color(0xFFF0F2F5),
                  borderRadius: BorderRadius.circular(16)),
              child: Icon(icon, color: Colors.black87, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 15)),
                  Text(desc,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded,
                color: Colors.black26, size: 14),
          ],
        ),
      ),
    );
  }
}
