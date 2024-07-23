import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EVTheme {
  static ThemeData lightTheme = ThemeData(brightness: Brightness.light, 
  textTheme: TextTheme(
    headlineSmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black45
    ),headlineMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black54,),
      headlineLarge: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black87,),
  ));
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
