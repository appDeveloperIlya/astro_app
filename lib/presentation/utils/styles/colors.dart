import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const text_primary = Color.fromRGBO(243, 237, 255, 1);
  static const tab_bar_bg = Color.fromRGBO(36, 42, 56, 0.9);
  static const for_body_text = Color.fromRGBO(11, 13, 85, 1);
  static const half_moon = Color.fromRGBO(74, 74, 103, 1);

  // black
  static const black_a = Color.fromRGBO(36, 42, 56, 0.7);
  static const black_b = Color.fromRGBO(46, 51, 81, 1);
  static const black_c = Color.fromRGBO(36, 42, 56, 0.6);

  // white
  static const white_a = Color.fromRGBO(255, 255, 255, 1);
  static const white_b = Color.fromRGBO(243, 237, 255, 1);
  static const white_c = Color.fromRGBO(255, 255, 255, 0.3);

  //violet
  static const violet_bg = Color.fromRGBO(134, 128, 203, 1);
  static const violet = Color.fromRGBO(85, 87, 182, 1);
  static const deepViolet = Color.fromRGBO(61, 64, 154, 1);

  // other
  static const bluescreen = Color.fromRGBO(98, 255, 246, 1);
  static const peach = Color.fromRGBO(249, 181, 190, 1);
  static const mint = Color.fromRGBO(121, 212, 207, 1);
  static const tab_bar_off = Color.fromRGBO(98, 112, 146, 1);
  static const asceticism_card = Color.fromRGBO(36, 42, 56, 0.7);

  // gradient
  static const moon = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromRGBO(238, 253, 255, 1),
      Color.fromRGBO(151, 188, 197, 1),
    ],
  );

  static const astro = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromRGBO(133, 144, 255, 1),
      Color.fromRGBO(143, 255, 249, 1),
    ],
  );

  static const main_bg = LinearGradient(
    colors: [
      Color.fromRGBO(134, 128, 203, 1),
      Color.fromRGBO(134, 128, 203, 1),
      Color.fromRGBO(134, 128, 203, 0.9),
      Color.fromRGBO(139, 193, 205, 1),
    ],
  );
}
