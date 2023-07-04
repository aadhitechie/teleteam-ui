import 'package:flutter/material.dart';

import '../core/constant.dart';

class MedicalCirclesNameTag extends StatelessWidget {
  const MedicalCirclesNameTag({super.key,required this.textcolor});
// ignore: prefer_typing_uninitialized_variables
final textcolor;
  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              RichText(
                text:  TextSpan(
                  text: 'Medical',
                  style: TextStyle(
                      fontFamily: 'CoCo-Sharp',
                      color: textcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Circles',
                      style: TextStyle(
                        fontFamily: 'CoCo-Sharp',
                        fontWeight: FontWeight.w900,
                        color: textcolor,
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 3,
                right: 43,
                child: Image(
                  width: 5,
                  image: AssetImage(
                    bluecircle,
                  ),
                ),
              ),
            ],
          );
  }
}