import 'package:flutter/material.dart';
// lib/constants/app_theme.dart
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.accentPurple,
    hintColor: AppColors.accentGreen,
    scaffoldBackgroundColor: AppColors.offWhite,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.offWhite,
      iconTheme: IconThemeData(color: AppColors.accentPurple),
      titleTextStyle: TextStyle(
        color: AppColors.softBlack,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.softBlack),
      bodyMedium: TextStyle(color: AppColors.softBlack),
      displayLarge: TextStyle(color: AppColors.accentPurple, fontSize: 24),
      titleLarge: TextStyle(color: AppColors.softBlack, fontSize: 18),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.offWhite, backgroundColor: AppColors.accentPurple,   // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.accentGreen,
    ),
    //colorScheme: ColorScheme(background: AppColors.offWhite),


  );
}
