import 'package:flutter/material.dart';

class AppStyle {
   static Color primaryColor = const Color(0xFCCB06);
  // static Color primaryColor = const Color(0xFF2253FF);
  // static Color primaryColor = Colors.amber;
  static Color primaryColorDark = const Color(0xFF193BB1);
  // static Color primaryColorDark = Colors.amber;

  /* Definining text style */
  static TextStyle maintext = const TextStyle(
    color: Colors.white,
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mainTextThin = const TextStyle(
    color: Colors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.normal,
  );

  static TextStyle dateTextThin = const TextStyle(
    color: Colors.white,
    fontSize: 28.0,
    fontWeight: FontWeight.normal,
  );
}
