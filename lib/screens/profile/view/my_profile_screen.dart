import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/widget/textfrm.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color blueClr = Colors.blue;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/profile_bac.jpg',
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'My Profile',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: kWhitecolor),
                      onPressed: () {},
                      child: const Text('Edit'))
                ],
              ),
            )),
            Stack(children: [
              const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/Ellipse 786.png')),
              Positioned(
                  left: 75,
                  top: 100,
                  right: 1,
                  bottom: 1,
                  child: SvgPicture.asset('assets/Vector.svg'))
            ]),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/green.svg'),
                kWidth5,
                Text(
                  'Ahmed Hanafy',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kWidth5,
                Text(
                  'Emergency Medicine',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kWidth5,
                Text(
                  'Consultant Ultrasound',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 9,
                      color: HexColor('#B4B4B4')),
                ),
              ],
            ),
            kHeight20,
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: HexColor('#EFF7FF'),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/qr.svg'),
              ),
            ),
            kHeight20,
            kHeight20,
            TextForm(
              hintText: 'My Status',
              icon: Icon(
                Icons.phone_android_outlined,
                color: blueClr,
              ),
              icon2: const Icon(Icons.arrow_forward_ios),
            ),
            kHeight20,
            TextForm(
                hintText: 'Change mobile phone',
                icon: Icon(
                  Icons.phone_outlined,
                  color: blueClr,
                ),
                icon2: const Icon(Icons.arrow_forward_ios)),
            kHeight20,
            Container(
                width: 380,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 0.5), //(x,y)
                        blurRadius: 0.5)
                  ],
                  color: kWhitecolor,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    kWidth10,
                    const Icon(
                      Icons.book_outlined,
                      color: Colors.blue,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kWhitecolor, elevation: 0.0),
                        child: const Text('Logbook')),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Soon',
                        style: GoogleFonts.poppins(
                            color: HexColor('#FD096F'),
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )),
            kHeight15,
            TextForm(
                hintText: 'Settings',
                icon: Icon(
                  Icons.settings_outlined,
                  color: blueClr,
                ),
                icon2: const Icon(Icons.arrow_forward_ios)),
            kHeight20,
            kHeight20,
            Container(
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: HexColor('#FD096F')),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/logout.svg',
                    ),
                    kWidth5,
                    Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: kWhitecolor),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
