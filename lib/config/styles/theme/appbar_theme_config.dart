import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class AppBarThemeConfig {
  AppBarThemeConfig._();

  static final AppBarTheme theme = AppBarTheme(
    backgroundColor: BackgroundColors.backgroundPrimary,
    foregroundColor: IconColors.iconPrimary,
    elevation: 0.0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: TextColors.textPrimary,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      height: 1.25,
      letterSpacing: 0,
    ),
  );
}
