import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class AppFonts {
  AppFonts._();

  static const inter = 'Inter';
  static const sf_compact_display = 'SFComactDisplay';
  static const sf_pro_display = 'SFProDisplay';

  ///endregion
}

class AppTextStyles {
  AppTextStyles._();

  ///region font dimens
  static const size_10 = 10.0;
  static const size_12 = 12.0;
  static const size_13 = 13.0;
  static const size_14 = 14.0;
  static const size_15 = 15.0;
  static const size_16 = 16.0;
  static const size_17 = 17.0;
  static const size_18 = 18.0;
  static const size_20 = 20.0;
  static const size_22 = 22.0;
  static const size_23 = 23.0;
  static const size_24 = 24.0;
  static const size_25 = 25.0;
  static const size_26 = 26.0;
  static const size_27 = 27.0;
  static const size_28 = 28.0;
  static const size_30 = 30.0;
  static const size_32 = 32.0;
  static const size_33 = 33.0;
  static const size_34 = 34.0;
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
    Color color = AppColors.white_a,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_05,
        height: size_40 / size_34,
        fontSize: size_34,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static TextStyle h2({
    Color color = AppColors.white_b,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_33 / size_28,
        fontSize: size_28,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static TextStyle h3({
    Color color = AppColors.white_a,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_27 / size_23,
        fontSize: size_23,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static TextStyle h4({
    Color color = AppColors.for_body_text,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_23 / size_20,
        fontSize: size_20,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle inter_500({
    Color color = AppColors.mint,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_compact_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_14 / size_12,
        fontSize: size_12,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static TextStyle inter_400({
    Color color = AppColors.mint,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_compact_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_18 / size_15,
        fontSize: size_15,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle m_numb({
    Color color = AppColors.white_b,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_15 / size_13,
        fontSize: size_13,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle body({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_compact_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_20 / size_17,
        fontSize: size_17,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle body_mediun({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_17 / size_15,
        fontSize: size_15,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle body_mediun_SB({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_18 / size_15,
        fontSize: size_15,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle body_small({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_14 / size_12,
        fontSize: size_12,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle body_small_medium({
    Color color = AppColors.text_primary,
  }) =>
      TextStyle(
        fontFamily: AppFonts.sf_pro_display,
        letterSpacing: letter_spacing_0_positive,
        height: size_14 / size_12,
        fontSize: size_12,
        fontWeight: FontWeight.w500,
        color: color,
      );
}
