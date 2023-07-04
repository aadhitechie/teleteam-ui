import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TextFormFld extends StatelessWidget {
   // ignore: prefer_const_constructors_in_immutables
   TextFormFld({super.key, required this.hintText, required this.clr,});
final String hintText;
final Color clr;

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 380,
              decoration: BoxDecoration(
                color: clr,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                
                autofocus: true,
                decoration: InputDecoration(

                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle:
                      GoogleFonts.poppins(fontSize: 14, color: HexColor('#A7A7A7')),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),),
              ));
  }
}