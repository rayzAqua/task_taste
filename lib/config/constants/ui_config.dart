import 'package:flutter/material.dart';

// * This class use for app default settings
class UiConfig {
  UiConfig._();

  static const String fontFamily = 'Poppins';

  // * Base design size from Figma (iPhone 14)
  static const Size designSize = Size(393, 852);

  // Splash Size
  static const double splashLogoFactor = 0.65;

  // Empty Size
  static const double emptyImageFactor = 0.85;

  // Logo Size
  static const double teamLogoSize = 50;
  static const double welcomeLogoFactor = 0.7;

  // Shadow
  static const Offset shadowOffset = Offset(0, 4.74);
  static const double shadowBlur = 4.74;
  static const double spreadRadius = 0;

  // Indicator
  static const double indicatorSize = 26;
  static const double strokeWidth = 2.5;

  // Text
  static const double textSize = 17;
  static const double fontHeight = 1.0;
  static const double letterSpacing = 0.0;
}
