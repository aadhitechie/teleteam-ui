import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';

class AddListButtonWidget extends StatelessWidget {
  const AddListButtonWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(themecolor),
        fixedSize: MaterialStateProperty.all(
          Size(width * 0.9, height * 0.06),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(color: themecolor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: () {},
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Create',
          ),
          kWidth10,
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
