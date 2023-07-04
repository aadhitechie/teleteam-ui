import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/my_task/controller/task_controller.dart';

class MyTaskTabBarViewWidget extends StatelessWidget {
  const MyTaskTabBarViewWidget({
    super.key,
    required this.myTaskController,
    required this.height,
  });

  final MyTaskController myTaskController;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: myTaskController,
      builder: (context) {
        return SizedBox(
          height: height,
          child:
              TabBarView(controller: myTaskController.tabController, children: [
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/task_grid_img.svg'),
                      kWidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient:  LinearGradient(stops:const [
                                0.01,
                                0.01
                              ], colors: [index ==1 ?
                                Colors.blue:kWhitecolor,
                                kWhitecolor,
                              ]),

                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:  ListTile(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                  title: Text(
                                'Ground Round begins at 2pm',
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w400,color: kBlackcolor),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                                trailing:  SizedBox(
                                  width: 40,
                                  child: Stack(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/edit_stack_image1.png')),
                                      Positioned(
                                          left: 10,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image2.png'))),
                                      Positioned(
                                          left: 20,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image3.png')))
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                     SvgPicture.asset('assets/task_grid_img.svg'),
                      kWidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:  ListTile(
                              shape:const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                                title: Text(
                                'Ground Round begins at 2pm',
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w400,color: kBlackcolor),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: SizedBox(
                                  width: 40,
                                  child: Stack(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/edit_stack_image1.png')),
                                      Positioned(
                                          left: 10,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image2.png'))),
                                      Positioned(
                                          left: 20,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image3.png')))
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                     SvgPicture.asset('assets/task_grid_img.svg'),
                      kWidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:  ListTile(
                              shape:const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                               title: Text(
                                'Ground Round begins at 2pm',
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w400,color: kBlackcolor),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: SizedBox(
                                  width: 40,
                                  child: Stack(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/edit_stack_image1.png')),
                                      Positioned(
                                          left: 10,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image2.png'))),
                                      Positioned(
                                          left: 20,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image3.png')))
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/task_grid_img.svg'),
                      kWidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:  ListTile(
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              title: Text(
                                'Ground Round begins at 2pm',
                                style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: GoogleFonts.poppins(fontSize: 8,fontWeight: FontWeight.w400,color: kBlackcolor),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: SizedBox(
                                  width: 40,
                                  child: Stack(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/edit_stack_image1.png')),
                                      Positioned(
                                          left: 10,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image2.png'))),
                                      Positioned(
                                          left: 20,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/edit_stack_image3.png')))
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
          ]),
        );
      },
    );
  }
}
