import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalendarController>(
      init: CalendarController(Get.find()),
      builder: (ctr) {
        return LayoutWrapper(
          isLoading: ctr.isLoading.value,
          child: Column(
            children: [
              Text('home_calendar'.tr),
              OutlinedButton(
                onPressed: ctr.getCalendar,
                child: Text(ctr.calendarValue.value),
              ),
            ],
          ),
        );
      },
    );
  }
}
