import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class ElevatedButtonThemeConfig {
  ElevatedButtonThemeConfig._();

  static final ElevatedButtonThemeData theme = ElevatedButtonThemeData(
    style: ButtonStyle(
      // * TEXT
      textStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return TextStyle(
            fontFamily: 'Inter',
            color: TextColors.textButtonDisabled,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            height: 1.25.sp,
            letterSpacing: 0,
          );
        }
        return TextStyle(
          color: TextColors.textButtonPrimary,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          height: 1.25.sp,
          letterSpacing: 0,
        );
      }),
      // * COLOR
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return ButtonColors.buttonBackgroundDisabled;
        }
        return ButtonColors.buttonBackgroundPrimary;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return TextColors.textButtonDisabled;
        }
        return TextColors.textButtonPrimary;
      }),
      shadowColor: WidgetStatePropertyAll(Colors.transparent),
      overlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return Colors.transparent;
        }
        return AppColors.overlay;
      }),
      // * SHAPE
      alignment: Alignment.center,
      elevation: const WidgetStatePropertyAll(0.0),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      ),
      // * SIZE
      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      ),
      minimumSize: WidgetStatePropertyAll(Size(double.infinity, 48.h)),
    ),
  );
}
