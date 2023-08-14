import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (ctr) {
        return Scaffold(
          body: SizedBox(
            width: context.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Onboarding'),
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
