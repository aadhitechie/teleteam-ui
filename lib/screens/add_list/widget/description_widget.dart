
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teleteam/core/constant.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/desc.svg'),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 8,
              decoration: InputDecoration(
                hintText: 'Description',
                hintStyle: const TextStyle(
                  color: kGreyColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
