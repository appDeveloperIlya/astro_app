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
          selectedFontSize: AppDimens.bottom_nav_bar_letters,
          unselectedFontSize: AppDimens.bottom_nav_bar_letters,
          iconSize: AppDimens.icon_22,
          currentIndex: tabIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.tab_bar_bg,
          unselectedItemColor: AppColors.tab_bar_off,
          selectedItemColor: AppColors.mint,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: AppDimens.bottom_nav_bar_6,
                  bottom: AppDimens.bottom_nav_bar_6,
                ),
                child: AppImages.getAssetVectorImage(AppImages.ic_bottom_nav_bar_calendar),
              ),
              label: 'home_calendar'.tr,
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: AppDimens.bottom_nav_bar_6,
                  bottom: AppDimens.bottom_nav_bar_6,
                ),
                child: AppImages.getAssetVectorImage(AppImages.ic_bottom_nav_bar_affirmation),
              ),
              label: 'home_affirmation'.tr,
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: AppDimens.bottom_nav_bar_6,
                  bottom: AppDimens.bottom_nav_bar_6,
                ),
                child: AppImages.getAssetVectorImage(AppImages.ic_bottom_nav_bar_asceticism),
              ),
              label: 'home_asceticism'.tr,
              backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
            ),
          ],
        );
}
