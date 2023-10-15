import 'package:astro_app/presentation/_export.dart';

enum CurrentOnboardingScreen {
  FIRST,
  SECOND,
  THIRD,
  EMPTY;

  static const UNSUPPORTED_TYPE = 'unsupported CurrentOnboardingScreen type';

  String get getTitle {
    switch (this) {
      case CurrentOnboardingScreen.FIRST:
        return 'Живите в гармонии со  Вселенной';
      case CurrentOnboardingScreen.SECOND:
        return 'Только работающие практики!';
      case CurrentOnboardingScreen.THIRD:
        return 'Ваш помощник на пути к успеху';

      default:
        return throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get getButtonTitle {
    switch (this) {
      case CurrentOnboardingScreen.FIRST:
      case CurrentOnboardingScreen.SECOND:
        return 'Далее';
      case CurrentOnboardingScreen.THIRD:
        return 'Начать';

      default:
        return throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get getDecription {
    switch (this) {
      case CurrentOnboardingScreen.FIRST:
        return 'Применяйте древнее знание джйотиш и это поможет вам жить в гармонии с мирозданием каждый день!';
      case CurrentOnboardingScreen.SECOND:
        return 'Инструменты, применение которых дает свои плоды! Практики тщательно отобраны квалифицированными специалистами вручную.';
      case CurrentOnboardingScreen.THIRD:
        return 'Улучшение жизни через понимание планетных влияний на нашу жизнь';

      default:
        return throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get getFeedback {
    switch (this) {
      case CurrentOnboardingScreen.FIRST:
        return 'Уже более пяти лет эти ценные знания помогают мне в жизни!';
      case CurrentOnboardingScreen.SECOND:
        return 'Уже более пяти лет эти ценные знания помогают мне в жизни!';
      case CurrentOnboardingScreen.THIRD:
        return 'Уже более пяти лет эти ценные знания помогают мне в жизни!';

      default:
        return throw Exception(UNSUPPORTED_TYPE);
    }
  }

  String get getBGimage {
    switch (this) {
      case CurrentOnboardingScreen.FIRST:
        return AppImages.img_first_onb;
      case CurrentOnboardingScreen.SECOND:
        return AppImages.img_second_onb;
      case CurrentOnboardingScreen.THIRD:
        return AppImages.img_third_onb;

      default:
        return throw Exception(UNSUPPORTED_TYPE);
    }
  }
}
