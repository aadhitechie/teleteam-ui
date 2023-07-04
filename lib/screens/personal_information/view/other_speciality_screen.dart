import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/personal_information/view/add_profession_screen.dart';

class OtherSpecialityScreen extends StatelessWidget {
  const OtherSpecialityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset:
                          const Offset(0, -2), // changes the shadow direction
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: kWhitecolor),
              height: 870,
              width: 500,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.close,
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                        Text(
                          'Other Speciality',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 380,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          size: 40,
                          color: HexColor('#A7A7A7'),
                        ),
                        hintText: 'Search for New Speciality',
                        hintStyle:
                            GoogleFonts.outfit(color: HexColor('#A7A7A7')),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 2.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Healthcare Management',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: HexColor('#A7A7A7')),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Relations & Communication',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: HexColor('#A7A7A7')),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Student',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: HexColor('#A7A7A7')),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8.0,
                            spreadRadius: 1.0,
                            offset:
                                Offset(0, 2), // shadow direction: bottom right
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 380,
                      height: 200,
                      child: Row(
                        children: [
                         const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/add_profession_icon.png',
                            fit: BoxFit.cover,
                          ),
                         const  SizedBox(
                            width: 20,
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Can’t Find Your Profession ?',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 10,),
                              SizedBox(width: 200,
                                child: Text(
                                  'We are always adding more professions to our list.',
                                  style: GoogleFonts.poppins(fontSize: 13,color: HexColor('#00172D'),fontWeight: FontWeight.w300
                                      ),
                                      
                                ),
                              ),
                              const SizedBox(height: 30,),
                              InkWell(onTap: () {
                                Get.to(()=>const AddProfessionScreen());
                              },
                                child: Row(
                                  children: [
                                    Text('Add Profession',style: GoogleFonts.poppins(fontWeight: FontWeight.w700),),
                                    const Icon(Icons.arrow_forward_ios,size: 10,color: kBlackcolor,)
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
