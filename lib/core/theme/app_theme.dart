import 'package:countries/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //Light theme:
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackground,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightBackground,
    ),
  );

  //Dark theme :
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackground,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBackground,
    ),
  );
}
