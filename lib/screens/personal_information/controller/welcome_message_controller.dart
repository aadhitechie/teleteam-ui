import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/screens/bottom_navbar/view/bottom_navbar.dart';


class WelcomeMessageController extends GetxController {
  
  void welcomeMessageSplashTimer(BuildContext context){
    Timer(const Duration(seconds: 3), () {
      Get.offAll(()=>BottomNav());
      //  EditPopUp().editshowDialog(context);
     });
  }
}