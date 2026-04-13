import 'package:task_taste/common/enums/pref_key.dart';

abstract class LocalStorage {
  // int
  Future<void> setInt(PrefKey key, int value);
  int? getInt(PrefKey key);

  // double
  Future<void> setDouble(PrefKey key, double value);
  double? getDouble(PrefKey key);

  // bool
  Future<void> setBool(PrefKey key, bool value);
  bool? getBool(PrefKey key);

  // string
  Future<void> setString(PrefKey key, String value);
  String? getString(PrefKey key);

  // string
  Future<void> setToken(PrefKey key, String value);
  String? getToken(PrefKey key);

  // remove
  Future<void> remove(PrefKey key);

  // clear
  Future<void> clear();
}
