import 'package:astro_app/domain/_export.dart';

class DomainDependencies {
  DomainDependencies() {
    init();
  }

  void init() {
    Get.put<CalendarInteractor>(
      CalendarInteractorImpl(Get.find<SettingsRepository>()),
    );
  }
}
