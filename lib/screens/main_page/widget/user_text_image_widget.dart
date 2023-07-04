import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';



class UserTextAndImageWidget extends StatelessWidget {
  const UserTextAndImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                'Welcome Back !',
                style: TextStyle(color: 
                kWhitecolor),
              ),
              Text(
                'Ahamed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kWhitecolor,
                ),
              ),
              kHeight5,
              Text(
                'This is a summary when you was offline.',
                style: TextStyle(color: kWhitecolor, fontSize: 10),
              )
            ],
          ),
           CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/Oval.png'),
          )
        ],
      ),
    );
  }
}
