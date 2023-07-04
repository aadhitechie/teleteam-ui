import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controller/done_controller.dart';

class DoneScreen extends StatelessWidget {
   DoneScreen({super.key});
final doneController = Get.put(DoneController());
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      doneController.splashTimer();
    });
    return Scaffold(body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
        SvgPicture.asset('assets/done_group.svg'),
        const SizedBox(height: 30,),
        const Text('Done',style:  TextStyle(fontWeight: FontWeight.w600,fontSize: 16,fontFamily: 'CoCo-Sharp'),)
      ],),
    ),);
  }
}