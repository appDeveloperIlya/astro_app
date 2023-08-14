import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (ctr) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Text('Onboarding'),
            ),
          ),
        );
      },
    );
  }
}
