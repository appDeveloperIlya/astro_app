import 'package:astro_app/presentation/_export.dart';
import 'package:flutter/material.dart';

class LayoutWrapper extends StatelessWidget {
  final Widget child;
  final AlignmentGeometry stackAlignment;
  final Color backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool isLoading;
  final bool hasProgress;

  const LayoutWrapper({
    required this.child,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.backgroundColor = Colors.transparent,
    this.resizeToAvoidBottomInset = true,
    this.isLoading = false,
    this.hasProgress = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.main_bg,
        ),
        child: SafeArea(
          child: IgnorePointer(
            ignoring: isLoading && hasProgress,
            child: Stack(
              fit: StackFit.expand,
              alignment: stackAlignment,
              children: [
                child,
                if (isLoading && hasProgress) ProgressIndicatorWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
