import 'package:flutter/material.dart';
import 'package:task_taste/config/styles/colors/colors_module.dart';
import 'package:task_taste/config/styles/theme/theme_module.dart';

class LightTheme {
  LightTheme._();

  static ThemeData build() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      brightness: Brightness.light,
      scaffoldBackgroundColor: BackgroundColors.backgroundPrimary,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        error: StateColors.error,
      ),
      appBarTheme: AppBarThemeConfig.theme,
      iconTheme: IconThemeConfig.theme,
      elevatedButtonTheme: ElevatedButtonThemeConfig.theme,
      inputDecorationTheme: InputDecorationThemeConfig.theme,
      textSelectionTheme: TextSelectionThemeConfig.theme,
      textTheme: TextThemeConfig.theme,
      dividerColor: ElementColors.dividerPrimary,
      toggleButtonsTheme: ToggleButtonThemeConfig.theme,
    );
  }
}
