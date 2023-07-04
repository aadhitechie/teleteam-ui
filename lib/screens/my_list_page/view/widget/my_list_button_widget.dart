import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';



class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

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
          child: const Text(
            'My Tasks',
            // style: tasktextstyle,
          ),
        ),
        kWidth10,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 240, 240, 240)),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.2, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                // side: const BorderSide(color: colorblue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'For MRL',
            // style: tasktextstyle2,
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
          child: const Text(
            'For Clearance',
            // style: tasktextstyle2,
          ),
        ),
        kWidth10,
        DottedBorder(
          color: Colors.blue,
          dashPattern: const [3, 3],
          strokeWidth: 1,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          strokeCap: StrokeCap.round,
          child: const Icon(Icons.add),
        ),
        // SvgPicture.asset('assets/mytask_icon.svg')
      ],
    );
  }
}
