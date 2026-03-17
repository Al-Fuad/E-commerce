import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/chat/presentation/models/chat_message_model.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  static final List<ChatMessage> _messages = [
    ChatMessage(
      id: '1',
      text: 'Hey Treesna! Please let me know how can I help you?',
      isMe: false,
      timestamp: DateTime.now().subtract(const Duration(minutes: 42)),
    ),
    ChatMessage(
      id: '2',
      text: 'Is Anyone available to chat?',
      isMe: true,
      timestamp: DateTime.now().subtract(const Duration(minutes: 40)),
    ),
    ChatMessage(
      id: '3',
      text: 'Can I make a purchase?',
      isMe: true,
      timestamp: DateTime.now().subtract(const Duration(minutes: 38)),
    ),
  ];

  String _formatTime(DateTime dt) {
    final h = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final m = dt.minute.toString().padLeft(2, '0');
    return '$h:$m ${dt.hour < 12 ? 'AM' : 'PM'}';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        itemCount: _messages.length,
        separatorBuilder: (context, index) {
          final current = _messages[index];
          final next = _messages[index + 1];
          final senderChanged = current.isMe != next.isMe;
          return SizedBox(height: senderChanged ? 12 : 3);
        },
        itemBuilder: (context, index) {
          final msg = _messages[index];
          final isMe = msg.isMe;
          final isFirst = index == 0 || _messages[index - 1].isMe != isMe;
          final isLast =
              index == _messages.length - 1 || _messages[index + 1].isMe != isMe;
      
          final borderRadius = isMe
              ? BorderRadius.only(
                  topLeft: const Radius.circular(18),
                  bottomLeft: const Radius.circular(18),
                  topRight: Radius.circular(isFirst ? 18 : 4),
                  bottomRight: Radius.circular(isLast ? 18 : 4),
                )
              : BorderRadius.only(
                  topRight: const Radius.circular(18),
                  bottomRight: const Radius.circular(18),
                  topLeft: Radius.circular(isFirst ? 18 : 4),
                  bottomLeft: Radius.circular(isLast ? 18 : 4),
                );
      
          return Row(
            mainAxisAlignment: isMe
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!isMe) ...[
                if (isLast)
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: AppColor.primaryColor.withOpacity(0.15),
                    child: const Text(
                      'A',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else
                  const SizedBox(width: 28),
                const SizedBox(width: 8),
              ],
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.72,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: isMe ? AppColor.primaryColor : Colors.white,
                    borderRadius: borderRadius,
                    boxShadow: [
                      BoxShadow(
                        color: isMe
                            ? AppColor.primaryColor.withOpacity(0.28)
                            : Colors.black.withOpacity(0.06),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        msg.text,
                        style: TextStyle(
                          fontSize: 15,
                          color: isMe ? Colors.white : const Color(0xFF1A1A2E),
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _formatTime(msg.timestamp),
                        style: TextStyle(
                          fontSize: 10,
                          color: isMe ? Colors.white60 : const Color(0xFFA0A0C0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
