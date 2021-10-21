import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider {
  static const _accessLevel = 'accessLevel';

  static SharedPreferences? _prefs;

  static Future<SharedPreferencesProvider> getInstance() async {
    _prefs = await SharedPreferences.getInstance();
    return SharedPreferencesProvider._();
  }

  SharedPreferencesProvider._();

  Future<void> saveAccessLevel(int value) async {
    await _prefs?.setInt(_accessLevel, value);
  }

  String? get accessLevel => _prefs?.getString(_accessLevel);
}

late SharedPreferencesProvider sharedPreferences;
