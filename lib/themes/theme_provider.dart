import 'package:bolt_ui/themes/themes.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = lightMode;

  ThemeData get currentTheme => _currentTheme;

  bool get isLightMode => _currentTheme == lightMode;

  void toggleTheme() {
    if (_currentTheme == lightMode) {
      _currentTheme = darkMode;
    } else {
      _currentTheme = lightMode;
    }
    notifyListeners();
  }
}
