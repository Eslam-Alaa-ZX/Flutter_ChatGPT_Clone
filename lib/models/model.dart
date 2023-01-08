enum ChatMessageType { user, bot }

class ChatMessageModel {
  final String text;
  final ChatMessageType chatMessageType;

  ChatMessageModel({
    required this.text,
    required this.chatMessageType,
  });
}