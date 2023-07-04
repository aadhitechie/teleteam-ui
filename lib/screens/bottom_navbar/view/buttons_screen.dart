import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/add_list/view/add_list_screen.dart';
import 'package:teleteam/screens/add_task/view/add_task_view.dart';

// ignore: must_be_immutable
class ButtonsScreen extends StatelessWidget {
  ButtonsScreen({super.key});
  double height = Get.height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height * 0.6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                 TaskPopUp().showTaskDialog(context);
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: themecolor,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Image.asset(
                  'assets/bt3.png',
                  color: kWhitecolor,
                ),
              ),
            ),
            kWidth20,
            kWidth15,
            kWidth20,
            kWidth20,
            InkWell(
              onTap: () {
                  BackDrop().createCardBottomSheet(
              context,
            );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: themecolor,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Image.asset(
                  'assets/bt4.png',
                  color: kWhitecolor,
                ),
              ),
            ),
          ],
        ),
        kHeight20,
        kHeight15,
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
               boxShadow:const [
                  BoxShadow(
                    color: Color.fromARGB(188, 77, 76, 76),
                    offset: Offset(1.0, 2.0), //(x,y)
                    blurRadius: 20.0,
                  ),
                ],
              color: HexColor('#FD096F'),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: SvgPicture.asset(
                'assets/cross.svg',
              ),
            ),
          ),
        )
      ],
    );
  }
}
