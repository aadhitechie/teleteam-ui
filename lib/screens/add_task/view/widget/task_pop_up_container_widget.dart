import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';

class TaskPopUpContainerWidget extends StatelessWidget {
  const TaskPopUpContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16.0),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
            stops: [0.01, 0.01], colors: [kBlackcolor, kWhitecolor]),
        // color: colorWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             Row(
              children: [
                const Text(
                  'Ground Round begins at 2pm |',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                kWidth5,
                //SvgPicture.asset('assets/v_indicator.svg',),
              ],
            ),
            const Text(
              'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
            ),
            kHeight10,
            const Divider(
              thickness: 1,
            ),
            kHeight10,
            Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: kBlackcolor,
                  size: 12,
                ),
                kWidth10,
                const Text('Ask my senior for the dose of Abx'),
                const Spacer(),
                SvgPicture.asset('assets/task_grid_img.svg')
              ],
            ),
            kHeight15,
            Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: kBlackcolor,
                  size: 12,
                ),
                kWidth10,
                const Text('Ask my senior for the dose of Abx'),
                const Spacer(),
                SvgPicture.asset('assets/task_grid_img.svg')
              ],
            ),
            kHeight15,
            Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: kBlackcolor,
                  size: 12,
                ),
                kWidth10,
                Text('Prepare the Notes for the round'),
                Text(
                  ' |',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            kHeight15,
            Row(
              children: [
                SvgPicture.asset('assets/calendar.svg'),
                const Spacer(),
                Transform.rotate(angle: 3.1, child: const Icon(Icons.toc)),
                kWidth10,
                const Icon(Icons.people_alt_outlined)
              ],
            )
          ],
        ),
      ),
    );
  }
}
