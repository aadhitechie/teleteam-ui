import 'package:chewie/chewie.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../model/chat_model.dart';

class ChatController extends GetxController {
  ChatController() {
    changeTextIcon();
  }
  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   initializedPlayer();
  // }

  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  //   videoPlayerController.dispose();
  //   chewieController!.dispose();
  // }

  bool isSelectionMode = false;
  DateTime times = DateTime.now();
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  List<String> itemname = [
    '#Healthcare',
    '#Announcement',
    '#Healthcare',
    '#Healthcare',
  ];

  final List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "We have a new consultation",
        messageType: "receiver",
        isRead: false,
        isSelected: false.obs),
    ChatMessage(
        messageContent: "We have a new consultation",
        messageType: "receiver",
        isRead: false,
        isSelected: false.obs),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender",
        isRead: true,
        isSelected: false.obs),
    ChatMessage(
        messageContent: "We have a new consultation.",
        messageType: "receiver",
        isRead: false,
        isSelected: false.obs),
    ChatMessage(
        messageContent: "#Schedule This is the new oncall schedule updates",
        messageType: "sender",
        isRead: true,
        isSelected: false.obs),
  ];
  TextEditingController chatBottomTextEditing = TextEditingController();
  bool textchangeicon = false;
  void changeTextIcon() {
    if (chatBottomTextEditing.text.isNotEmpty) {
      textchangeicon = true;
      update();
    } else {
      textchangeicon = false;
      update();
    }
  }

  RxBool isExpanded = false.obs;
  togglePanel() {
    isExpanded.toggle();
  }

  void setSelectionMode(bool val) {
    isSelectionMode = val;
    update();
  }

  void changeIsSelected(index) {}

  // Future<void> initializedPlayer() async {
  //   videoPlayerController = VideoPlayerController.network(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
  //   await Future.wait([videoPlayerController.initialize()]);
  //   chewieController = ChewieController(
  //       videoPlayerController: videoPlayerController,
  //       autoPlay: true,
  //       looping: true);
  //   update();
  // }
}
