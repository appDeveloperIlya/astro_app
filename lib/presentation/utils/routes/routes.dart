import 'package:astro_app/presentation/_export.dart';

class Routes {
  Routes._();

  static const app = '/app';
  static const splash = '/splash';
  static const onboarding = '/onboarding';

  static List<GetPage> getRouterPages() {
    return [
      GetPage(
        name: Routes.splash,
        page: () => const SplashScreen(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.onboarding,
        page: () => const OnboardingScreen(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: Routes.app,
        page: () => const App(),
        transition: Transition.noTransition,
      ),
    ];
  }
}
