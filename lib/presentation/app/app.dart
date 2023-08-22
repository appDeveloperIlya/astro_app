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
            tabIndex: ctr.selectedTab.value.selectedIndex,
            onTap: ctr.changeTabIndex,
          ),
          body: IndexedStack(
            index: ctr.selectedTab.value.selectedIndex,
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
            _AppBottomNavBarItem(type: BottomNavBarItemType.CALENDAR),
            _AppBottomNavBarItem(type: BottomNavBarItemType.AFFIRMATION),
            _AppBottomNavBarItem(type: BottomNavBarItemType.ASCETICISM),
          ],
        );
}

class _AppBottomNavBarItem extends BottomNavigationBarItem {
  final BottomNavBarItemType type;

  _AppBottomNavBarItem({
    required this.type,
  }) : super(
          icon: Container(
            margin: EdgeInsets.only(
              top: AppDimens.bottom_nav_bar_6,
              bottom: AppDimens.bottom_nav_bar_6,
            ),
            child: AppImages.getAssetVectorImage(type.unselectedIconRes),
          ),
          activeIcon: Container(
            margin: EdgeInsets.only(
              top: AppDimens.bottom_nav_bar_6,
              bottom: AppDimens.bottom_nav_bar_6,
            ),
            child: AppImages.getAssetVectorImage(type.selectedIconRes),
          ),
          label: type.label,
        );
}
