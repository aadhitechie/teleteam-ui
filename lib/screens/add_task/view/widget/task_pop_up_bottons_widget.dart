import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';



class TaskPopUpButtonsWidget extends StatelessWidget {
  const TaskPopUpButtonsWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              fixedSize: MaterialStateProperty.all(
                Size(width * 0.28, height * 0.06),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side:  BorderSide(color: HexColor('#FD096F'), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {
              Get.back();
            },
            child:  Text('Cancel',style: GoogleFonts.poppins(color: HexColor('#FD096F'),fontWeight: FontWeight.w500),),
          ),
          kWidth10,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(themecolor),
              fixedSize: MaterialStateProperty.all(
                Size(width * 0.42, height * 0.05),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child:  Text(
              'Add',style: GoogleFonts.poppins(color: kWhitecolor,fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
