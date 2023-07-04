import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teleteam/core/constant.dart';
import 'package:teleteam/screens/chat_screen/controller/chat_controller.dart';
import 'package:teleteam/widget/show_alert_dialogue.dart';

class ChatScreenBottom extends StatelessWidget {
  const ChatScreenBottom({
    super.key,
    required this.height,
    required this.width,
    required this.chatController,
  });

  final double height;
  final double width;
  final ChatController chatController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 12,
            color: Color.fromRGBO(0, 0, 0, 0.16),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: BottomAppBar(
          height: 80,
          // shadowColor: kGreyColor,
          shape: const CircularNotchedRectangle(),
          elevation: 0,
          notchMargin: 5,
          color: kWhitecolor,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: IconButton(
                      onPressed: () {
                        sshowDialogForAddIcon(context);
                      },
                      icon: const Icon(
                        Icons.add,
                        color: kBlackcolor,
                        size: 30,
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: width * 0.7,
                      height: height * 0.05,
                      child: TextFormField(
                        onChanged: (value) {
                          chatController.changeTextIcon();
                        },
                        controller: chatController.chatBottomTextEditing,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {
                              sshowDialogForCameraIcon(context);
                            },
                            child: const Icon(
                              Icons.photo_camera_outlined,
                              color: Colors.black54,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          hintText: 'Type Message',
                          hintStyle: GoogleFonts.outfit(color: kGreyColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                const BorderSide(color: kGreyColor, width: 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  kWidth10,
                  SvgPicture.asset(
                    'assets/rec_icon.svg',
                    width: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
