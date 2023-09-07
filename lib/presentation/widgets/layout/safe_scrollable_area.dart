import 'package:flutter/material.dart';

class SafeScrollableArea extends StatelessWidget {
  final Widget child;
  final ScrollController? controller;

  const SafeScrollableArea({
    required this.child,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          controller: controller,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: child,
          ),
        );
      },
    );
  }
}
