import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.grey[300],
    primaryColor: const Color(0xFFFAFAF9),
    colorScheme: const ColorScheme.light(),
    brightness: Brightness.light,
    secondaryHeaderColor: const Color(0xFF5782A5),
    cardColor: const Color(0xFF3D5D84),
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color(0xFF363A40),
    colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
    secondaryHeaderColor: Color.fromARGB(255, 63, 77, 90),
    cardColor: Color.fromARGB(255, 104, 123, 144),
  );
}
