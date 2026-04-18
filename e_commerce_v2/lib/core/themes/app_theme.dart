import 'package:flutter/material.dart';
import 'package:test_project/core/constants/app_color.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: AppColor.white, elevation: 0),
    scaffoldBackgroundColor: AppColor.white,
    fontFamily: 'Roboto',
  );
}
