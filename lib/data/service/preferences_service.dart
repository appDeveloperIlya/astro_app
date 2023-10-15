import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IBasePrefService {
  Set<String>? getKeys();

  bool containsKey(String key);

  Future<bool>? remove(String key);
}

abstract class BasePreferencesImplDataSource implements IBasePrefService {
  @protected
  final SharedPreferences? prefs;

  const BasePreferencesImplDataSource(this.prefs);

  @override
  Set<String>? getKeys() => prefs?.getKeys();

  @override
  bool containsKey(String key) => prefs?.containsKey(key) ?? false;

  @override
  Future<bool>? remove(String key) => prefs?.remove(key);
}
