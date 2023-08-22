import 'package:astro_app/presentation/_export.dart';

class AppController extends GetxController {
  AppController();

  final selectedTab = BottomNavBarItemType.CALENDAR.obs;

  void changeTabIndex(int index) async {
    selectedTab.value = BottomNavBarItemType.toTypeOrError(index);
    update();
  }
}

enum BottomNavBarItemType {
  CALENDAR,
  AFFIRMATION,
  ASCETICISM;

  static const UNSUPPORTED_TYPE = 'Unsupported bottom nav bar item type';

  static BottomNavBarItemType toTypeOrError(int index) {
    switch (index) {
      case 0:
        return BottomNavBarItemType.CALENDAR;
      case 1:
        return BottomNavBarItemType.AFFIRMATION;
      case 2:
        return BottomNavBarItemType.ASCETICISM;
      default:
        throw Exception(UNSUPPORTED_TYPE);
    }
  }

  int get selectedIndex {
    switch (this) {
      case BottomNavBarItemType.CALENDAR:
        return 0;
      case BottomNavBarItemType.AFFIRMATION:
        return 1;
      case BottomNavBarItemType.ASCETICISM:
        return 2;
      default:
        throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get label {
    switch (this) {
      case BottomNavBarItemType.CALENDAR:
        return 'home_calendar'.tr;
      case BottomNavBarItemType.AFFIRMATION:
        return 'home_affirmation'.tr;
      case BottomNavBarItemType.ASCETICISM:
        return 'home_asceticism'.tr;
      default:
        throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get unselectedIconRes {
    switch (this) {
      case BottomNavBarItemType.CALENDAR:
        return AppImages.ic_bottom_nav_bar_calendar;
      case BottomNavBarItemType.AFFIRMATION:
        return AppImages.ic_bottom_nav_bar_affirmation;
      case BottomNavBarItemType.ASCETICISM:
        return AppImages.ic_bottom_nav_bar_asceticism;
      default:
        throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get selectedIconRes {
    switch (this) {
      case BottomNavBarItemType.CALENDAR:
        return AppImages.ic_bottom_nav_bar_calendar_filled;
      case BottomNavBarItemType.AFFIRMATION:
        return AppImages.ic_bottom_nav_bar_affirmation_filled;
      case BottomNavBarItemType.ASCETICISM:
        return AppImages.ic_bottom_nav_bar_asceticism_filled;
      default:
        throw Exception(UNSUPPORTED_TYPE);
    }
  }
}
