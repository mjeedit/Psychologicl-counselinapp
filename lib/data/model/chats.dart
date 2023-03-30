class Chat {
  final String id;
  final String senderId;
  final String lastMessage;
  final DateTime time;
  final String SenderName;
  final String imageUrl;

  Chat(
      {required this.id,
      required this.imageUrl,
      required this.senderId,
      required this.SenderName,
      required this.lastMessage,
      required this.time});
}
