import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teleteam/core/constant.dart';



class ResponsibleTextWidget extends StatelessWidget {
  const ResponsibleTextWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/res_icon.svg'),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Rssponsible',
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
