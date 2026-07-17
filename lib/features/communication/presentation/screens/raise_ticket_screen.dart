import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/features/communication/data/models/support_model.dart';
import 'package:villishop_customer/features/communication/providers/support_provider.dart';

class RaiseTicketScreen extends ConsumerStatefulWidget {
  final IssueMetadata issue;

  const RaiseTicketScreen({super.key, required this.issue});

  @override
  ConsumerState<RaiseTicketScreen> createState() => _RaiseTicketScreenState();
}

class _RaiseTicketScreenState extends ConsumerState<RaiseTicketScreen> {
  final _formKey = GlobalKey<FormState>();
  final _descController = TextEditingController();
  String? _selectedOrderId;

  @override
  void dispose() {
    _descController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final ticket = SupportTicketModel(
        id: const Uuid().v4(),
        orderId: _selectedOrderId ?? 'VS-GENERAL',
        customerId: 'cust_1',
        category: widget.issue.category,
        title: widget.issue.label,
        description: _descController.text,
        status: SupportTicketStatus.open,
        createdAt: DateTime.now(),
      );

      ref.read(ticketFormProvider.notifier).submitTicket(ticket);
    }
  }

  @override
  Widget build(BuildContext context) {
    final submissionState = ref.watch(ticketFormProvider);

    ref.listen(ticketFormProvider, (prev, next) {
      next.whenData((ticket) {
        if (ticket != null) {
          _showSuccessAndExit(ticket.id);
        }
      });
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Raise Ticket',
            style: TextStyle(fontWeight: FontWeight.w900)),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: submissionState.maybeWhen(
        loading: () =>
            const Center(child: CircularProgressIndicator(color: Colors.black)),
        orElse: () => _buildForm(),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildForm() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ISSUE CATEGORY',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    color: Colors.grey,
                    letterSpacing: 1.2)),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: Row(
                children: [
                  Icon(widget.issue.icon, color: AppColors.primary, size: 20),
                  const SizedBox(width: 12),
                  Text(widget.issue.label,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text('SELECT ORDER',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    color: Colors.grey,
                    letterSpacing: 1.2)),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _selectedOrderId,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[50],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[200]!)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[200]!)),
              ),
              hint: const Text('Choose your order',
                  style: TextStyle(fontSize: 14)),
              items: ['VS-12345', 'VS-12290', 'VS-11982']
                  .map((id) =>
                      DropdownMenuItem(value: id, child: Text('Order #$id')))
                  .toList(),
              onChanged: (val) => setState(() => _selectedOrderId = val),
            ),
            const SizedBox(height: 32),
            const Text('DESCRIPTION',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    color: Colors.grey,
                    letterSpacing: 1.2)),
            const SizedBox(height: 12),
            TextFormField(
              controller: _descController,
              maxLines: 5,
              validator: (val) => val == null || val.length < 10
                  ? 'Please provide more details'
                  : null,
              decoration: InputDecoration(
                hintText: 'Tell us more about the issue...',
                hintStyle: const TextStyle(fontSize: 14),
                filled: true,
                fillColor: Colors.grey[50],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.grey[200]!)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.grey[200]!)),
              ),
            ),
            const SizedBox(height: 32),
            const Text('ATTACHMENTS (OPTIONAL)',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 11,
                    color: Colors.grey,
                    letterSpacing: 1.2)),
            const SizedBox(height: 12),
            Row(
              children: [
                _buildAddAttachment(),
                const SizedBox(width: 12),
                _buildAddAttachment(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddAttachment() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[300]!, style: BorderStyle.solid),
      ),
      child:
          const Icon(Icons.add_a_photo_outlined, color: Colors.grey, size: 24),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          24, 16, 24, MediaQuery.of(context).padding.bottom + 16),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -5))
      ]),
      child: ElevatedButton(
        onPressed: _submit,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 56),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 0,
        ),
        child: const Text('Submit Request',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
      ),
    );
  }

  void _showSuccessAndExit(String ticketId) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: const Text('Ticket Raised',
            style: TextStyle(fontWeight: FontWeight.w900)),
        content: Text(
            'Your ticket #$ticketId has been created. Our team will resolve it within 24 hours.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Pop dialog
              Navigator.pop(context); // Pop to workflow
              Navigator.pop(context); // Pop to Hub
            },
            child: const Text('UNDERSTOOD',
                style: TextStyle(
                    fontWeight: FontWeight.w900, color: AppColors.primary)),
          ),
        ],
      ),
    );
  }
}
