import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
           SvgPicture.asset('assets/private_icon.svg'),
           kWidth5,
           Text(
            'Private',
            style: TextStyle(color: HexColor('#FD096F'), fontSize: 12),
          ),
          SizedBox(
            width: width * 0.15,
          ),
          const Text(
            'Create Your Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              color: kBlackcolor,
            ),
          )
        ],
      ),
    );
  }
}
