import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: const ColorScheme(
    primary: Color(0xffFB7D8A),
    secondary: Color(0xffFEF9E4),
    tertiary: Color(0xff1E2742),
    surface: Colors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Color(0xff1E2742))),
);
