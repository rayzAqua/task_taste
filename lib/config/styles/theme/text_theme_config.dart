import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors_module.dart';

class TextThemeConfig {
  TextThemeConfig._();

  static final TextTheme theme = TextTheme(
    /// DISPLAY
    displayLarge: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 57.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    displayMedium: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 45.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    displaySmall: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 36.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    /// HEADLINE
    headlineLarge: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 32.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
    ),

    headlineMedium: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 28.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    headlineSmall: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    /// TITLE
    titleLarge: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    titleMedium: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    titleSmall: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    /// BODY
    bodyLarge: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    bodyMedium: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    bodySmall: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    /// LABEL
    labelLarge: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    labelMedium: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),

    labelSmall: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 11.sp,
      fontWeight: FontWeight.w400,
      height: 1.25,
      letterSpacing: 0.0,
    ),
  );
}
