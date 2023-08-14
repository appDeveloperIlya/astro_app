export 'package:astro_app/presentation/utils/locales/_locales.dart';
export 'package:astro_app/presentation/utils/locales/ru.dart';
export 'package:astro_app/presentation/utils/locales/en.dart';
import 'package:astro_app/presentation/_export.dart';

class Locales extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ru_RU': RU.locale,
        'en_US': EN.locale,
      };
}
