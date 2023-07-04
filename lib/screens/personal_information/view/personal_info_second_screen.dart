import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/personal_information/view/other_speciality_screen.dart';
import 'package:teleteam/widget/elevatedbtn.dart';
import 'package:teleteam/widget/text_form_field.dart';

class PersonalInfoSecondScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  PersonalInfoSecondScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhitecolor,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Fill your work speciality',
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: HexColor('#F6F6F6'),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                      border: InputBorder.none,
                      hintText: 'Working as',
                      hintStyle:
                          GoogleFonts.poppins(fontSize: 14, color: kBlackcolor),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      color: HexColor('#F6F6F6'),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          child: const Icon(Icons.arrow_drop_down),
                          onTap: () {
                            Get.to(() => const OtherSpecialityScreen());
                          },
                        ),
                        border: InputBorder.none,
                        hintText: 'Speciality',
                        hintStyle:
                            GoogleFonts.poppins(fontSize: 14, color: kBlackcolor),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                      ),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                height: 20,
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextFormFld(hintText: 'position/sub-speciality',clr:HexColor('#F6F6F6')),
            ),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextFormFld(hintText: 'Working at',clr: HexColor('#F6F6F6'),),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                 SizedBox(
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextFormFld(clr: HexColor('#F6F6F6'), hintText: 'Work email (Optional)'),
                    )),
                Switch(
                  activeTrackColor: HexColor('#098AFD'),
                  thumbColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => kWhitecolor),
                  value: true,
                  onChanged: (newValue) {},
                ),
              ],
            ),
            const SizedBox(
              height: 220,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: InkWell(
                  onTap: () {}, child: const ElevatedBtn(btntitle: 'Create')),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Skip',
                style: TextStyle(
                    fontFamily: 'CoCo-Sharp',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(9, 138, 253, 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
