import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {super.key, required this.hintText, required this.icon, this.icon2});
  final String hintText;
  final Widget icon;
  final Widget? icon2;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 380,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 0.5), //(x,y)
                blurRadius: 0.5)
          ],
          color: kWhitecolor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          children: [
            kWidth10,
            icon,
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: kWhitecolor, elevation: 0.0),
              child: Text(hintText),
            ),
            const Spacer(),
            icon2!
          ],
        ));
  }
}
