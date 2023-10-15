import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';

class LayoutWrapper extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final AlignmentGeometry stackAlignment;
  final Color backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool useGradientBG;
  final bool hasProgress;
  final bool hasDecorationImage;
  final bool extendBodyBehindAppBar; // Позволяет фону пройти за AppBar

  const LayoutWrapper({
    required this.child,
    this.appBar,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.backgroundColor = Colors.transparent,
    this.resizeToAvoidBottomInset = true,
    this.useGradientBG = true,
    this.hasDecorationImage = false,
    this.hasProgress = true,
    this.extendBodyBehindAppBar = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: useGradientBG
          ? DecoratedBox(
              decoration: BoxDecoration(
                gradient: AppColors.main_bg,
                image: hasDecorationImage
                    ? DecorationImage(
                        alignment: Alignment.topLeft,
                        image: AssetImage('${AppConst.WEBP_PATH}/${AppImages.img_stars}'),
                      )
                    : null,
              ),
              child: SafeArea(child: child),
            )
          : SafeArea(
              child: SafeArea(child: child),
            ),
    );
  }
}
