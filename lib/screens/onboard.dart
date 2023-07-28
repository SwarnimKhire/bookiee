import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saturday/screens/homepage.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';
import 'package:saturday/widgets/mainbutton.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/img1.png',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 25,
            child: Text(
              'Aspen',
              style: GoogleFonts.corben(
                  textStyle: const TextStyle(
                      fontSize: 115,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.white)),
            ),
          ),
          Positioned(
              top: 530,
              left: 40,
              child: Text(
                'Plan your',
                style: ftextStyle(24, whiteColor, FontWeight.w400),
              )),
          Positioned(
              top: 550,
              left: 40,
              child: Text(
                'Luxurious\nVacation',
                style: ftextStyle(40, whiteColor, FontWeight.w600),
              )),
          Positioned(
              top: 690,
              left: 40,
              child: mainButton(
                  color: blueColor,
                  textStyle: ftextStyle(16, whiteColor, FontWeight.w500),
                  width: 312,
                  height: 52,
                  title: 'Explore',
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  HomePage()));
                  })),
        ],
      ),
    );
  }
}
