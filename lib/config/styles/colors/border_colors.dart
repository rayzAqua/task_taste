import 'package:flutter/material.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class BorderColors {
  BorderColors._();

  static const Color borderButtonSecondary = BasicColors.grayMedium;

  static const Color inputBorderDefault = BasicColors.surfaceMuted;
  static const Color iputBorderFocused = BasicColors.brandNavy;
  static const Color inputBorderDisabled = BasicColors.grayBase;
  static const Color inputBorderError = StateColors.error;

  static const Color toggleBorderDefault = BasicColors.grayExtraLight;
  static const Color toggleBorderSelected = Colors.transparent;
  static const Color toggleBorderDisabled = BasicColors.grayBase;
}
