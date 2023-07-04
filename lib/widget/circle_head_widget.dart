import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/main_page/view/main_page_with_summary_screen.dart';
import 'package:teleteam/screens/profile/view/my_profile_screen.dart';

class CircleHeadWidget extends StatelessWidget {
  const CircleHeadWidget({
    super.key,
    required this.height, required this.sectionName, required this.iconData,
  });
 final IconData iconData;
  final double height;
final String sectionName;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        height: height * 0.19,
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
                    onPressed: () {
                       EditPopUp().editshowDialog(context);
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        color: kBlackcolor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: kBlackcolor,
                      size: 28,
                    ),
                  ),
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
              kHeight5,
              Text(
                sectionName,
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // kHeight5,
               Row(
                children:  [
                  InkWell(onTap: (){Get.to(()=>const MyProfileScreen());},
                    child: const Image(
                      image: AssetImage('assets/Oval.png'),
                    ),
                  ),
                  kWidth5,
                  Flexible(
                    child: CupertinoSearchTextField(
                      placeholder: 'Search for chats & messages',
                      placeholderStyle:
                          GoogleFonts.outfit(fontSize: 15, color: kGreyColor),
                      backgroundColor:const Color.fromARGB(255, 248, 248, 248),
                    ),
                  ),
                  kWidth10,
                  Icon(
                    iconData,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
