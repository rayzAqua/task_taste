import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class InputDecorationThemeConfig {
  InputDecorationThemeConfig._();

  static final InputDecorationTheme theme = InputDecorationTheme(
    filled: true,
    fillColor: BackgroundColors.backgroundInputField,
    // * TEXT
    hintStyle: _hintStyle,
    labelStyle: _labelStyle,
    errorStyle: _errorStyle,

    // * LAYOUT
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),

    // * BORDER
    border: _borderDefault,
    enabledBorder: _borderDefault,
    focusedBorder: _borderFocused,
    errorBorder: _borderError,
    focusedErrorBorder: _borderError,
    disabledBorder: _borderDisabled,

    // * ICON
    prefixIconColor: IconColors.iconPrimary,
    suffixIconColor: IconColors.iconPrimary,
  );

  static final TextStyle _hintStyle = TextStyle(
    color: TextColors.hintPrimary,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
  );

  static final TextStyle _labelStyle = TextStyle(
    color: TextColors.textPrimary,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
  );

  static final TextStyle _errorStyle = TextStyle(
    color: TextColors.textError,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0,
  );

  static final OutlineInputBorder _borderDefault = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide(
      color: BorderColors.inputBorderDefault,
      width: 1.18.w,
    ),
  );

  static final OutlineInputBorder _borderFocused = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide(
      color: BorderColors.iputBorderFocused,
      width: 1.18.w,
    ),
  );

  static final OutlineInputBorder _borderError = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide(color: BorderColors.inputBorderError, width: 1.18.w),
  );

  static final OutlineInputBorder _borderDisabled = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide(
      color: BorderColors.inputBorderDisabled,
      width: 1.18.w,
    ),
  );
}
