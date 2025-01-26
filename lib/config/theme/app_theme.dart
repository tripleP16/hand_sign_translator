import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2196F3),
      primary: const Color(0xFF2196F3),
      secondary: const Color(0xFF03DAC6),
      surface: const Color(0xFFFFFFFF),
      error: const Color(0xFFB00020),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.5,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        letterSpacing: 0.5,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2196F3),
      brightness: Brightness.dark,
      primary: const Color(0xFF2196F3),
      secondary: const Color(0xFF03DAC6),
      surface: const Color(0xFF1E1E1E),
      error: const Color(0xFFCF6679),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.5,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        letterSpacing: 0.5,
        color: Colors.white70,
      ),
    ),
  );
}
