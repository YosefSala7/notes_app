import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary
  static const Color primary = Color(0xFF6547F5);
  static const Color primaryLight = Color(0xFFE8E3FF);
  static const Color primaryVeryLight = Color(0xFFF1EEFF);

  // Backgrounds
  static const Color background = Color.fromARGB(255, 255, 255, 255);
  static const Color surface = Color.fromARGB(255, 255, 255, 255);
  static const Color card = Color.fromARGB(255, 242, 245, 253);

  // Inputs
  static const Color inputBackground = Color(0xFFE9ECF4);

  // Text
  static const Color text = Color(0xFF17171C);
  static const Color textSecondary = Color(0xFF74788A);
  static const Color textHint = Color(0xFF9297A8);

  // Icons
  static const Color icon = Color(0xFF687080);

  // Other
  static const Color divider = Color(0xFFE3E5EB);
  static const Color grey = Color(0xFF9DA2B0);
  static const Color error = Color(0xFFF04444);
  static const Color success = Color(0xFF32B768);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}