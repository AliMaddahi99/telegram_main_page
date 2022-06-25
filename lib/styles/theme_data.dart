import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData dark = ThemeData(
    colorScheme: const ColorScheme.dark(
      secondary: Colors.blue,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.blue,
    ),
    brightness: Brightness.dark,
  );

  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
  );
}
