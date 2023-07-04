import 'dart:async';

import 'package:get/get.dart';
import 'package:teleteam/screens/onboarding/view/onboarding_screen_first.dart';


class DoneController extends GetxController {
 void  splashTimer() {
    Timer(const Duration(seconds: 3), () {
      Get.off(() =>  const OnboardingScreenFirst());
    });
  }
}
