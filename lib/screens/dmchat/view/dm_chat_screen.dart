import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/dmchat/controller/dm_chat_controller.dart';
import 'package:teleteam/widget/dm_chat_list_widget.dart';
import '../../../widget/circle_head_widget.dart';

// ignore: must_be_immutable
class DmchatScreen extends StatelessWidget {
  DmchatScreen({super.key});

  DmchatController dmChatController = Get.put(DmchatController());
  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: kWhitecolor,
      body: SafeArea(
        child: GetBuilder(
          init: dmChatController,
          builder: (controller) {
            return ListView(
              children: [
                CircleHeadWidget(height: height,sectionName: 'Messages',iconData: Icons.filter_list_rounded,),
                kHeight10,
                DmChatListWidget(dmchatController: dmChatController),
              ],
            );
          },
        ),
      ),
    );
  }
}
