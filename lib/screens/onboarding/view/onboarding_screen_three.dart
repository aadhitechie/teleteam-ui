import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/personal_information/view/personal_info_first_screen.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SvgPicture.asset(
              'assets/onboarding_three_pic1.svg',
              fit: BoxFit.cover,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            'assets/onboarding_three_pic2.svg',
            fit: BoxFit.cover,
            width: 200,
          ),
          const SizedBox(
            height: 70,
          ),
          const SizedBox(
              width: 300,
              child: Text(
                'Collaborate Through Using Card List',
                style: TextStyle(fontFamily: 'CoCo-Sharp',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: kWhitecolor),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: 350,
              child: Text(
                'Welcome !!! Do you want to clear task super fast with Teleteam?',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: kWhitecolor),
              )),
            const  SizedBox(height: 50,),
          InkWell(onTap: (){Get.to(()=>const PersonalInfoFirstScreen());},
            child: Container(
              width: 380,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(9, 138, 253, 10),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(fontFamily: 'CoCo-Sharp',
                        color: kWhitecolor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
