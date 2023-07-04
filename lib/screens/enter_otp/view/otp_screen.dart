import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleteam/screens/done/view/done_screen.dart';
import 'package:teleteam/widget/elevatedbtn.dart';
import 'package:teleteam/widget/otp_container.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const Center(
            child: Text(
              'Enter OTP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,fontFamily: 'CoCo-Sharp'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter the OTP we just sent to your phone',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.5,fontFamily: 'CoCo-Sharp'),
          ),
          const Text('then start reset your new password',
              style: TextStyle(fontFamily: 'CoCo-Sharp',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5)),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 350,
            child: OtpContainer()
          ),
          const SizedBox(
            height: 20,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Resend OTP in',style: TextStyle(fontFamily: 'CoCo-Sharp'),),
              // Countdown(
              //     seconds: 20,
              //     build: (BuildContext context, double time) =>
              //         Text(time.toString()),
              //     interval: Duration(milliseconds: 100),
              //     onFinished: () {
              //       print('Timer is done!');
              //     })
            ],
          ),
          const SizedBox(
            height: 300,
          ),
          InkWell(
            onTap: () {
              Get.to(() =>  DoneScreen());
            },
            child: const ElevatedBtn(
              btntitle: 'Next',
            ),
          )
        ],
      ),
    );
  }
}
