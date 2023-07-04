import 'package:flutter/material.dart';
import 'package:teleteam/core/constant.dart';


class AssignessTextWidget extends StatelessWidget {
  const AssignessTextWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.people_alt_outlined),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Assignees',
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
