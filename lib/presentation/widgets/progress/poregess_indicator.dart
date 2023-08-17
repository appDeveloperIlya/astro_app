// ignore_for_file: prefer_int_literals

import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  final double circleWidth;
  final double circleHeight;
  final String? iconRes;

  const ProgressIndicatorWidget({
    this.circleWidth = 30,
    this.circleHeight = 30,
    this.iconRes,
    super.key,
  });

  @override
  _ProgressIndicatorWidgetState createState() => _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> with TickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _rotationController.forward());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppDimens.icon_52,
        height: AppDimens.icon_52,
        child: Center(
          child: RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_rotationController)
              ..addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  _rotationController.reset();
                  _rotationController.forward();
                }
              }),
            child: AppImages.getAssetImage(
              widget.iconRes ?? AppImages.img_indicator,
              height: widget.circleHeight,
              width: widget.circleWidth,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }
}
