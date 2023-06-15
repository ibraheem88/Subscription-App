import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData get lightTheme => ThemeData(
      fontFamily: GoogleFonts.jost().fontFamily.toString(),
      appBarTheme: AppBarTheme(
          titleSpacing: 0,
          titleTextStyle: TextStyle(
              fontFamily: GoogleFonts.syne().fontFamily, color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black));
}
