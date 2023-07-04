import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teleteam/core/constant.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/todo_icon.svg'),
          SizedBox(
            width: width * 0.1,
          ),
           Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To-do',
                ),
                Icon(
                  Icons.circle_outlined,
                  size: 12,
                  color: kBlackcolor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
