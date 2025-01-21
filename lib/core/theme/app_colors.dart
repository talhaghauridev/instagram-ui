import 'package:flutter/material.dart';

class AppColors {
  static const lightColorScheme = ColorScheme.light(
    primary: Color(0xFF000000), // Green
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFA5D6A7),
    secondary: Color(0xFF121212),
    onSecondary: Colors.black,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    error: Colors.red,
    onError: Colors.white,
  );

  static const darkColorScheme = ColorScheme.dark(
    primary: Color(0xFF000000),
    onPrimary: Colors.black,
    primaryContainer: Color(0xFF0F140E),
    secondary: Color(0xFF81C784),
    onSecondary: Colors.white,
    background: Color(0xFF0F140E), // Dark background
    onBackground: Colors.white,
    surface: Color(0xFF1E1E1E), // Card background
    onSurface: Colors.white,
    error: Colors.red,
    onError: Colors.white,
  );

  static const lightBackground = Colors.white;
  static const lightCardBackground = Color(0xFFF5F5F5);
  static const lightTextPrimary = Colors.black87;
  static const lightTextSecondary = Colors.black54;
  static const lightDivider = Color(0xFFE0E0E0);

  // Dark Theme Specific
  static const darkBackground = Colors.black;
  static const darkCardBackground = Color(0xFF1E1E1E);
  static const darkTextPrimary = Colors.white;
  static const darkTextSecondary = Colors.white70;
  static const darkDivider = Color(0xFF424242);

  // Brand Colors
  static const brandGreen = Colors.black;
  static const brandDark = Color(0xFF0F140E);
}
