import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class AffirmationScreen extends StatelessWidget {
  const AffirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AffirmationController>(
      init: AffirmationController(),
      builder: (ctr) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Text('affirmation'),
            ),
          ),
        );
      },
    );
  }
}
