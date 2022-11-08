
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static const prefToken = "token";
  static const prefRefreshToken = "refreshToken";
  static const prefUserName = "userName";
  static const prefMainTheme = "mainTheme";
  static const prefLanguageCode = "languageCode";
  static const prefUserId = "userId";
  static const prefIsDarkTheme = "isDarkTheme";
  static const prefIsRefreshToken = "isRefefeshToken";

  UserPreference();

  Future<bool> isDarkTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(prefIsDarkTheme) ?? false;
  }

  Future<int> getUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(prefUserId);
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(prefToken);
  }

  Future<String> getRefreshToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(prefRefreshToken);
  }

  Future<String> getUserName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(prefUserName);
  }

  Future<String> getLocalTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(prefMainTheme);
  }

  Future<String> getLanguageCode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(prefLanguageCode);
  }

  setIsRefreshToken(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(prefIsRefreshToken, value);
  }

  setToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefToken, value);
  }

  setRefreshToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefRefreshToken, value);
  }

  Future<bool> isRefreshToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(prefIsRefreshToken);
  }

  setUserName(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefUserName, value);
  }

  setLocalTheme(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefMainTheme, value);
  }

  setLanguageCode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(prefLanguageCode, value);
  }

  setUserId(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(prefUserId, value);
  }

  setDarkTheme(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(prefIsDarkTheme, value);
  }
}
