import 'package:flutter/material.dart';

class AttachementsWidgets extends StatelessWidget {
  const AttachementsWidgets({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.attach_file),
          SizedBox(
            width: width * 0.1,
          ),
          const Flexible(
            child: Text(
              'Attachemets ( Ooptional)',
            ),
          )
        ],
      ),
    );
  }
}
