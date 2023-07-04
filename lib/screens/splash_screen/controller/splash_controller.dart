import 'dart:async';

import 'package:get/get.dart';
import 'package:teleteam/screens/authorizations/view/authorization_screen.dart';

class SplashController extends GetxController {
  void splashTimer(){
    Timer(const Duration(seconds: 3), () {
      Get.off(()=> AuthorizationScreen());
     });
  }
}