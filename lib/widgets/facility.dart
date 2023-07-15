import 'package:flutter/material.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';

class Facility extends StatelessWidget {
  Facility({super.key, required this.img, required this.title});
  String title;
  String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      alignment: Alignment.center,
      height: 74,
      width: 77,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: textfColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/$img.png'),
          const SizedBox(height: 5),
          Text(
            title,
            style: ftextStyle(10, const Color(0xffB8B8B8), FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
