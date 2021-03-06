import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences _sharedPrefs;
  init() async {
    if (_sharedPrefs == null) {
      _sharedPrefs = await SharedPreferences.getInstance();
    }
  }
  String get token => _sharedPrefs.getString("token") ?? "";

  set token(String value) {
    _sharedPrefs.setString("token", value);
  }

}