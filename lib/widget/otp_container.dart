import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:teleteam/core/constant.dart';

class OtpContainer extends StatelessWidget {
  const OtpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: OtpTextField(focusedBorderColor: themecolor,
        textStyle: const TextStyle(color: themecolor,fontSize: 20,fontWeight: FontWeight.w700),
        numberOfFields: 4,
        borderColor: kTransparent,
        enabledBorderColor: Colors.black12,
        borderRadius: BorderRadius.circular(12),
        showFieldAsBox: true,
        fieldWidth: 60,
        onSubmit: (String verificationCode) {
          // data.sumbitOtp(value.phoneNo.text, context);
        },
      ),
    );
  }
}
