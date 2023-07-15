import 'dart:math';

import 'package:flutter/material.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';
import 'package:saturday/widgets/category.dart';
import 'package:saturday/widgets/place_card.dart';
import 'package:saturday/widgets/recom.dart';
import 'package:saturday/widgets/textfields.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 44),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: ftextStyle(14, Colors.black, FontWeight.w500),
                ),
                const Spacer(),
                const Icon(Icons.location_on, color: blueColor, size: 16),
                const SizedBox(width: 6),
                Text(
                  'Aspen,USA',
                  style: ftextStyle(12, Colors.black, FontWeight.w500),
                ),
                const SizedBox(width: 6),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: blueColor,
                  size: 16,
                ),
              ],
            ),
            Text(
              'Aspen',
              style: ftextStyle(32, Colors.black, FontWeight.w500),
            ),
            const SizedBox(height: 24),
            Center(child: ftextField(controller: searchController)),
            const SizedBox(height: 32),
            SizedBox(
              height: 41,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category(title: 'Location'),
                  Category(title: 'Hotels'),
                  Category(title: 'Food'),
                  Category(title: 'Adventure'),
                  Category(title: 'Entertain')
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Popular',
              style: ftextStyle(18, Colors.black, FontWeight.w600),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 242,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  PlaceCard(
                    imgUrl: 'alley',
                    rating: '4.5',
                    title: 'Alley Place',
                    isWishlist: true,
                  ),
                  PlaceCard(
                      imgUrl: 'green',
                      rating: '4.0',
                      title: 'Coeurdes Alpes',
                      isWishlist: false),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Recommended',
              style: ftextStyle(18, Colors.black, FontWeight.w600),
            ),
            SizedBox(height: 16),
           SizedBox(
            height: 175 ,
             child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Recommended(imgUrl: 'ital', title: 'Explore Aspen'),
              Recommended(imgUrl: 'ice', title: 'Luxurious Aspen'),
              Recommended(imgUrl: 'ital', title: 'Explore Aspen'),
              Recommended(imgUrl: 'ice', title: 'Luxurious Aspen'),
              ],),
           ),
          ],
        ),
      ),
    );
  }
}
