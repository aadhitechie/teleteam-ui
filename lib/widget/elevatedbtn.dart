import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constant.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({super.key,required this.btntitle});
final  String btntitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 50,
      decoration: const BoxDecoration(
        color: themecolor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            btntitle,
            style: GoogleFonts.poppins(
                color: kWhitecolor, fontSize: 18, fontWeight: FontWeight.w600,),
          ),
          const SizedBox(
            width: 3,
          ),
          Image.asset(
            'assets/right.png',
            height: 30,
            width: 30,
          )
        ],
      ),
    );
  }
}
