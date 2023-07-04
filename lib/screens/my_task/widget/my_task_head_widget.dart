import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/profile/view/my_profile_screen.dart';

class MyTaskHeadWidget extends StatelessWidget {
  const MyTaskHeadWidget({
    super.key,
    required this.height,
    required this.title,
  });
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        height: height * 0.2,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 254, 254),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        color: kBlackcolor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  badges.Badge(
                    position: badges.BadgePosition.topEnd(top: 5, end: 5),
                    badgeContent: const Text('4'),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                        color: kBlackcolor,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              // kHeight5,
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kHeight10,
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const MyProfileScreen());
                    },
                    child: const Image(
                      image: AssetImage('assets/Oval.png'),
                    ),
                  ),
                  kWidth5,
                   Flexible(
                      child: CupertinoSearchTextField(placeholderStyle: GoogleFonts.outfit(fontSize: 14,color: kGreyColor),
                    placeholder: 'Search for chats & messages',
                  )),
                  kWidth10,
                  SvgPicture.asset('assets/filter_icon.svg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
