import 'package:astro_app/presentation/_export.dart';

class SettingsController extends GetxController {
  SettingsController();

  final tabIndex = 0.obs;

  void changeTabIndex(int index) async {
    tabIndex.value = index;
    update();
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
