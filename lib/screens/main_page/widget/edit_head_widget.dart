import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';

class EditHeadWidget extends StatelessWidget {
  const EditHeadWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            width: width * 0.36,
            height: height * 0.03,
            decoration: BoxDecoration(
                color: const Color.fromARGB(22, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Work mode is on',
                  style: TextStyle(color: kGreyColor),
                ),
                Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 15,
                )
              ],
            ),
          ),
        ),
        kWidth20,
        const Padding(
          padding: EdgeInsets.only(top: 18),
          child: Text(
            'Save',
            style: TextStyle(
              color: kWhitecolor,
            ),
          ),
        ),
        kWidth5,
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Icon(
            Icons.power_settings_new,
            size: 15,
            color: kWhitecolor,
          ),
        ),
        const Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration:  BoxDecoration(
            color: HexColor('#FD096F'),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
              bottomLeft: Radius.circular(120)
            ),
          ),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              color: kWhitecolor,
            ),
          ),
        ),
      ],
    );
  }
}
