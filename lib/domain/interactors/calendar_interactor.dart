import 'package:astro_app/domain/_export.dart';

abstract class CalendarInteractor {
  Future<String> getUserId();
}

class CalendarInteractorImpl implements CalendarInteractor {
  final SettingsRepository _repository;

  const CalendarInteractorImpl(this._repository);

  @override
  Future<String> getUserId() {
    return _repository.getUserId();
  }
}
