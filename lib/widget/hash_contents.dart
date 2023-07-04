import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:teleteam/screens/chat_screen/controller/chat_controller.dart';

import '../core/constant.dart';

// ignore: must_be_immutable
class HashContents extends StatelessWidget {
   HashContents({super.key});
ChatController chatController = Get.put(ChatController());
double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
                            child: SizedBox(
                              height: 35,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                  chatController.itemname.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: 116,
                                      height: height * 0.04,
                                      decoration: BoxDecoration(
                                        color: HexColor('#EFF7FF'),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          index == 1 ||index == 1*3
                                              ? '#Healthcare'
                                              : '#Announcement',
                                          style: const TextStyle(
                                              color: kBlackcolor, fontSize: 13),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
  }
}