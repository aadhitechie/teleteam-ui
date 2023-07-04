import 'package:flutter/material.dart';

import '../core/constant.dart';

class CircleVector extends StatelessWidget {
  const CircleVector(
      {super.key, required this.whiteCircleColor});
  // ignore: prefer_typing_uninitialized_variables
  final whiteCircleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Image(
            image: const AssetImage(
              whitecircle,
            ),
            color: whiteCircleColor,
          ),
          const Positioned(
            bottom: 4,
            right: 40,
            child: Image(
              image: AssetImage(
                bluecircle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
