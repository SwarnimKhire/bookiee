import 'package:flutter/material.dart';
import 'package:saturday/utils/texts.dart';

class Recommended extends StatelessWidget {
   Recommended({super.key, required this.imgUrl, required this.title});
  String title;
  String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 130,
      width: 166,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/$imgUrl.png',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 6),
          Text(
            ' $title',
            style: ftextStyle(14, Colors.black, FontWeight.w600),
          )
        ],
      ),
    );
  }
}
