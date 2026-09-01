import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData englishTheme = ThemeData(
  fontFamily: "cairo",
  colorScheme: .fromSeed(seedColor: Colors.black),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: AppColors.black,
    ),
    headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    bodyMedium: TextStyle(fontSize: 14, height: 2, color: AppColors.grey),
  ),
);

ThemeData arabicTheme = ThemeData(
  fontFamily: "raleway",
  colorScheme: .fromSeed(seedColor: Colors.black),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: AppColors.black,
    ),
    headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    bodyMedium: TextStyle(fontSize: 14, height: 2, color: AppColors.grey),
  ),
);
