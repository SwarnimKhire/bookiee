import 'package:flutter/material.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';
import 'package:saturday/widgets/facility.dart';
import 'package:saturday/widgets/mainbutton.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 390,
              width: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                image: const DecorationImage(
                  image: AssetImage('assets/images/detail.png'),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32.0,
                      left: 12,
                      right: 283,
                    ),
                    child: InkWell(
                      onTap: ()=> Navigator.pop(context),
                      child: Image.asset('assets/images/back.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 5.0, left: 250, top: 240, bottom: 21),
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: const Text('❤️'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Coeurdes Alpes',
              style: ftextStyle(24, Colors.black, FontWeight.w500),
            ),
            const SizedBox(height: 6),
            Text(
              '⭐ 4.5 (355 Reviews)',
              style: ftextStyle(12, shadewhite, FontWeight.w600),
            ),
            const SizedBox(height: 6),
            Text(
              'Aspen is as close as one can get to alpine town in America. The choose adventure possibilities -- skiing, hiking, shopping...',
              style: ftextStyle(14, Colors.black, FontWeight.w500),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                  text: 'Read More',
                  style:
                      ftextStyle(14, const Color(0xff176FF2), FontWeight.w500),
                  children: const <WidgetSpan>[
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: Color(0xff176FF2),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 32),
            Text(
              'Facilities',
              style: ftextStyle(18, Colors.black, FontWeight.w500),
            ),
            const SizedBox(height: 16),
           SizedBox(
            height: 75,
             child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                  Facility(img: 'wifi', title: 'Wifi'),
                  Facility(img: 'food', title: 'Food'),
                  Facility(img: 'tub', title: '1 Tub'),
                  Facility(img: 'Frame', title: 'Pool'),
             ],),
           ),
           SizedBox(height: 28),
           Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              
              children: [
              Padding(
                padding: const EdgeInsets.only(right:20.0, left: 2),
                child: Text('Price', style: ftextStyle(10, Colors.black, FontWeight.w600),),
              ),
              SizedBox(height: 8),
              Text('\$199', style: ftextStyle(24, greenColor, FontWeight.w700),),
            ],),
            SizedBox(width: 56),
            mainButton(color: blueColor, textStyle: ftextStyle(16, whiteColor, FontWeight.w500), width: 226, height: 56, title: 'Book Now', icon: Icons.arrow_forward,),
            
            
           ],)
          ],
        ),
      ),
    );
  }
}
