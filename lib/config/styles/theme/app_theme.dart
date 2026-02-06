import 'package:flutter/material.dart';
import 'package:task_taste/config/styles/colors/background_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: BackgroundColors.backgroundPrimary,
  );
}
