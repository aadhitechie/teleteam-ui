import 'package:get/get.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  bool isRead;
  RxBool isSelected;
  DateTime? time;
  ChatMessage({
    required this.messageContent,
    required this.messageType,
    required this.isRead,
    required this.isSelected,
  });
}
