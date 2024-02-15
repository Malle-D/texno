import 'package:shared_preferences/shared_preferences.dart';

class MyPreference {
  static late final SharedPreferences _pref;

  static void init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static void setUser(String username) {
    _pref.setString("user", username);
  }

  static String getUserName() {
    return _pref.getString("user") ?? "";
  }

  static void setPhone(String pinCode) {
    _pref.setString("phone", pinCode);
  }

  static String getPhone() {
    return _pref.getString("phone") ?? "";
  }

  static void logOut() {
    _pref.setString("user", "");
    _pref.setString("prone", "");
  }

}