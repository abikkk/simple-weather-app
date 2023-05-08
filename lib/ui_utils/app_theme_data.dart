import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData appThemeData = ThemeData(
    iconTheme: const IconThemeData(color: Colors.black),
      textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 10,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 16,
    ),
    displayMedium: TextStyle(
      fontSize: 18,
    ),
    displayLarge: TextStyle(
      fontSize: 20,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
  ));
}
