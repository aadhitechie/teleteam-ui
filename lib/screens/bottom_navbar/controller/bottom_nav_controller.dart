import 'package:get/get.dart';
import 'package:teleteam/screens/dmchat/view/dm_chat_screen.dart';
import 'package:teleteam/screens/my_list_page/view/my_list_page.dart';
import 'package:teleteam/screens/my_task/view/my_task_screen.dart';

import '../../main_page/view/main_page_circle.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0;
    double height = Get.height;
  double width = Get.width;
  void chageIndex(int index) {
    currentIndex = index;
    update();
  }

  final page = [
    MainPageCirclesScreen(),
    DmchatScreen(),
     MyTaskScreen(),
     ScreenMyList(),
  ];

}