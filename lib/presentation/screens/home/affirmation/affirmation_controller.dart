import 'package:astro_app/presentation/_export.dart';

class AffirmationController extends GetxController {
  AffirmationController();

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
