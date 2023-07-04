import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/dmchat/controller/dm_chat_controller.dart';
import 'package:badges/badges.dart' as badge;

class DmChatListWidget extends StatelessWidget {
  const DmChatListWidget({
    super.key,
    required this.dmchatController,
  });

  final DmchatController dmchatController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Get.to(() => ScreenChat());
          },
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Stack(children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage(dmchatController.personImages[index]),
                    ),
                    Positioned(
                      left: 35,
                      top: 40,
                      right: 1,
                      bottom: 1,
                      child: badge.Badge(
                        badgeContent: const Text(
                          '',
                        ),
                        badgeStyle: badge.BadgeStyle(
                          badgeColor: index == 0 ||
                                  index == 2 ||
                                  index == 4 ||
                                  index == 5 ||
                                  index == 6
                              ? HexColor('#07FA02')
                              : kRedColor,
                        ),
                      ),
                    )
                  ]),
                  kWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            dmchatController.personName[index],
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
                                  ? 'We have two room available'
                                  : 'What have you done with the ER.',
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
                        index == 0 ? '11/19/23' : '12/08/23.',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            color: kGreyColor, fontSize: 10),
                      ),
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
      itemCount: dmchatController.personImages.length,
    );
  }
}
