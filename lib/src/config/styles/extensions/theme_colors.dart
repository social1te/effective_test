import 'package:effective_test_app/src/config/styles/colors.dart';
import 'package:flutter/material.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors._({
    required this.accentColor,
    required this.primaryBackgroundColor,
    required this.secondaryBackgroundColor,
    required this.positiveIndicatorColor,
    required this.negativeIndicatorColor,
    required this.unknownIndicatorColor,
  });

  factory ThemeColors.light() => ThemeColors._(
    accentColor: AppColors.guacamole,
    primaryBackgroundColor: Colors.white,
    secondaryBackgroundColor: AppColors.snowWhite,
    positiveIndicatorColor: AppColors.wageningenGreen,
    negativeIndicatorColor: AppColors.supremeRed,
    unknownIndicatorColor: AppColors.oldSilver,
  );

  factory ThemeColors.dark() => ThemeColors._(
    accentColor: AppColors.guacamole,
    primaryBackgroundColor: AppColors.charcoalBlack,
    secondaryBackgroundColor: AppColors.raisinBlack,
    positiveIndicatorColor: AppColors.wageningenGreen,
    negativeIndicatorColor: AppColors.supremeRed,
    unknownIndicatorColor: AppColors.oldSilver,
  );

  final Color accentColor;
  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;
  final Color positiveIndicatorColor;
  final Color negativeIndicatorColor;
  final Color unknownIndicatorColor;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? accentColor,
    Color? primaryBackgroundColor,
    Color? secondaryBackgroundColor,
    Color? positiveIndicatorColor,
    Color? negativeIndicatorColor,
    Color? unknownIndicatorColor,
  }) {
    return ThemeColors._(
      accentColor: accentColor ?? this.accentColor,
      primaryBackgroundColor:
          primaryBackgroundColor ?? this.primaryBackgroundColor,
      secondaryBackgroundColor:
          secondaryBackgroundColor ?? this.secondaryBackgroundColor,
      positiveIndicatorColor:
          positiveIndicatorColor ?? this.positiveIndicatorColor,
      negativeIndicatorColor:
          negativeIndicatorColor ?? this.negativeIndicatorColor,
      unknownIndicatorColor:
          unknownIndicatorColor ?? this.unknownIndicatorColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors._(
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      primaryBackgroundColor: Color.lerp(
        primaryBackgroundColor,
        other.primaryBackgroundColor,
        t,
      )!,
      secondaryBackgroundColor: Color.lerp(
        secondaryBackgroundColor,
        other.secondaryBackgroundColor,
        t,
      )!,
      positiveIndicatorColor: Color.lerp(
        positiveIndicatorColor,
        other.positiveIndicatorColor,
        t,
      )!,
      negativeIndicatorColor: Color.lerp(
        negativeIndicatorColor,
        other.negativeIndicatorColor,
        t,
      )!,
      unknownIndicatorColor: Color.lerp(
        unknownIndicatorColor,
        other.unknownIndicatorColor,
        t,
      )!,
    );
  }

  static ThemeColors of(BuildContext context) =>
      Theme.of(context).extension<ThemeColors>()!;
}
