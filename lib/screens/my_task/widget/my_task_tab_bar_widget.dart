import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/my_task/controller/task_controller.dart';


class MyTaskTabBarWidget extends StatelessWidget {
  const MyTaskTabBarWidget({
    super.key,
    required this.myTaskController,
    required this.width,
  });

  final MyTaskController myTaskController;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: myTaskController,
        builder: (context) {
          return TabBar(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            labelColor: Colors.blue,
            dividerColor: Colors.blue,
            indicatorColor: Colors.blue,
            automaticIndicatorColorAdjustment: false,
            unselectedLabelColor: kGreyColor,
            controller: myTaskController.tabController,
            overlayColor: MaterialStateProperty.all(kGreyColor),
            tabs: const [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'To Me',
              ),
              Tab(
                text: 'By Me',
              ),
              Tab(
                text: 'Done',
              )
            ],
          );
        });
  }
}
