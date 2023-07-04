import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';

// ignore: must_be_immutable
class MedicalNotesWidgets extends StatelessWidget {
  MedicalNotesWidgets({super.key});
  double height = Get.height;
  double width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          kWidth10,
          Flexible(
            child: Container(
              width: height * 0.39,
              height: height * 0.13,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 2.0,
                  ),
                ],
                gradient: const LinearGradient(
                    stops: [0.01, 0.01], colors: [kBlackcolor, kWhitecolor]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/medical_card_dp.svg',
                          height: 40,
                        )
                      ],
                    ),
                    kWidth15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'John Doe',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            kWidth5,
                            kHeight20,
                            Column(
                              children: [
                                kHeight5,
                                Text(
                                  '5 Days ago',
                                  style: GoogleFonts.poppins(
                                      fontSize: 6, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        kHeight15,
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 25,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: kBlackcolor),
                              child: const Center(
                                child: Text(
                                  'MRN',
                                  style: TextStyle(
                                      color: kWhitecolor, fontSize: 10),
                                ),
                              ),
                            ),
                            kWidth5,
                            Container(
                              width: 50,
                              height: 25,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: kBlackcolor),
                              child: const Center(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      color: kWhitecolor, fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
