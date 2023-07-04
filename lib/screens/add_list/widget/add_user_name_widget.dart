import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';

class AddUserNameWidget extends StatelessWidget {
  const AddUserNameWidget({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.person_add_alt_outlined,
          color: kBlackcolor,
        ),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: const TextStyle(
                  color: kGreyColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}