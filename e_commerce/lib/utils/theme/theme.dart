import 'package:flutter/material.dart';
import 'package:e_commerce/utils/theme/text_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme
  );

  static ThemeMode themeMode = ThemeMode.system;

  static ThemeData get currentTheme {
    return themeMode == ThemeMode.light ? lightTheme : darkTheme;
}
}