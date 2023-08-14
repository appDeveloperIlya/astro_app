import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// brand color
  static const blue_violet = Color.fromRGBO(138, 43, 226, 1);
  static const brand_color_gradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromRGBO(138, 43, 226, 1),
      Color.fromRGBO(190, 98, 233, 1),
    ],
  );

  static const brand_color_gradient2 = LinearGradient(
    stops: [
      0.05,
      0.15,
      0.4,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment(0.1, -3),
    colors: [
      Color.fromRGBO(153, 124, 238, 1),
      Color.fromRGBO(181, 109, 232, 1),
      Color.fromRGBO(196, 100, 227, 1),
    ],
  );

  /// text
  static const text_primary = Color.fromRGBO(18, 18, 18, 1);
  static const text_secondary = Color.fromRGBO(60, 60, 67, 0.6);
  static const text_oncolor_primary = Color.fromRGBO(255, 255, 255, 1);
  static const text_oncolor_secondary = Color.fromRGBO(255, 255, 255, 0.6);
  static const text_highlight = Color.fromRGBO(150, 56, 227, 0.1);

  /// text field
  static const tf_label_default = Color.fromRGBO(60, 60, 67, 0.6);
  static const tf_label_focus = Color.fromRGBO(150, 56, 227, 1);
  static const tf_label_disabled = Color.fromRGBO(60, 60, 67, 0.2);
  static const tf_label_error = Color.fromRGBO(254, 65, 100, 1);
  static const tf_mask = Color.fromRGBO(60, 60, 67, 0.3);
  static const tf_input_text_filled = Color.fromRGBO(18, 18, 18, 1);
  static const tf_input_text_disabled = Color.fromRGBO(60, 60, 67, 0.2);
  static const tf_indicator_default = Color.fromRGBO(60, 60, 67, 0.3);
  static const tf_indicator_focus = Color.fromRGBO(150, 56, 227, 1);
  static const tf_indicator_error = Color.fromRGBO(254, 65, 100, 1);
}
