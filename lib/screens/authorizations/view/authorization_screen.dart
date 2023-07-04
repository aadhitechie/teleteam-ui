import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:teleteam/screens/authorizations/controller/authorizations_controller.dart';
import 'package:teleteam/screens/enter_otp/view/otp_screen.dart';
import 'package:teleteam/widget/elevatedbtn.dart';
import 'package:teleteam/widget/medical_circles_name_tag.dart';
import '../../../core/constant.dart';

// ignore: must_be_immutable
class AuthorizationScreen extends StatelessWidget {
  AuthorizationScreen({super.key});
  double height = Get.height;
  AuthorizationController authorizationController =
      Get.put(AuthorizationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitecolor,
      body: GetBuilder(
          init: authorizationController,
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Image.asset(splashGroupIcon),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  'Welcome In',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, color: themecolor,fontFamily: 'CoCo-Sharp'),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const MedicalCirclesNameTag(textcolor: themecolor),
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  'Your Phone Number',
                  style: TextStyle(
                    fontFamily: 'CoCo-Sharp',
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: themecolor),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: 150,
                  width: 380,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 246, 246, 246),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 11.0, top: 8),
                        child: Text(
                          'Country/Region',
                          style: TextStyle(color: kGreyColor, fontSize: 13,fontFamily: 'CoCo-Sharp'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final code = await authorizationController
                              .countryPicker
                              .showPicker(context: context);
                          authorizationController.flagPicker(code!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                child:
                                    authorizationController.countryCode != null
                                        ? authorizationController.countryCode!
                                            .flagImage()
                                        :SvgPicture.asset('assets/flag_image.svg',color: kBlackcolor,),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${authorizationController.countryCode != null ? authorizationController.countryCode!.name.toUpperCase().substring(0, 3):'AU'}',
                                style: const TextStyle(fontWeight: FontWeight.bold,fontFamily: 'CoCo-Sharp'),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              // Text(
                              //   '(${authorizationController.countryCode != null ? authorizationController.countryCode!.dialCode.toString() : null},)',
                              //   style: const TextStyle(fontWeight: FontWeight.bold,fontFamily: 'CoCo-Sharp'),
                              // ),
                              const Spacer(),
                              const Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                     const Divider(
                        thickness: 2,
                        color: kWhitecolor,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Phone Number',
                          style: TextStyle(
                              color: kGreyColor,
                              fontSize: 13,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.09,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 310,
                        child: RichText(
                          text: const TextSpan(
                            text: 'I have read and agree to the',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: kGreyColor,
                                fontSize: 14,fontFamily: 'CoCo-Sharp'),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: kBlackcolor,
                                    fontSize: 16,fontFamily: 'CoCo-Sharp'),
                              ),
                              TextSpan(
                                text:
                                    '  and agree that my personal data will be processed by you',
                                style: TextStyle(
                                    color: kGreyColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,fontFamily: 'CoCo-Sharp'),
                              ),
                            ],
                          ),
                        ),
                      ),
                     
                      Image.asset('assets/tick_mark_group.png'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:22.0),
                      child: SizedBox(
                        width: 290,
                        child: RichText(
                          text: const TextSpan(
                            text: 'I have read and accept the',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: kGreyColor,
                                fontSize: 14,fontFamily: 'CoCo-Sharp'),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Terms of use',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: kBlackcolor,
                                    fontSize: 16,fontFamily: 'CoCo-Sharp'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                      
                    ),
                    Image.asset('assets/tick_mark_group.png'),
                  ],
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                InkWell(onTap: (){Get.to(()=>const OtpScreen());},
                  child: const ElevatedBtn(btntitle: 'Next',)
                )
              ],
            );
          }),
    );
  }
}
