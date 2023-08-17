import 'package:astro_app/data/_export.dart';
import 'package:astro_app/domain/_export.dart';

class DataDependencies {
  DataDependencies() {
    init();
  }

  void init() {
    Get.put<SettingsRepository>(SettingsRepositoryImpl());
  }
}
