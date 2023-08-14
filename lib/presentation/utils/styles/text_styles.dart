import 'dart:io';

import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class AppFonts {
  AppFonts._();

  ///region font family
  static String? _platformFontFamilyText;
  static String? _platformFontFamilyDisplay;

  static FontWeight? _platformSemiboldOrMedium;

  static String get platformFontFamilyText {
    _platformFontFamilyText ??= Platform.isIOS ? 'SFProText' : 'Roboto';
    return _platformFontFamilyText!;
  }

  static String get platformFontFamilyDisplay {
    _platformFontFamilyDisplay ??= Platform.isIOS ? 'SFProDisplay' : 'Roboto';
    return _platformFontFamilyDisplay!;
  }

  static FontWeight get platformSemiboldOrMedium {
    _platformSemiboldOrMedium ??= Platform.isIOS ? FontWeight.w600 : FontWeight.w500;
    return _platformSemiboldOrMedium!;
  }

  static const roboto = 'Roboto';

  ///endregion
}

class AppTextStyles {
  AppTextStyles._();

  ///region font dimens
  static const size_10 = 10.0;
  static const size_12 = 12.0;
  static const size_13 = 13.0;
  static const size_14 = 14.0;
  static const size_16 = 16.0;
  static const size_17 = 17.0;
  static const size_18 = 18.0;
  static const size_20 = 20.0;
  static const size_22 = 22.0;
  static const size_24 = 24.0;
  static const size_25 = 25.0;
  static const size_26 = 26.0;
  static const size_28 = 28.0;
  static const size_30 = 30.0;
  static const size_32 = 32.0;
  static const size_36 = 36.0;
  static const size_40 = 40.0;

  ///region letter spacing
  static const letter_spacing_05_positive = 0.5;
  static const letter_spacing_03_positive = 0.3;
  static const letter_spacing_0_positive = 0.0;
  static const letter_spacing_01_positive = 0.1;
  static const letter_spacing_025_positive = 0.25;
  static const letter_spacing_038_positive = 0.38;
  static const letter_spacing_008 = -0.08;
  static const letter_spacing_01 = -0.1;
  static const letter_spacing_02 = -0.2;
  static const letter_spacing_04 = -0.4;
  static const letter_spacing_05 = -0.5;

  static TextStyle h1({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.platformFontFamilyDisplay,
        letterSpacing: letter_spacing_0_positive,
        height: size_36 / size_28,
        fontSize: size_28,
        fontWeight: AppFonts.platformSemiboldOrMedium,
        color: color,
      );

  static TextStyle h2({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.platformFontFamilyDisplay,
        letterSpacing: letter_spacing_0_positive,
        height: size_30 / size_24,
        fontSize: size_24,
        fontWeight: AppFonts.platformSemiboldOrMedium,
        color: color,
      );

  static TextStyle h3({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.platformFontFamilyDisplay,
        letterSpacing: letter_spacing_0_positive,
        height: size_26 / size_20,
        fontSize: size_20,
        fontWeight: AppFonts.platformSemiboldOrMedium,
        color: color,
      );

  static TextStyle subtitle1({
    Color color = AppColors.text_primary,
    double height = size_24 / size_16,
  }) =>
      TextStyle(
        fontFamily: AppFonts.platformFontFamilyDisplay,
        letterSpacing: letter_spacing_0_positive,
        height: height,
        fontSize: size_16,
        fontWeight: AppFonts.platformSemiboldOrMedium,
        color: color,
      );

  static TextStyle subtitle4({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.platformFontFamilyDisplay,
        letterSpacing: letter_spacing_0_positive,
        height: size_14 / size_10,
        fontSize: size_10,
        fontWeight: AppFonts.platformSemiboldOrMedium,
        color: color,
      );
}
