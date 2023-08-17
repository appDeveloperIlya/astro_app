import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';

class LayoutImgWrapper extends StatelessWidget {
  final Widget child;
  final Widget? backgroundImage;
  final bool isLoading;
  final bool hasProgress;
  final AlignmentGeometry stackAlignment;
  final bool resizeToAvoidBottomInset;

  const LayoutImgWrapper({
    required this.child,
    required this.backgroundImage,
    this.isLoading = false,
    this.hasProgress = false,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.resizeToAvoidBottomInset = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Stack(
        children: [
          Positioned.fill(child: backgroundImage!),
          SafeArea(
            child: IgnorePointer(
              ignoring: isLoading && hasProgress,
              child: child,
            ),
          ),
          if (isLoading && hasProgress) ProgressIndicatorWidget()
        ],
      ),
    );
  }
}
