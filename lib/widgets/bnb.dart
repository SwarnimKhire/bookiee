import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:saturday/screens/detail_page.dart';
import 'package:saturday/screens/homepage.dart';
import 'package:saturday/utils/colors.dart';



Widget bnB({void Function(int)? ontap, required int selectedIndex}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(32),
    child: BottomNavigationBar(
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed, // Fixed
        elevation: 0,
        selectedItemColor: blueColor,
        unselectedItemColor:greyColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.heart),
            label: 'account',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'settings')
        ],
        currentIndex: selectedIndex, //New
  
        onTap: ontap),
  );
}

List<Widget> pageList = [
   HomePage(),
  const DetailPage(),
  
];
