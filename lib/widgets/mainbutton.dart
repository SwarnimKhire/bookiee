import 'package:flutter/material.dart';
import 'package:saturday/utils/colors.dart';

Widget mainButton(
    {required Color color,
    required TextStyle textStyle,
    required double width,
    required double height,
    required String title,
    void Function()? ontap,
    IconData? icon,
    }) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: textStyle,
          ),
          SizedBox(width: 6),
          Icon(icon, color: whiteColor,),
        ],
      ),
    ),
  );
}
