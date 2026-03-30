import 'package:flutter/material.dart';

import '../../config/styles/extensions/theme_colors.dart';

extension ContextExtensions on BuildContext {
  ThemeColors get colorExt => Theme.of(this).extension<ThemeColors>()!;
}
