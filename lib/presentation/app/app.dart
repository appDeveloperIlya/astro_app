import 'package:flutter/material.dart';
import 'package:astro_app/presentation/_export.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (ctr) {
        return Scaffold(
          bottomNavigationBar: _AppBottomNavigationBar(
            tabIndex: ctr.tabIndex.value,
            onTap: ctr.changeTabIndex,
          ),
          body: IndexedStack(
            index: ctr.tabIndex.value,
            children: [
              CalendarScreen(),
              AffirmationScreen(),
              AsceticismScreen(),
            ],
          ),
        );
      },
    );
  }
}

class _AppBottomNavigationBar extends BottomNavigationBar {
  final int tabIndex;

  _AppBottomNavigationBar({
    required this.tabIndex,
    super.onTap,
  }) : super(
          currentIndex: tabIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.home,
                  size: 20.0,
                ),
              ),
              label: 'home_calendar'.tr,
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.search,
                  size: 20.0,
                ),
              ),
              label: 'home_affirmation'.tr,
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 7),
                child: Icon(
                  Icons.location_history,
                  size: 20.0,
                ),
              ),
              label: 'home_asceticism'.tr,
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
          ],
        );
}
