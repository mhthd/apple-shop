import 'package:apple_shop/di/di.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthManager {
  static final ValueNotifier _authValueChangeNotifier = ValueNotifier(null);
  static final SharedPreferences _sharedPref = locator.get();

  static void saveToken(String token) async {
    await _sharedPref.setString('access_token', token);
    _authValueChangeNotifier.value = token;
  }

  static String readAuth() {
    return _sharedPref.getString('access_token') ?? '';
  }

  static void logout() {
    _sharedPref.clear();
    _authValueChangeNotifier.value = null;
  }
}
