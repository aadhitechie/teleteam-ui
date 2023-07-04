import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';

// ignore: must_be_immutable
class MyListListWidget extends StatelessWidget {
  MyListListWidget({
    super.key,
  });

  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return index == 0
            ? Padding(
                padding: const EdgeInsets.all(7),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/task_grid_img.svg'),
                    kWidth5,
                    kHeight10,
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: height * 0.30,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(stops: [
                            0.01,
                            0.01
                          ], colors: [
                            Colors.blue,
                            kWhitecolor,
                          ]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mohammed Nasser',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  kWidth5,
                                  Text(
                                    '5 Days ago',
                                    style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.1,
                                  ),
                                  SvgPicture.asset('assets/yaicon.svg'),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications_none_rounded,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/listavatar.png'),
                                  ),
                                  kWidth5,
                                  TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.blue,
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(
                                          width * 0.01,
                                          height * 0.03,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.blue, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      '+Add Tag',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: kWhitecolor,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset('assets/listindicator.svg')
                                ],
                              ),
                              kHeight5,
                               Row(
                                children: [
                                  Text('To Do',style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                                ],
                              ),
                              kHeight10,
                               Row(
                                children: [
                                  kWidth20,
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 11,
                                  ),
                                  kHeight5,
                                  Text(
                                    'Call Radiology to book US',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                               Row(
                                children: [
                                  kWidth20,
                                  Icon(
                                    Icons.circle,
                                    size: 11,
                                  ),
                                  kWidth5,
                                  Text(
                                    'Prepare for OR',
                                    style: TextStyle(
                                        color: kGreyColor,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                               Row(
                                children: [
                                  kWidth20,
                                  Icon(
                                    Icons.circle,
                                    size: 11,
                                  ),
                                  kWidth5,
                                  Text(
                                    'Enter medications',
                                    style: TextStyle(
                                        color: kGreyColor,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  kWidth20,
                                  const Icon(
                                    Icons.circle_outlined,
                                    size: 11,
                                  ),
                                  kWidth5,
                                  const Text(
                                    'Enter medications',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  kWidth5,
                                  SvgPicture.asset('assets/v_Indicator.svg')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/task_grid_img.svg'),
                    kWidth10,
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: height * 0.14,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              stops: [0.01, 0.01],
                              colors: [Colors.blue, kWhitecolor]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'John Doe',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                 const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '5 Days ago',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.35,
                                  ),
                                 SizedBox(
                                  width: 40,
                                  child: Stack(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/avatar1.png')),
                                      Positioned(
                                          left: 10,
                                          top: 3,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/avatar2.png'))),
                                      Positioned(
                                          left: 20,
                                          top: 3,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/button.png')))
                                    ],
                                  ),
                                ),
                                  const Spacer(),
                                  Icon(
                                    Icons.notifications_off_outlined,
                                    color: HexColor('#FD096F'),
                                  )
                                  // SvgPicture.asset('assets/bell.svg',)
                                ],
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/listavatar.png'),
                                  ),
                                  kWidth5,
                                  TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.blue,
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(
                                          width * 0.05,
                                          height * 0.0,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.blue, width: 0),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      '+Add Tag',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: kWhitecolor,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset('assets/h_indicator.svg')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 10,
    );
  }
}
