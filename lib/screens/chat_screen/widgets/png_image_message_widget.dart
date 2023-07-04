import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teleteam/core/constant.dart';

class PngImageMessage extends StatelessWidget {
  const PngImageMessage(
      {super.key, required this.color, required this.imageName});
  final Color color;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 170,
          height: 90,
          decoration: BoxDecoration(
            boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 2.0,
                  ),
                ],
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 160,
                height: 60,
                child: Row(
                  children: [
                    kWidth5,
                    SvgPicture.asset(
                      'assets/file_ic.svg',
                      height: 40,
                      width: 30,
                      theme: const SvgTheme(
                        currentColor: kWhitecolor,
                      ),
                    ),
                    kWidth5,
                    Text(
                      imageName,
                      style: const TextStyle(color: kWhitecolor, fontSize: 18),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
