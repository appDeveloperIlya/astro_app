import 'package:astro_app/domain/_export.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  @override
  Future<String> getUserId() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    return 'USER';
  }
}
