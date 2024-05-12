import 'dart:ui';
import 'package:flutter/material.dart';
class MyTheme{
static Color primaryLight = Color(0xff6314A8);
static Color whiteColor = Color(0xffFFFFFF);
static Color blackColor = Color(0xff000000);
static Color offwhiteColor = Color(0xfffbf7f5);
static ThemeData lightTheme = ThemeData(
    textTheme : TextTheme(
      titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: whiteColor
      ),
      titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: blackColor
      ),
      titleSmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: blackColor
      ),
    )
);

}