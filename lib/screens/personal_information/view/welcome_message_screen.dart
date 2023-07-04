import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/personal_information/controller/welcome_message_controller.dart';

import '../../../widget/medical_circles_name_tag.dart';

// ignore: must_be_immutable
class WelcomeMessageScreen extends StatelessWidget {
  WelcomeMessageScreen({super.key});
  double height = Get.height;
 final welcomemsgController = Get.put(WelcomeMessageController());
  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      welcomemsgController.welcomeMessageSplashTimer(context);
    });
    return Scaffold(
      backgroundColor: HexColor('#00172D'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Text(
              'Congratulations',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: kWhitecolor,
                  fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 250,
            ),
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/dp_border_group.svg',
                  width: 200,
                  height: 200,
                ),
                Positioned(
                  top: -15,
                  left: -14,
                  child: Image.asset(
                    'assets/Ellipse 786.png',
                    width: 220,
                    height: 220,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Hello Ahamed',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kWhitecolor),
            ),
            SizedBox(height: height * 0.2,),
            const Text(
              'Welcome In',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: kWhitecolor,
                  fontFamily: 'CoCo-Sharp',
                  fontSize: 12),
            ),
            const SizedBox(
              height: 1,
            ),
            const MedicalCirclesNameTag(textcolor: kWhitecolor),
          ],
        ),
      ),
    );
  }
}
