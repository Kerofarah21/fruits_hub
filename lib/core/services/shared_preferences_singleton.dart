import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _sharedPreferencesinstance;

  static Future<void> init() async {
    _sharedPreferencesinstance = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is bool) {
      return await _sharedPreferencesinstance.setBool(key, value);
    } else if (value is String) {
      return await _sharedPreferencesinstance.setString(key, value);
    } else if (value is int) {
      return await _sharedPreferencesinstance.setInt(key, value);
    } else {
      return await _sharedPreferencesinstance.setDouble(key, value);
    }
  }

  static dynamic getData({
    required String key,
  }) =>
      _sharedPreferencesinstance.get(key) ?? false;

  static Future<bool> removeData({
    required String key,
  }) async =>
      await _sharedPreferencesinstance.remove(key);
}
