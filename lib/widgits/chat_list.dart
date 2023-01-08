import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_clone/widgits/chat_message.dart';

class ChatList extends StatelessWidget {
  final List<ChatMessage> messages;
  final ScrollController scrollController;
  const ChatList({Key? key, required this.messages, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      controller: scrollController,
      itemBuilder: (context, index) {
        return ChatMessage();
      },
    );
  }
}
