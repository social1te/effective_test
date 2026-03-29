import 'package:effective_test_app/src/config/styles/colors.dart';
import 'package:effective_test_app/src/config/styles/extensions/theme_colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  const AppThemes._();

  static final light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.cultured,
    extensions: [
      ThemeColors.light(),
    ]
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.raisinBlack,
    extensions: [
      ThemeColors.dark(),
    ]
  );
}
