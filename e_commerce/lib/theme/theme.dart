import 'package:flutter/material.dart';


ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400,
    primary: Colors. grey.shade300,
    secondary: Colors.grey.shade200,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black87),
    bodyMedium: TextStyle(color: Colors.black54),
    bodySmall: TextStyle(color: Colors.black45),
  ),
  iconTheme: IconThemeData(
    color: Colors.black,
  )
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade800,
    secondary: Colors.grey.shade700,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.grey.shade300),
    bodyMedium: TextStyle(color: Colors.grey.shade400),
    bodySmall: TextStyle(color: Colors.grey.shade200),
  ),
  iconTheme: IconThemeData(
    color: Colors.grey.shade200,
  )
  );





