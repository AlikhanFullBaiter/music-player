import 'package:flutter/material.dart';
import 'package:assignment3/themes/light_mode.dart';
import 'package:assignment3/themes/dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  //initially LightMode
  ThemeData _themeData = lightMode;

  //get theme

  ThemeData get themeData => _themeData;

  //is dark mode

  bool get isDarkMode => _themeData == darkMode;

  //set theme

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    //update ui
    notifyListeners();
  }

  //toggle theme

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else if (_themeData == darkMode) {
      themeData = lightMode;
    }
  }
}
