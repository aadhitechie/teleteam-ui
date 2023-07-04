import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:teleteam/core/constant.dart';

import '../widget/edit_head_widget.dart';
import '../widget/user_list_and_task_details.dart';
import '../widget/user_message_and_chat_widget.dart';
import '../widget/user_text_image_widget.dart';

class EditPopUp {
  double height = Get.height;
  double width = Get.width;
  Future<dynamic> editshowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(backgroundColor: Colors.transparent, children: [
          Container(
            height: height * 0.8,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/background.jpg',
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                EditHeadWidget(width: width, height: height),
                const UserTextAndImageWidget(),
                kHeight20,
                UserMessageAndChatDetails(width: width, height: height),
                kHeight20,
                UserListAndTaskDetails(width: width, height: height),
                kHeight20,
                const Image(
                  image: AssetImage('assets/edit_phone_image.png'),
                )
              ],
            ),
          ),
        ]);
      },
    );
  }
}
