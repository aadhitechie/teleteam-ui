import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';

class MyTaskAndListButtonWidget extends StatelessWidget {
  const MyTaskAndListButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.item1,
    required this.item2,
    required this.item3,
  });

  final double width;
  final double height;
  final String item1;
  final String item2;
  final String item3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.blue,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.2, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            item1,
            style:
                GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ),
        kWidth10,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 240, 240, 240)),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.22, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                // side: const BorderSide(color: colorblue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            item2,
            style:
                GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ),
        kWidth10,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 240, 240, 240)),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.24, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                // side: const BorderSide(color: colorblue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            item3,
            style:
                GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ),
        kWidth10,
        DottedBorder(
          color: Colors.blue,
          dashPattern: const [4, 4],
          strokeWidth: 1,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          strokeCap: StrokeCap.round,
          child: const Icon(Icons.add),
        ),
        kWidth10,
        SvgPicture.asset('assets/ic_round-expand.svg'),
      ],
    );
  }
}
