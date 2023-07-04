import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/my_list_page/view/widget/my_list_list_widget.dart';
import 'package:teleteam/screens/my_list_page/view/widget/my_list_search_widget.dart';
import 'package:teleteam/screens/my_task/widget/my_task_button_widget.dart';
import 'package:teleteam/screens/my_task/widget/my_task_head_widget.dart';


// ignore: must_be_immutable
class ScreenMyList extends StatelessWidget {
  ScreenMyList({super.key});
  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyTaskHeadWidget(
                height: height,
                title: 'My List',
              ),
              kHeight20,
              MyTaskAndListButtonWidget(
                width: width,
                height: height,
                item1: 'Private',
                item2: 'Temp List #1',
                item3: 'Trauma team',
              ),
              kHeight10,
              MyListSearchWidget(height: height),
              kHeight10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'List Created By Zyad Elmohya on 12/2/2023 6:00PM',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 6,
                          color: HexColor('#D9D9D9')),
                    ),
                    Text(
                      'Non-Medical viewer',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 6,
                          color: HexColor('#D9D9D9')),
                    ),
                  ],
                ),
              ),
              MyListListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
