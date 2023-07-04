import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';

import '../../add_list/view/add_list_screen.dart';
import '../../add_task/view/add_task_view.dart';

class BottonNavFloatingButtonWidget extends StatelessWidget {
  const BottonNavFloatingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     return SpeedDial(
      backgroundColor: themecolor,
      activeBackgroundColor: HexColor('#FD096F'),
      childrenButtonSize: const Size.square(70),
      // animatedIcon: AnimatedIcons.menu_close,
      activeChild: const Icon(
        Icons.close,
        color: kWhitecolor,
      ),
      animationAngle: pi / -100,
      spaceBetweenChildren: 20,
      // ignore: prefer_const_constructors, sort_child_properties_last
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      curve: Curves.fastOutSlowIn,
      gradientBoxShape: BoxShape.circle,

      direction: SpeedDialDirection.up,
      useRotationAnimation: true,
      children: [
        SpeedDialChild(
         
          backgroundColor: themecolor,
          onTap: () {
            TaskPopUp().showTaskDialog(context);
          },
          child: const Image(
            width: 70,
            color: kWhitecolor,
            image: AssetImage('assets/bt3.png'),
          ),
        ),
        
        SpeedDialChild(
          backgroundColor: themecolor,
          onTap: () {
            BackDrop().createCardBottomSheet(
              context,
            );
          },
          child: const Image(
            width: 70,
            color: kWhitecolor,
            image: AssetImage('assets/bt4.png'),
          ),
        ),
      ],
    );
  }
}
