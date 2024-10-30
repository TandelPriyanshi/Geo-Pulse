import 'package:flutter/material.dart';

ThemeData colorPalette = ThemeData(
  colorScheme: ColorScheme.light(
    background: Color.fromARGB(255, 227, 227, 227),
    primary: const Color.fromARGB(255, 85, 103, 156),
    secondary: const Color.fromARGB(255, 30, 42, 94),
    tertiary: const Color.fromARGB(255, 124, 147, 195),
    inversePrimary: const Color.fromARGB(255, 196, 191, 191),
  ),
);

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = colorPalette;
  ThemeData get themeData => _themeData;
}