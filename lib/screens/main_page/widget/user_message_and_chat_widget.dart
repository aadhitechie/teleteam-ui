import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';

class UserMessageAndChatDetails extends StatelessWidget {
  const UserMessageAndChatDetails({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: width * 0.3,
          height: height * 0.16,
          decoration: BoxDecoration(
            color: kWhitecolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                const Image(image: AssetImage('assets/bt2.png')),
                kHeight10,
                const Text(
                  'Messages',
                  style: TextStyle(color: kGreyColor, fontSize: 12),
                ),
                kHeight10,
                RichText(
                  text: const TextSpan(
                    text: '100+',
                    style: TextStyle(color: Colors.blue, fontSize: 8),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'New Message',
                        style: TextStyle(
                          fontSize: 8,
                          color: kBlackcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                kHeight5,
                  SizedBox(
                  width: 100,
                  child: Stack(
                    children: [
                      Image(image: AssetImage('assets/edit_stack_image1.png')),
                      Positioned(
                          left: 10,
                          child: Image(
                              image:
                                  AssetImage('assets/edit_stack_image2.png'))),
                      Positioned(
                          left: 20,
                          child: Image(
                              image:
                                  AssetImage('assets/edit_stack_image3.png')))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: width * 0.3,
          height: height * 0.15,
          decoration: BoxDecoration(
            color: kWhitecolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                const Image(image: AssetImage('assets/bt1.png')),
                kHeight10,
                const Text(
                  'Messages',
                  style: TextStyle(color: kGreyColor, fontSize: 12),
                ),
                kHeight5,
                RichText(
                  text: const TextSpan(
                    text: '100+',
                    style: TextStyle(color: Colors.blue, fontSize: 8),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'New Message',
                        style: TextStyle(
                          fontSize: 8,
                          color: kBlackcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                kHeight5,
                 SizedBox(
                  width: 100,
                  child: Stack(
                    children: [
                      Image(image: AssetImage('assets/edit_stack_image1.png')),
                      Positioned(
                          left: 10,
                          child: Image(
                              image:
                                  AssetImage('assets/edit_stack_image2.png'))),
                      Positioned(
                          left: 20,
                          child: Image(
                              image:
                                  AssetImage('assets/edit_stack_image3.png')))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
