import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/chat_screen/controller/chat_controller.dart';
import 'package:teleteam/screens/chat_screen/widgets/image_message_widget.dart';
import 'package:teleteam/screens/chat_screen/widgets/png_image_message_widget.dart';
import 'package:teleteam/screens/chat_screen/widgets/video_message_widget.dart';
import 'package:teleteam/widget/chat_screen_bottom.dart';
import 'package:teleteam/widget/chat_screen_top.dart';
import 'package:bubble/bubble.dart';
import 'package:teleteam/screens/chat_screen/widgets/medical_notes_widget.dart';

// ignore: must_be_immutable
class ChatSCreen extends StatelessWidget {
  ChatSCreen({super.key});
  ChatController chatController = Get.put(ChatController());
  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: chatController,
        builder: (contorller) {
          return Scaffold(
            backgroundColor: kWhitecolor,
            body: SafeArea(
              child: SizedBox(
                height: double.infinity,
                child: Stack(
                  children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: height * 0.67,
                      child: ListView.builder(
                        itemCount: chatController.messages.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (index==chatController.messages.length-4) {
                            return VideoView(videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
                          }
                          
                          if (index==chatController.messages.length-2) {
                            return MedicalNotesWidgets();
                          }
                          if (index==chatController.messages.length-1) {
                           return const  PngImageMessage(color: kWhitecolor,imageName: 'Hi.png');
                          }
                           if (index==chatController.messages.length-3) {
                           return const  ImageMessageWidget();
                          }
                        
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 8, top: 8, left: 8),
                            child: SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Visibility(
                                    visible:
                                        chatController.isSelectionMode == true,
                                    child: Obx(
                                      () => Checkbox(
                                        fillColor: MaterialStateProperty.all(
                                            kBlackcolor),
                                        shape: const CircleBorder(),
                                        value: chatController
                                            .messages[index].isSelected.value,
                                        onChanged: (value) {
                                          if (value == null) {
                                            return;
                                          }
                                          chatController.messages[index]
                                              .isSelected.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: CupertinoContextMenu(
                                        actions: [
                                          CupertinoContextMenuAction(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("Reply"),
                                          ),
                                          CupertinoContextMenuAction(
                                            onPressed: () {
                                              Get.back();
                                              chatController
                                                  .setSelectionMode(true);
                                            },
                                            child: const Text("Select"),
                                          ),
                                          CupertinoContextMenuAction(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("Add to Hashtag"),
                                          ),
                                          CupertinoContextMenuAction(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("Forward"),
                                          ),
                                          CupertinoContextMenuAction(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("Copy"),
                                          ),
                                          CupertinoContextMenuAction(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("Delete"),
                                          )
                                        ],
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: chatController
                                                          .messages[index]
                                                          .messageType ==
                                                      "receiver"
                                                  ? MainAxisAlignment.start
                                                  : MainAxisAlignment.end,
                                              children: [
                                                Material(
                                                  child: Bubble(
                                                    nipWidth: 6,
                                                    nipHeight: 5,
                                                    nipRadius: 1,
                                                    radius:
                                                        const Radius.circular(
                                                            10),
                                                    alignment: chatController
                                                                .messages[index]
                                                                .messageType ==
                                                            "receiver"
                                                        ? Alignment.topLeft
                                                        : Alignment.topRight,
                                                    nip: chatController
                                                                .messages[index]
                                                                .messageType ==
                                                            "receiver"
                                                        ? BubbleNip.leftBottom
                                                        : BubbleNip.no,
                                                    color: chatController
                                                                .messages[index]
                                                                .messageType ==
                                                            "receiver"
                                                        ? const Color.fromARGB(
                                                            255, 239, 247, 255)
                                                        : Colors.blue,
                                                    child: SizedBox(
                                                      width: width * 0.7,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Flexible(
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                chatController
                                                                            .messages[index]
                                                                            .messageType ==
                                                                        "receiver"
                                                                    ? Text(
                                                                        'Zyad Elmohya',
                                                                        style: GoogleFonts.poppins(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            color: Colors.blue),
                                                                      )
                                                                    : const SizedBox(),
                                                                Text(
                                                                  chatController
                                                                      .messages[
                                                                          index]
                                                                      .messageContent,
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                    fontSize:
                                                                        16,
                                                                    color: chatController.messages[index].messageType ==
                                                                            "receiver"
                                                                        ? kBlackcolor
                                                                        : kWhitecolor,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          kWidth20,
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                DateFormat(
                                                                  'hh:mm a',
                                                                )
                                                                    .format(
                                                                        chatController
                                                                            .times)
                                                                    .toString(),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 8,
                                                                  color: chatController
                                                                              .messages[
                                                                                  index]
                                                                              .messageType ==
                                                                          "receiver"
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .white,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                width: 1,
                                                              ),
                                                              Icon(
                                                                chatController
                                                                            .messages[
                                                                                index]
                                                                            .isRead ==
                                                                        false
                                                                    ? null
                                                                    : Icons
                                                                        .done_all,
                                                                color:
                                                                    kWhitecolor,
                                                                size: 13,
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  ChatScreenTop(
                    height: height,
                    width: width,
                    chatController: chatController,
                  ),
                ]),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: FloatingActionButton(
                mini: false,
                backgroundColor: chatController.textchangeicon == true
                    ? HexColor('#07FA02')
                    : Colors.blue,
                onPressed: () {},
                child: chatController.textchangeicon == true
                    ? SvgPicture.asset(
                        'assets/sendImage.svg',
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      )
                    : InkWell(
                      onTap: () {
                        chatController.togglePanel();
                      },
                      child: SvgPicture.asset(
                          'assets/HashImage.svg',
                          theme: const SvgTheme(currentColor: kBlackcolor),
                        ),
                    ),
              ),
            ),
            bottomNavigationBar: ChatScreenBottom(
              height: height,
              width: width,
              chatController: chatController,
            ),
          );
        });
  }
}
