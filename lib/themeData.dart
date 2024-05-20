// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeLight {
  static const Color primary = Color.fromARGB(228, 206, 187, 13);
  static const Color blackColor = Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
     textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: primary,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
      bodySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      foregroundColor: Color(0xff242424),
    ),
  );
}
