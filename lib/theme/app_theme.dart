import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Fulbari brand palette — Organic Botanical Green.
class AppColors {
  static const forestDeep = Color(0xFF1B4332);
  static const forestAccent = Color(0xFF2D6A4F);
  static const mint = Color(0xFFD8F3DC);
  static const crimson = Color(0xFFD90429);

  static const cream = Color(0xFFFBFAF7);
  static const paper = Color(0xFFFFFFFF);
  static const ink = Color(0xFF152016);
  static const inkSoft = Color(0xFF5C6B5F);
  static const line = Color(0x1F1B4332);
}

TextStyle brandTextStyle({double size = 26, Color color = AppColors.forestDeep}) =>
    GoogleFonts.fraunces(fontSize: size, fontWeight: FontWeight.w600, color: color);

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.cream,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.forestDeep,
      primary: AppColors.forestDeep,
      secondary: AppColors.forestAccent,
      error: AppColors.crimson,
    ),
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.paper,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.line),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.line),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.forestDeep, width: 1.6),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.crimson, width: 1.4),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.crimson, width: 1.6),
      ),
      labelStyle: const TextStyle(color: AppColors.inkSoft, fontSize: 13.5),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.forestDeep,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        elevation: 0,
      ),
    ),
  );
}
