import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:astro_app/presentation/_export.dart';

class AppImages {
  AppImages._();

  // bottom_navigation_bar
  static const ic_home_unselected = 'ic_home_unselected.svg';

  // _ERRORS ---------------------------------------------------------------- |
  static const _ASSET_IMAGE_ERROR = 'asset image not found in path';
  // ---------- |

  static Widget getAssetImage(
    String iconRes, {
    double height = AppDimens.icon_24,
    double? width,
    Color? color,
    BoxFit? fit,
  }) {
    try {
      return Image.asset(
        '${AppConst.WEBP_PATH}/$iconRes',
        width: width,
        height: height,
        color: color,
        fit: fit,
      );
    } catch (e) {
      debugPrint('$_ASSET_IMAGE_ERROR $iconRes');
      return const Icon(
        Icons.error,
        size: AppDimens.icon_16,
        color: Colors.black,
      );
    }
  }

  static Widget getAssetVectorImage(
    String imageRes, {
    double? width,
    double? height,
    BoxFit? fit,
    Key? key,
  }) {
    try {
      return SvgPicture.asset(
        '${AppConst.SVG_PATH}/$imageRes',
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        key: key,
      );
    } catch (e) {
      debugPrint('$_ASSET_IMAGE_ERROR $imageRes, $e');
      return Icon(
        Icons.error,
        size: AppDimens.icon_16,
        color: Colors.black,
        key: key,
      );
    }
  }
}
