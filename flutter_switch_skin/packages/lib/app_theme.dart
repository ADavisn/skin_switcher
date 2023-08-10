import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  ThemeData _currentThemeData = ThemeData.light();

  ThemeData get currentThemeData => _currentThemeData;

  void updateThemeData(ThemeData newThemeData) {
    _currentThemeData = newThemeData;
    notifyListeners();
  }
}
