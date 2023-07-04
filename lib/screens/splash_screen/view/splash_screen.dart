import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:teleteam/screens/splash_screen/controller/splash_controller.dart';
import 'package:teleteam/widget/medical_circles_name_tag.dart';
import '../../../core/constant.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  double height = Get.height;
  final splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashController.splashTimer();
    });
    return Scaffold(
      backgroundColor: themecolor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.31,
                ),
                SvgPicture.asset('assets/splash_icon.svg'),
                SizedBox(
                  height: height * 0.44,
                ),
            const  MedicalCirclesNameTag(textcolor: kWhitecolor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
