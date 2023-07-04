
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/main_page/controller/main_page_circle_controller.dart';
import 'package:teleteam/screens/main_page/view/main_page_with_summary_screen.dart';

import '../../../widget/chat_list_widget.dart';
import '../../../widget/circle_head_widget.dart';

// ignore: must_be_immutable
class MainPageCirclesScreen extends StatelessWidget {
  MainPageCirclesScreen({super.key});

  MainPageCircleController mainPageCircleController = Get.put(MainPageCircleController());
  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero,()=>EditPopUp().editshowDialog(context));
    // WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) { 
    //   EditPopUp().editshowDialog(context);
    // });
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: kWhitecolor,
      body: SafeArea(
        child: GetBuilder(
          init: mainPageCircleController,
          builder: (controller) {
            return ListView(
              children: [
                CircleHeadWidget(height: height,sectionName: 'Circles',iconData: Icons.filter_list_rounded,),
                kHeight10,
                ChatListWidget(mainPageCircleController: mainPageCircleController),
              ],
            );
          },
        ),
      ),
    );
  }
}
