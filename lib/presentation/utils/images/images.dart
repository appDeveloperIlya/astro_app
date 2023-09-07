import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:astro_app/presentation/_export.dart';

class AppImages {
  AppImages._();

  // bottom_navigation_bar
  static const ic_bottom_nav_bar_calendar = 'ic_bottom_nav_bar_calendar.svg';
  static const ic_bottom_nav_bar_affirmation = 'ic_bottom_nav_bar_affirmation.svg';
  static const ic_bottom_nav_bar_asceticism = 'ic_bottom_nav_bar_asceticism.svg';
  static const ic_bottom_nav_bar_calendar_filled = 'ic_bottom_nav_bar_calendar_filled.svg';
  static const ic_bottom_nav_bar_affirmation_filled = 'ic_bottom_nav_bar_affirmation_filled.svg';
  static const ic_bottom_nav_bar_asceticism_filled = 'ic_bottom_nav_bar_asceticism_filled.svg';

  static const img_bg_first = 'img_bg_first.webp';
  static const img_indicator = 'img_indicator.webp';
  static const img_effulgence = 'img_effulgence.webp';

  static const ic_arrow_right = 'ic_arrow_right.svg';
  static const ic_arrow_left = 'ic_arrow_left.svg';
  static const ic_add = 'ic_add.svg';
  static const ic_info = 'ic_info.svg';
  static const ic_menu_dots = 'ic_menu_dots.svg';
  static const ic_bell = 'ic_bell.svg';

  // _ERRORS ---------------------------------------------------------------- |
  static const _ASSET_IMAGE_ERROR = 'asset image not found in path';
  // ---------- |

  static Widget getAssetImage(
    String imageRes, {
    double height = AppDimens.icon_24,
    double? width,
    Color? color,
    BoxFit? fit,
  }) {
    try {
      return Image.asset(
        '${AppConst.WEBP_PATH}/$imageRes',
        width: width,
        height: height,
        color: color,
        fit: fit,
      );
    } catch (e) {
      debugPrint('$_ASSET_IMAGE_ERROR $imageRes');
      return const Icon(
        Icons.error,
        size: AppDimens.icon_16,
        color: Colors.black,
      );
    }
  }

  static Widget getAssetVectorImage(
    String iconRes, {
    double? width,
    double? height,
    BoxFit? fit,
    Key? key,
  }) {
    try {
      return SvgPicture.asset(
        '${AppConst.SVG_PATH}/$iconRes',
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        key: key,
      );
    } catch (e) {
      debugPrint('$_ASSET_IMAGE_ERROR $iconRes, $e');
      return Icon(
        Icons.error,
        size: AppDimens.icon_16,
        color: Colors.black,
        key: key,
      );
    }
  }
}
