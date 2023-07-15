import 'package:flutter/material.dart';
import 'package:saturday/utils/colors.dart';
import 'package:saturday/utils/texts.dart';

Widget ftextField({required TextEditingController controller}) {
  return Container(
    
    height: 52,
    width: 340,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24), color: textfColor),
    // Use a Material design search bar
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Find things to do',
        hintStyle: ftextStyle(13, greyColor, FontWeight.w400),
        border: InputBorder.none,
        // Add a clear button to the search bar
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => controller.clear(),
        ),
        // Add a search icon or button to the search bar
        prefixIcon: IconButton(
          icon: const Icon(Icons.search_rounded, color: greyColor, size: 25),
          onPressed: () {
            // Perform the search here
          },
        ),
      ),
    ),
  );
}
