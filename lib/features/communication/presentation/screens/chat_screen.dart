import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/communication/data/models/chat_model.dart';
import 'package:villishop_customer/features/communication/providers/communication_provider.dart';

class ChatScreen extends ConsumerStatefulWidget {
  final ChatThreadModel thread;
  const ChatScreen({super.key, required this.thread});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isUserTyping = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(communicationRepositoryProvider)
          .markMessagesAsRead(widget.thread.id);
    });
  }

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    final message = ChatMessageModel(
      id: const Uuid().v4(),
      threadId: widget.thread.id,
      senderId: 'cust_1',
      senderName: 'Sahil Kumar',
      senderType: ChatParticipantType.customer,
      text: _controller.text.trim(),
      timestamp: DateTime.now(),
      status: MessageStatus.sending,
    );

    ref.read(communicationRepositoryProvider).sendMessage(message);
    _controller.clear();
    _setTyping(false);

    _scrollToBottom();
  }

  void _setTyping(bool typing) {
    if (_isUserTyping == typing) return;
    _isUserTyping = typing;
    ref
        .read(communicationRepositoryProvider)
        .setTypingStatus(widget.thread.id, typing);
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _makeCall() async {
    // In production, we'd use masked number from repository
    final Uri launchUri = Uri(scheme: 'tel', path: '+919876543210');
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final messagesAsync = ref.watch(chatMessagesProvider(widget.thread.id));
    final threadStream = ref.watch(chatThreadProvider(widget.thread.id));
    final thread = threadStream.value ?? widget.thread;
    final smartRepliesAsync = ref.watch(smartRepliesProvider(''));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(thread),
      body: Column(
        children: [
          _buildStatusBanner(thread),
          Expanded(
            child: messagesAsync.when(
              data: (messages) {
                if (messages.isEmpty) return _buildEmptyState();

                return ListView.builder(
                  controller: _scrollController,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    final isMe = msg.senderType == ChatParticipantType.customer;
                    final showDate = index == 0 ||
                        _isNewDay(messages[index - 1].timestamp, msg.timestamp);

                    return Column(
                      children: [
                        if (showDate) _buildDateHeader(msg.timestamp),
                        _ChatBubble(message: msg, isMe: isMe),
                      ],
                    );
                  },
                );
              },
              loading: () => const LoadingWidget(),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
          if (thread.isTyping) _buildTypingIndicator(thread),
          if (thread.isActive) ...[
            _buildSmartReplies(smartRepliesAsync),
            _buildInputArea(),
          ] else
            _buildReadOnlyBanner(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(ChatThreadModel thread) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded,
            color: Colors.black, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      titleSpacing: 0,
      title: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(thread.participantPhoto),
                radius: 18,
                backgroundColor: Colors.grey[200],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                thread.participantName,
                style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Text(
                thread.isTyping ? 'typing...' : 'Online',
                style: TextStyle(
                  fontSize: 11,
                  color: thread.isTyping ? AppColors.primary : Colors.green,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.call_rounded, color: Colors.black, size: 22),
          onPressed: _makeCall,
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildStatusBanner(ChatThreadModel thread) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: Colors.amber[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.security_rounded, size: 12, color: Colors.amber[900]),
          const SizedBox(width: 8),
          Text(
            'Messages are secured and masked for your privacy.',
            style: TextStyle(
                fontSize: 10,
                color: Colors.amber[900],
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat_bubble_outline_rounded,
              size: 48, color: Colors.grey[300]),
          const SizedBox(height: 16),
          Text(
            'No messages yet',
            style:
                TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildDateHeader(DateTime timestamp) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        _formatHeaderDate(timestamp),
        style: TextStyle(
            fontSize: 11,
            color: Colors.grey[400],
            fontWeight: FontWeight.w900,
            letterSpacing: 0.5),
      ),
    );
  }

  Widget _buildTypingIndicator(ChatThreadModel thread) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 8),
      child: Row(
        children: [
          Text(
            '${thread.participantName} is typing...',
            style: TextStyle(
                fontSize: 11,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }

  Widget _buildSmartReplies(AsyncValue<List<String>> asyncReplies) {
    return asyncReplies.maybeWhen(
      data: (replies) => Container(
        height: 44,
        margin: const EdgeInsets.only(bottom: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: replies.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ActionChip(
              label: Text(replies[index],
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold)),
              onPressed: () {
                _controller.text = replies[index];
                _sendMessage();
              },
              backgroundColor: Colors.white,
              elevation: 0,
              side: BorderSide(color: Colors.grey[200]!),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          16, 12, 16, MediaQuery.of(context).padding.bottom + 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 10,
              offset: const Offset(0, -5))
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
            child: const Icon(Icons.add_rounded, color: Colors.black54),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(24)),
              child: TextField(
                controller: _controller,
                onChanged: (text) => _setTyping(text.isNotEmpty),
                onSubmitted: (_) => _sendMessage(),
                decoration: const InputDecoration(
                  hintText: 'Message your partner...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: _sendMessage,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child:
                  const Icon(Icons.send_rounded, color: Colors.white, size: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReadOnlyBanner() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
          20, 20, 20, MediaQuery.of(context).padding.bottom + 20),
      color: Colors.grey[50],
      child: const Text(
        'This chat has ended as the order is complete.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13),
      ),
    );
  }

  bool _isNewDay(DateTime prev, DateTime current) {
    return prev.day != current.day ||
        prev.month != current.month ||
        prev.year != current.year;
  }

  String _formatHeaderDate(DateTime date) {
    final now = DateTime.now();
    if (date.day == now.day &&
        date.month == now.month &&
        date.year == now.year) {
      return 'TODAY';
    }
    if (date.day == now.day - 1 &&
        date.month == now.month &&
        date.year == now.year) {
      return 'YESTERDAY';
    }
    return DateFormat('dd MMM yyyy').format(date).toUpperCase();
  }
}

class _ChatBubble extends StatelessWidget {
  final ChatMessageModel message;
  final bool isMe;
  const _ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.78),
        decoration: BoxDecoration(
          color: isMe ? Colors.black : const Color(0xFFF0F2F5),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: Radius.circular(isMe ? 20 : 4),
            bottomRight: Radius.circular(isMe ? 4 : 20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.text,
              style: TextStyle(
                color: isMe ? Colors.white : Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  DateFormat('hh:mm a').format(message.timestamp),
                  style: TextStyle(
                    color: isMe ? Colors.white60 : Colors.grey[500],
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (isMe) ...[
                  const SizedBox(width: 4),
                  _buildStatusIcon(),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusIcon() {
    IconData icon = Icons.done;
    Color color = Colors.white60;

    switch (message.status) {
      case MessageStatus.sending:
        return const SizedBox(
            width: 10,
            height: 10,
            child: CircularProgressIndicator(
                strokeWidth: 2, color: Colors.white60));
      case MessageStatus.sent:
        icon = Icons.done;
        break;
      case MessageStatus.delivered:
        icon = Icons.done_all;
        break;
      case MessageStatus.read:
        icon = Icons.done_all;
        color = Colors.blue;
        break;
      case MessageStatus.failed:
        icon = Icons.error_outline;
        color = Colors.red;
        break;
    }

    return Icon(icon, size: 14, color: color);
  }
}
