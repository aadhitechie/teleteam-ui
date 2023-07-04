import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/personal_information/view/personal_info_second_screen.dart';
import 'package:teleteam/widget/elevatedbtn.dart';
import 'package:teleteam/widget/text_form_field.dart';

class PersonalInfoFirstScreen extends StatelessWidget {
  const PersonalInfoFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kWhitecolor,elevation: 0,
        title: Text(
          'Fill Your Personal Information',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: themecolor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child:  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 13.0, horizontal: 25),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 700,
                          backgroundColor: themecolor,
                          backgroundImage: AssetImage(
                              'assets/mdi_face-man-profile.png'), // Add your own image here
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: kTransparent,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(9, 138, 253, 10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: kWhitecolor,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
             TextFormFld(clr: HexColor('#F6F6F6'),
              hintText: 'First Name',
            ),
            const SizedBox(
              height: 20,
            ),
             TextFormFld(hintText: 'Last Name',clr: HexColor('#F6F6F6'),),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: 380,
                decoration: BoxDecoration(
                  color: HexColor('#F6F6F6'),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Date of birth',
                    hintStyle:
                        GoogleFonts.poppins(fontSize: 14, color: HexColor('#A7A7A7'),),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today_outlined,
                          color: HexColor('#A7A7A7')),
                      onPressed: () {
                        // DatePicker.showDatePicker(
                        //   context,
                        //   showTitleActions: true,
                        //   onChanged: (date) {
                        //     log('Selected date: $date');
                        //   },
                        //   onConfirm: (date) {
                        //     log('Confirmed date: $date');
                        //   },
                        //   currentTime: DateTime.now(),
                        // );
                      },
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
             TextFormFld(hintText: 'email',clr: HexColor('#F6F6F6'),),
            const SizedBox(
              height: 150,
            ),
            InkWell(
                onTap: () {
                  Get.to(() =>  PersonalInfoSecondScreen());
                },
                child: const ElevatedBtn(btntitle: 'continue'))
          ],
        ),
      ),
    );
  }
}
