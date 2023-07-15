import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle ftextStyle(
  double size,
  Color color,
  FontWeight weight,
) {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: size, color: color , fontWeight: weight),
  );
}