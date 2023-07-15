import 'package:flutter/material.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';

class Category extends StatefulWidget {
  Category({super.key,  required this.title});
  String title;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  Color color = Colors.transparent;
  Color tcolor = greyColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          color = textfColor;
          tcolor = blueColor;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 18),
        alignment: Alignment.center,
        width: 88,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33), color: color),
        child: Text(
          widget.title,
          style: ftextStyle(14, tcolor, FontWeight.w700),
        ),
      ),
    );
  }
}
