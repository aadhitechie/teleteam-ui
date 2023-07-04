import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/chat_screen/view/chat_screen.dart';
import 'package:teleteam/screens/main_page/controller/main_page_circle_controller.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
    super.key,
    required this.mainPageCircleController,
  });

  final MainPageCircleController mainPageCircleController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(() => ChatSCreen());
          },
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        mainPageCircleController.personImages[index]),
                  ),
                  kWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            mainPageCircleController.personName[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                      kHeight5,
                      Row(
                        children: [
                          Icon(
                            Icons.done_all_rounded,
                            size: 17,
                            color: index == 1 || index == 2 || index == 4
                                ? colorbudge
                                : kBlackcolor,
                          ),
                          kWidth10,
                          SizedBox(
                            width: 180,
                            child: Text(
                              index == 0
                                  ? 'Zyad: Hello Guys'
                                  : 'You: Is there a morning meeting today?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(color: kGreyColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  index == 0
                      ? IconButton(
                          onPressed: () {},
                          icon: Transform.rotate(
                              angle: .7, child: const Icon(Icons.push_pin)),
                        )
                      : const SizedBox(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '12:00 PM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            color: kGreyColor, fontSize: 10),
                      ),
                      index == 0
                          ? const badges.Badge(
                              badgeContent: Text(
                                '3',
                                style: TextStyle(
                                  color: kWhitecolor,
                                ),
                              ),
                              badgeStyle: badges.BadgeStyle(
                                badgeColor: colorbudge,
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          thickness: 0.9,
        );
      },
      itemCount: mainPageCircleController.personImages.length,
    );
  }
}
