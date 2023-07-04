import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teleteam/core/constant.dart';


class MyListSearchWidget extends StatelessWidget {
  const MyListSearchWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        width: double.infinity,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: const Color.fromARGB(255, 230, 230, 230), width: 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Row(
            children: [
              SvgPicture.asset('assets/list_search_ic.svg',),
              kWidth5,
              const Text(
                'Health Care GP, Emergencies GP',
                style: TextStyle(color: 
                kGreyColor),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: 
                  kGreyColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
