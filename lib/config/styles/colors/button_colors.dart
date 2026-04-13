import 'package:flutter/material.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';

class ButtonColors {
  ButtonColors._();

  static const Color buttonBackgroundPrimary = BasicColors.brandNavy;
  static const Color buttonBackgroundPrimaryDisabled =
      BasicColors.brandNavySoft;
  static const Color buttonBackgroundSecondary = BasicColors.aliceBlue;
  static const Color buttonBackgroundDisabled = BasicColors.graySoftLight;

  static const Color toggleButtonDefaultBackground = BasicColors.grayLight;
  static const Color toggleButtonSelectedBackground = BasicColors.royalBlue;
  static const Color toggleButtonBackgroundDisabled = BasicColors.grayBase;

  static const Color buttonOverlay = BasicColors.white10;
}
