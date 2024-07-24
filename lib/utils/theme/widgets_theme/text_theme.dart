import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EVTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black45),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(
        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white24),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white38,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white54,
    ),
  );
}
