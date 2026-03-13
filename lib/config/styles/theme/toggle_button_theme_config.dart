import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class ToggleButtonThemeConfig {
  ToggleButtonThemeConfig._();

  static final ToggleButtonsThemeData theme = ToggleButtonsThemeData(
    borderRadius: BorderRadius.circular(16.r),
    color: BasicColors.whiteCool,
    selectedColor: BasicColors.white,
    fillColor: ButtonColors.toggleButtonSelectedBackground,
    borderColor: BorderColors.toggleBorderDefault,
    selectedBorderColor: BorderColors.toggleBorderSelected,
    disabledColor: ButtonColors.toggleButtonBackgroundDisabled,
    disabledBorderColor: BorderColors.toggleBorderDisabled,
    hoverColor: AppColors.overlay,
    borderWidth: 1.w,
  );
}
