import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = FlexThemeData.dark(
  scaffoldBackground: 'FAFAFA'.toColor,
  onPrimary: 'FFFFFF'.toColor,
  onSecondary: 'FFFFFF'.toColor,
  surface: '21244D'.toColor,
  onBackground: '212121'.toColor,
  colors: FlexSchemeColor.from(
    primary: '005CFF'.toColor,
    secondary: '8D4BF6'.toColor,
    primaryContainer: '337DFF'.toColor,
    secondaryContainer: '5E6573'.toColor,
    tertiary: '8D4BF6'.toColor,
    tertiaryContainer: 'C0BDDD'.toColor,
    error: 'B3261E'.toColor,
    errorContainer: 'F9DEDC'.toColor,
  ),
  subThemesData: const FlexSubThemesData(),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.urbanist(
      fontSize: 57,
      fontWeight: FontWeight.w500,
      height: 64 / 75,
    ),
    displayMedium: GoogleFonts.urbanist(
      fontSize: 45,
      fontWeight: FontWeight.w600,
      height: 52 / 45,
    ),
    displaySmall: GoogleFonts.urbanist(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      height: 44 / 36,
    ),
    headlineLarge: GoogleFonts.urbanist(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 42 / 32,
    ),
    headlineMedium: GoogleFonts.urbanist(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 36 / 28,
    ),
    headlineSmall: GoogleFonts.urbanist(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 30 / 24,
    ),
    titleLarge: GoogleFonts.urbanist(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      height: 28 / 22,
    ),
    titleMedium: GoogleFonts.urbanist(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 24 / 16,
    ),
    titleSmall: GoogleFonts.urbanist(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 21 / 14,
    ),
    labelLarge: GoogleFonts.urbanist(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 20 / 14,
    ),
    labelMedium: GoogleFonts.urbanist(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 16 / 12,
    ),
    labelSmall: GoogleFonts.urbanist(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      height: 13 / 11,
      letterSpacing: 0.02,
    ),
    bodyLarge: GoogleFonts.urbanist(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 24 / 16,
    ),
    bodyMedium: GoogleFonts.urbanist(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 21 / 14,
    ),
    bodySmall: GoogleFonts.urbanist(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 16 / 12,
    ),
  ),
).copyWith(
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: 'FFFFFF'.toColor,
    selectionColor: '8D4BF6'.toColor,
    selectionHandleColor: '8D4BF6'.toColor,
  ),
);

extension ColorSchemeX on ColorScheme {
  Color get outlineColor => '484A62'.toColor;
  Color get additional1 => '616161'.toColor;
}
