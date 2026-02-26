import 'package:flutter/material.dart';

class AppTheme {
  static const Color darkBackground = Color(0xFF0B0E1F);
  static const Color primaryPurple = Color(0xFF6A1B9A);
  static const Color accentPurple = Color(0xFF8E44AD);
  static const Color darkPurple = Color(0xFF4A235A);
  static const Color lightPurple = Color(0xFFB39DDB);

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: darkBackground,
      primaryColor: primaryPurple,
      colorScheme: const ColorScheme.dark(
        primary: accentPurple,
        secondary: darkPurple,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
