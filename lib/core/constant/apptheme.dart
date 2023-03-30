import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(
  //fontfamily
  appBarTheme: AppBarTheme(color: Appcolor.primarycolor1),
  textTheme: const TextTheme( headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Appcolor.primarycolor1),
        bodyText1: TextStyle(fontSize: 17, color: Appcolor.primarycolor1),)
);


ThemeData themeArabic = ThemeData(
  //fontfamily
  textTheme: const TextTheme( headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Appcolor.primarycolor3),
        bodyText1: TextStyle(fontSize: 17, color: Appcolor.primarycolor1),)
);
