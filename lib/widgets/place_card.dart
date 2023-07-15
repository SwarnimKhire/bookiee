import 'dart:math';

import 'package:flutter/material.dart';
import 'package:saturday/screens/detail_page.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';

class PlaceCard extends StatefulWidget {
  PlaceCard(
      {super.key,
      required this.imgUrl,
      required this.rating,
      required this.title,
      required this.isWishlist});
  String imgUrl;
  String title;
  String rating;
  bool isWishlist = false;

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  double width = 188;
  double height = 240;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          final random = Random();
          width = random.nextInt(300).toDouble();
          height = random.nextInt(300).toDouble();
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailPage();
        }));
      },
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.all(15),
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
                image: AssetImage('assets/images/${widget.imgUrl}.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              height: 23,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(59), color: shadewhite),
              child: Text(
                widget.title,
                style: ftextStyle(12, whiteColor, FontWeight.w500),
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(59),
                      color: shadewhite),
                  child: Text(
                    '⭐ ${widget.rating}',
                    style: ftextStyle(10, whiteColor, FontWeight.w500),
                  ),
                ),
                const SizedBox(width: 70),
                widget.isWishlist
                    ? Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: const Text('❤️'),
                      )
                    : Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: const Text('🤎'),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
