
import 'package:flutter/material.dart';

class MyTheme{

  static Color primaryColor = Color(0xff3AA6B9);
  static Color blackColor = Color(0xff000000);
  static Color pinkColor = Color(0xffFF9EAA);
  static Color blueColor = Color(0xffA0DAE5);
  static Color redColor = Color(0xffC16D77);
  static Color lightpinkColor = Color(0xffFFD0D0);
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        fontWeight:FontWeight.bold,
        color: blackColor
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: blackColor,
      )
    )
  );
}