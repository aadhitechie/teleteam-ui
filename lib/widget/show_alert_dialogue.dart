import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';

sshowDialogForCameraIcon(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Column(
              children: <Widget>[
                Text(
                  'Choose The Location',
                  style: GoogleFonts.poppins(color: kBlackcolor),
                ),
              ],
            ),
            //  content: const Text('Choose the location'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("Camera",
                    style: GoogleFonts.poppins(
                        color: kBlackcolor, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Get.back();
                },
              ),
              CupertinoDialogAction(
                child: Text("Gallery",
                    style: GoogleFonts.poppins(
                        color: kBlackcolor, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ));
}

sshowDialogForAddIcon(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Column(
              children: <Widget>[
                Text(
                  'Choose the item',
                  style: GoogleFonts.poppins(color: kBlackcolor),
                ),
              ],
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("Images",
                    style: GoogleFonts.poppins(
                        color: kBlackcolor, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Get.back();
                },
              ),
              CupertinoDialogAction(
                child: Text("Videos",
                    style: GoogleFonts.poppins(
                        color: kBlackcolor, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Get.back();
                },
              ),
              CupertinoDialogAction(
                child: Text("Documents",
                    style: GoogleFonts.poppins(
                        color: kBlackcolor, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Get.back();
                },
              ),
               CupertinoDialogAction(
                child: Text("Medical Notes",
                    style: GoogleFonts.poppins(
                        color: kBlackcolor, fontWeight: FontWeight.w400)),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ));
}
