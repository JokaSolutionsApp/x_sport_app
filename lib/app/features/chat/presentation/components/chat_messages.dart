import 'package:flutter/material.dart';
import '../../../auth/domain/enitites/chat_entity.dart';
import 'chat_bubble.dart';

class ChatMessagesComponent extends StatelessWidget {
  final List<ChatEnity> messages;
  ChatMessagesComponent({super.key, required this.messages});
  final ScrollController _scrollController = ScrollController();
  void animateChat() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    animateChat();

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            return ChatBubble(messages[index]);
          },
        ),
      ),
    );
  }
}
