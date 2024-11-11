import 'package:flutter/material.dart';

class CRTTheme {
  static const Color backgroundColor = Color.fromARGB(255, 6, 30, 9);
  static const Color textColor = Color(0xFF00FF41);

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: Colors.greenAccent,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.greenAccent,
      surface: backgroundColor,
      onSurface: textColor,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: textColor,
        fontFamily: 'Courier', // Monospace für Retro-Look
        fontSize: 18,
        shadows: [
          Shadow(
            blurRadius: 3.0,
            color: Colors.greenAccent.withOpacity(0.7),
          ),
        ],
      ),
      bodyMedium: TextStyle(
        color: textColor,
        fontFamily: 'Courier',
        fontSize: 16,
        shadows: [
          Shadow(
            blurRadius: 3.0,
            color: Colors.greenAccent.withOpacity(0.7),
          ),
        ],
      ),
      bodySmall: TextStyle(
        color: textColor,
        fontFamily: 'Courier',
        fontSize: 14,
        shadows: [
          Shadow(
            blurRadius: 3.0,
            color: Colors.greenAccent.withOpacity(0.7),
          ),
        ],
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      foregroundColor: textColor,
      elevation: 0,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: backgroundColor,
      textTheme: ButtonTextTheme.primary,
    ),
    iconTheme: const IconThemeData(
      color: textColor,
    ),
  );
}
