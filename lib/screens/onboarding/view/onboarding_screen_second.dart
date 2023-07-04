import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/screens/onboarding/view/onboarding_screen_three.dart';

import '../../../core/constant.dart';

class OnboardingScreenSecond extends StatelessWidget {
  const OnboardingScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SvgPicture.asset(
              'assets/onboarding_two_pic1.svg',
              fit: BoxFit.cover,
              width: 350,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            'assets/onboarding_two_pic2.svg',
            fit: BoxFit.cover,
            width: 300,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
              width: 300,
              child: Text(
                'Organize And Manage Your Tasks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,fontFamily: 'CoCo-Sharp'),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 300,
              child: Text(
                'Welcome !!! Do you want to clear task super fast with Circles?',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const OnboardingScreenThree());
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: themecolor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: kWhitecolor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(9, 138, 253, 10),fontFamily: 'CoCo-Sharp'),
                ),
                const SizedBox(
                  width: 170,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 217, 217, 217),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                    color: themecolor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 217, 217),
                    borderRadius: BorderRadius.circular(100),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
