import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.grey[300],
    primaryColor: const Color(0xFFFAFAF9),
    colorScheme: const ColorScheme.light(),
    brightness: Brightness.light,
    secondaryHeaderColor: Colors.black,
    shadowColor: Colors.black,
    cardColor: const Color(0xFF627680),
    selectedRowColor: Color(0xBFFFFFFF),
  );

  static final dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color(0xFF363A40),
    colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
    shadowColor: Colors.white,
    secondaryHeaderColor: Colors.white,
    cardColor: Color.fromARGB(255, 104, 123, 144),
    selectedRowColor: Color(0x81232E34),
  );
}
