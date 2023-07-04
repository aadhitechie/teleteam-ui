import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/widget/elevatedbtn.dart';

import '../widget/add_user_name_widget.dart';
import '../widget/assigness_text_widget.dart';
import '../widget/attachemets_widget.dart';
import '../widget/description_widget.dart';
import '../widget/head_list_add.dart';
import '../widget/high_widget.dart';
import '../widget/responsible_text_widget.dart';
import '../widget/save_text_widget.dart';
import '../widget/tags_widget.dart';
import '../widget/todo_widget.dart';

class BackDrop {
  double height = Get.height;
  double width = Get.width;
  Future<dynamic> createCardBottomSheet(BuildContext context) {
    return showMaterialModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          height: height * 0.88,
          child: SingleChildScrollView(
            child: Column(
              children: [
                kHeight10,
                SvgPicture.asset('assets/divider.svg'),
                kHeight20,
                HeadWidget(width: width),
                kHeight10,
                AddUserNameWidget(
                  width: width,
                ),
                TagWidget(width: width, height: height),
                DescriptionWidget(
                  width: width,
                ),
                kHeight20,
                ResponsibleTextWidget(width: width),
                kHeight20,
                AssignessTextWidget(width: width),
                kHeight20,
                ToDoWidget(width: width),
                kHeight20,
                AttachementsWidgets(width: width),
                kHeight20,
                HighWidget(width: width),
                kHeight20,
                SaveTextWidget(width: width),
                kHeight20,
                const ElevatedBtn(btntitle: 'Create'),
              ],
            ),
          ),
        );
      },
    );
  }
}
