import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalendarController>(
      init: CalendarController(),
      builder: (ctr) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Text('Calendar'),
            ),
          ),
        );
      },
    );
  }
}
