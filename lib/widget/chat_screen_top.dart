import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import '../screens/chat_screen/controller/chat_controller.dart';

class ChatScreenTop extends StatelessWidget {
  const ChatScreenTop({
    super.key,
    required this.height,
    required this.chatController,
    required this.width,
  });

  final double height;
  final ChatController chatController;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Obx(
        () => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: height * (chatController.isExpanded.value ? 0.66 : 0.18),
          child: Container(
            width: double.infinity,
            height: height * 0.18,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 254, 254),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/truama.png'),
                        ),
                        kWidth10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Taruma team',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            const Text(
                              'tap here for contact info',
                              style: TextStyle(color: kGreyColor),
                            )
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    chatController.isExpanded.value
                        ? Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CupertinoSearchTextField(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                              ),
                              kHeight5,
                              SingleChildScrollView(
                                child: Wrap(
                                    spacing: 10,
                                    runSpacing: 10,
                                    children:List.generate(30, (index) => HashButtonWidget(
                                        height: height,
                                        text: chatController.itemname[index%4],
                                        onTap: () {},
                                      ))),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 35,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: List.generate(
                                          chatController.itemname.length,
                                          (index) => Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              width: 116,
                                              height: height * 0.04,
                                              decoration: BoxDecoration(
                                                color: HexColor('#EFF7FF'),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                  index == 1 || index == 3
                                                      ? '#Healthcare'
                                                      : '#Announcement',
                                                  style: const TextStyle(
                                                      color: kBlackcolor,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // HashContents()
                            ],
                          ),
                    InkWell(
                      onTap: () {
                        chatController.togglePanel();
                      },
                      child: Obx(
                        () => chatController.isExpanded.value
                            ? const Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: Colors.blue,
                              )
                            : const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.blue,
                              ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class HashButtonWidget extends StatelessWidget {
  HashButtonWidget({
    super.key,
    required this.height,
    required this.text,
    required this.onTap,
  });

  final double height;
  final String text;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        width: 116,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: HexColor('#EFF7FF'),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              text,
              style: const TextStyle(color: kBlackcolor, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
