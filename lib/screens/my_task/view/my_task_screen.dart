import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/my_task/controller/task_controller.dart';
import 'package:teleteam/screens/my_task/widget/my_task_head_widget.dart';
import 'package:teleteam/screens/my_task/widget/my_task_tab_bar_view_widget.dart';
import 'package:teleteam/screens/my_task/widget/my_task_tab_bar_widget.dart';

import '../widget/my_task_button_widget.dart';

// ignore: must_be_immutable
class MyTaskScreen extends StatelessWidget {

  double height = Get.height;
  double width = Get.width;
  MyTaskController myTaskController = Get.put(MyTaskController());
  MyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            MyTaskHeadWidget(height: height,title: 'My Task',),
            kHeight20,
            MyTaskAndListButtonWidget(width: width, height: height,item1: 'My Tasks',item2: 'For MRI',item3: 'For Clearance',),
            MyTaskTabBarWidget(
                myTaskController: myTaskController, width: width),
            MyTaskTabBarViewWidget(
                myTaskController: myTaskController, height: height)
          ],
        ),
      ),
    );
  }
}
