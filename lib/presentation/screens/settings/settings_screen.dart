import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (ctr) {
        return Scaffold(
          body: SizedBox(
            width: context.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Settings'),
                ElevatedButton(
                  onPressed: () => Get.offAllNamed(
                    Routes.app,
                    arguments: 'Splash EXIEtD',
                  ),
                  child: const Text('got back'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
