import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/bottom_navbar/view/buttons_screen.dart';

import '../controller/bottom_nav_controller.dart';
import 'botton_nav_widget.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  BottomNav({super.key});
  BottomNavController bottomNavController = Get.put(BottomNavController());
  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: bottomNavController,
      builder: (controller) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          body: bottomNavController.page[bottomNavController.currentIndex],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
             showDialog(context: context, builder: (context) => AlertDialog(backgroundColor: kTransparent,elevation: 0,title: ButtonsScreen(),) );
            },
            backgroundColor: themecolor,
            child: Icon(
              Icons.add,
              color: kWhitecolor,
            ),
            focusColor: Colors.red,
          ),
          bottomNavigationBar:
              BottomNavWidget(bottomNavController: bottomNavController),
        );
      },
    );
  }
}
