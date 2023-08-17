import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class AsceticismScreen extends StatelessWidget {
  const AsceticismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AsceticismController>(
      init: AsceticismController(),
      builder: (ctr) {
        return LayoutWrapper(
          child: Center(
            child: Text('home_asceticism'.tr),
          ),
        );
      },
    );
  }
}
