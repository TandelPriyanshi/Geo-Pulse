import 'package:flutter/material.dart';

ThemeData colorPalette = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade700,
  ),
);

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = colorPalette;
  ThemeData get themeData => _themeData;
}