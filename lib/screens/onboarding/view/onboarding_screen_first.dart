import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/onboarding/view/onboarding_screen_second.dart';

class OnboardingScreenFirst extends StatelessWidget {
  const OnboardingScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 38,
          ),
          SvgPicture.asset(
            'assets/onboarding_large_img.svg',
            width: 390,
            fit: BoxFit.cover,
          ),
          SvgPicture.asset(
            'assets/onbooarding_small_img.svg',
            width: 350,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
              width: 300,
              child: Text(
                'Communications & Connectivity',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,fontFamily: 'CoCo-Sharp'),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: 350,
              child: Text(
                'Welcome !!! Do you want to clear task super fast with Teleteam?',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w400),
              )),
            const  SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:24.0),
            child: Row(
              children: [
                InkWell(onTap: (){Get.to(()=>const OnboardingScreenSecond());},
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
              const  SizedBox(
                  width: 10,
                ),
                const Text(
                  'Skip',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color.fromRGBO(9, 138, 253, 10),fontFamily: 'CoCo-Sharp'),
                ),
              const  SizedBox(width: 180,),
              Container(
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                    color: themecolor,
                    borderRadius: BorderRadius.circular(100),

                  ),),
                const  SizedBox(width: 5,),
                  Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 217, 217, 217),
                    borderRadius: BorderRadius.circular(100),
                    
                  ),),
                const   SizedBox(width: 5,),
                  Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 217, 217, 217),
                    borderRadius: BorderRadius.circular(100),
                    
                  ),)],
            ),
          ),
        ],
      ),
    );
  }
}
