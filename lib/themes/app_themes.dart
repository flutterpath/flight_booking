import 'package:flight_booking/constants/color_constants.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  Light, Dark
}

/// Returns enum value name without enum class name.
String enumName(AppTheme anyEnum) {
  return anyEnum.toString().split('.')[1];
}

final appThemeData = {
  AppTheme.Light : ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.MaterialTheme1Primary,
      accentColor: AppColors.MaterialTheme1Secondary,
  ),
  AppTheme.Dark : ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.colorBlack
  )
};