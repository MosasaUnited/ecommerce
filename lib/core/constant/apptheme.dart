import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: 'PlayfairDisplay',
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: AppColor.black,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.black,
    ),
    bodyLarge: TextStyle(
      height: 2,
      fontSize: 17,
      color: AppColor.grey,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle(
      height: 2,
      fontSize: 13,
      color: AppColor.grey,
    ),
  ),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: AppColor.black,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.black,
    ),
    bodyLarge: TextStyle(
      height: 2,
      fontSize: 17,
      color: AppColor.grey,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle(
      height: 2,
      fontSize: 13,
      color: AppColor.grey,
    ),
  ),
  primarySwatch: Colors.blue,
);
