import 'package:flight_booking/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {

  AppTheme _currentTheme = AppTheme.Light;
  ThemeData _currentThemeData = appThemeData[0];

  ThemeChanger(this._currentThemeData);

  void switchTheme() {
    if(currentTheme == AppTheme.Light) {
      currentTheme = AppTheme.Dark;
      _currentThemeData = appThemeData[1];
    } else {
      currentTheme = AppTheme.Light;
      _currentThemeData = appThemeData[0];
    }
  }

  get currentTheme => _currentTheme;

  get currentThemeData => _currentThemeData;

  set currentTheme(AppTheme theme) {
    if (theme != null) {
      _currentTheme = theme;
      _currentThemeData =
      currentTheme == AppTheme.Light ? appThemeData[0] : appThemeData[1];
//Notifies the theme change to app
      notifyListeners();
    }
  }

}