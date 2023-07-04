import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:teleteam/core/constant.dart';
import 'package:badges/badges.dart' as badges;

import '../controller/bottom_nav_controller.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.bottomNavController,
  });

  final BottomNavController bottomNavController;

  @override
  Widget build(BuildContext context) {
    return  
    // Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 2),
    //   child: Material(
    //     elevation: 10,
    //     borderRadius: BorderRadius.circular(100),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(100),
    //       child:const  BottomAppBar(
    //         shape: CircularNotchedRectangle(),
    //         notchMargin: 1,
    //         height: 50,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    // );

    SnakeNavigationBar.color(
      
    behaviour:
     
       SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.indicator,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(10),
      snakeViewColor:
      kWhitecolor,
      elevation: 5,
      selectedItemColor: Colors.blue,
      unselectedItemColor:
      kBlackcolor,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: bottomNavController.currentIndex,
      onTap: (index) {
        bottomNavController.chageIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Image(
            color:
                bottomNavController.currentIndex == 0 ?
                Colors.blue :
                kBlackcolor,
            width: 30,
            image: const AssetImage('assets/bt1.png',),
          ),
          label: 'circle',
        ),
        BottomNavigationBarItem(
          icon: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -13, end: 4),
            badgeContent: const Text('3'),
            child: Image(
              color: bottomNavController.currentIndex == 1
                  ? Colors.blue
                  : kBlackcolor,
              image: const AssetImage('assets/bt2.png'),
            ),
          ),
          label: 'message',
        ),
        BottomNavigationBarItem(
          icon: Image(
            color:
                bottomNavController.currentIndex == 2 ? Colors.blue :
                kBlackcolor,
            image: const AssetImage('assets/bt3.png'),
          ),
          label: 'My Task',
        ),
        BottomNavigationBarItem(
          icon: Image(
            color:
                bottomNavController.currentIndex == 3 ? Colors.blue :
                kBlackcolor,
            image: const AssetImage('assets/bt4.png'),
          ),
          label: 'My List',
        ),
      ],
    );
  }
}
