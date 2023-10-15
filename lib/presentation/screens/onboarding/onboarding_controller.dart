import 'package:astro_app/presentation/_export.dart';

class OnboardingController extends GetxController {
  OnboardingController();

  final firstIndicatorValue = 1.0.obs;
  final secontIndicatorValue = 0.0.obs;
  final thirdIndicatorValue = 0.0.obs;
  final currentOnboardingScreen = CurrentOnboardingScreen.FIRST.obs;
  final previusOboardingScreen = CurrentOnboardingScreen.EMPTY.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  void goToNextScreen() {
    switch (currentOnboardingScreen.value) {
      case CurrentOnboardingScreen.FIRST:
        currentOnboardingScreen.value = CurrentOnboardingScreen.SECOND;
        secontIndicatorValue.value = 1.0;
        break;
      case CurrentOnboardingScreen.SECOND:
        currentOnboardingScreen.value = CurrentOnboardingScreen.THIRD;
        thirdIndicatorValue.value = 1.0;
        break;
      // case CurrentOnboardingScreen.THIRD:
      //   currentOnboardingScreen.value = CurrentOnboardingScreen.FIRST;
      //   secontIndicatorValue.value = 0.0;
      //   thirdIndicatorValue.value = 0.0;

      //   break;
      case CurrentOnboardingScreen.THIRD:
        Get.offAllNamed(Routes.app);
        break;

      default:
        currentOnboardingScreen.value = CurrentOnboardingScreen.FIRST;
    }

    update();
  }
}
