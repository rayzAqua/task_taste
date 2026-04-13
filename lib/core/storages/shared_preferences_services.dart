import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_taste/common/enums/pref_key.dart';
import 'package:task_taste/common/extensions/pref_key_ext.dart';
import 'package:task_taste/core/storages/local_storage.dart';

class SharedPreferencesService implements LocalStorage {
  final SharedPreferences _preferences;

  SharedPreferencesService({required SharedPreferences preferences})
    : _preferences = preferences;

  // * int
  @override
  Future<void> setInt(PrefKey key, int value) async {
    await _preferences.setInt(key.name, value);
  }

  @override
  int? getInt(PrefKey key) {
    return _preferences.getInt(key.name);
  }

  // * double
  @override
  Future<void> setDouble(PrefKey key, double value) async {
    await _preferences.setDouble(key.name, value);
  }

  @override
  double? getDouble(PrefKey key) {
    return _preferences.getDouble(key.name);
  }

  // * bool
  @override
  Future<void> setBool(PrefKey key, bool value) async {
    await _preferences.setBool(key.name, value);
  }

  @override
  bool? getBool(PrefKey key) {
    return _preferences.getBool(key.name);
  }

  // * string
  @override
  Future<void> setString(PrefKey key, String value) async {
    await _preferences.setString(key.name, value);
  }

  @override
  String? getString(PrefKey key) {
    return _preferences.getString(key.name);
  }

  // * access_token
  @override
  Future<void> setToken(PrefKey key, String value) async {
    await _preferences.setString(key.name, value);
  }

  @override
  String? getToken(PrefKey key) {
    return _preferences.getString(key.name);
  }

  // * remove
  @override
  Future<void> remove(PrefKey key) async {
    await _preferences.remove(key.name);
  }

  // * clear
  @override
  Future<void> clear() async {
    await _preferences.clear();
  }
}
