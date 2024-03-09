import 'package:flutter/material.dart';

class ThemeManager {
  static bool isDarkTheme = false;

  static void changeTheme() {
    isDarkTheme = !isDarkTheme;
  }

  static ThemeData getTheme() {
    // return isDarkTheme ? _darkTheme : _lightTheme;
    return ThemeData(
      useMaterial3: true,
    );
  }
}
