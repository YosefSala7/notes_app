import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    // ═══════════════════════════════
    // COLOR SCHEME
    // ═══════════════════════════════
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.white,

      secondary: AppColors.primaryLight,
      onSecondary: AppColors.primary,

      surface: AppColors.surface,
      onSurface: AppColors.text,

      error: AppColors.error,
      onError: AppColors.white,
    ),

    // ═══════════════════════════════
    // GENERAL
    // ═══════════════════════════════
    scaffoldBackgroundColor: AppColors.background,

    splashColor: AppColors.primaryVeryLight,
    highlightColor: Colors.transparent,

    // ═══════════════════════════════
    // TEXT
    // ═══════════════════════════════
    textTheme: TextTheme(
      // Big titles
      displayLarge: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),

      displayMedium: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),

      displaySmall: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),

      // Headings
      headlineLarge: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),

      headlineMedium: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 21,
        fontWeight: FontWeight.w700,
      ),

      headlineSmall: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 19,
        fontWeight: FontWeight.w600,
      ),

      // Titles
      titleLarge: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),

      titleMedium: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),

      titleSmall: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),

      // Body
      bodyLarge: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),

      bodyMedium: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),

      bodySmall: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textHint,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),

      // Buttons
      labelLarge: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),

      labelMedium: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textSecondary,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),

      labelSmall: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textHint,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
    ),

    // ═══════════════════════════════
    // APP BAR
    // ═══════════════════════════════
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.text,

      elevation: 0,
      scrolledUnderElevation: 0,

      centerTitle: false,

      surfaceTintColor: Colors.transparent,

      titleTextStyle: TextStyle(
        color: AppColors.text,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),

      iconTheme: IconThemeData(color: AppColors.icon, size: 22),
    ),

    // ═══════════════════════════════
    // CARD
    // ═══════════════════════════════
    cardTheme: CardThemeData(
      color: AppColors.card,
      elevation: 0,

      margin: EdgeInsets.zero,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // ═══════════════════════════════
    // INPUT / TEXT FIELD
    // ═══════════════════════════════
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputBackground,

      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      hintStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textHint,
        fontSize: 14,
      ),

      labelStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.textSecondary,
        fontSize: 14,
      ),

      prefixIconColor: AppColors.icon,
      suffixIconColor: AppColors.icon,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.error),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.error, width: 1.5),
      ),
    ),

    // ═══════════════════════════════
    // ELEVATED BUTTON
    // ═══════════════════════════════
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,

        elevation: 0,

        minimumSize: const Size(double.infinity, 52),

        padding: const EdgeInsets.symmetric(horizontal: 24),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        textStyle: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ═══════════════════════════════
    // OUTLINED BUTTON
    // ═══════════════════════════════
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,

        minimumSize: const Size(double.infinity, 52),

        side: const BorderSide(color: AppColors.primary, width: 1.3),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        textStyle: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ═══════════════════════════════
    // TEXT BUTTON
    // ═══════════════════════════════
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,

        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    ),

    // ═══════════════════════════════
    // BOTTOM NAVIGATION
    // ═══════════════════════════════
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.card,

      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textHint,

      selectedLabelStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),

      unselectedLabelStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),

      type: BottomNavigationBarType.fixed,

      elevation: 8,
    ),

    // ═══════════════════════════════
    // FLOATING ACTION BUTTON
    // ═══════════════════════════════
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,

      elevation: 4,

      shape: CircleBorder(),
    ),

    // ═══════════════════════════════
    // DIVIDER
    // ═══════════════════════════════
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
      space: 1,
    ),

    // ═══════════════════════════════
    // DIALOG
    // ═══════════════════════════════
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.card,

      elevation: 8,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ═══════════════════════════════
    // SNACKBAR
    // ═══════════════════════════════
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.text,

      behavior: SnackBarBehavior.floating,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      contentTextStyle: const TextStyle(color: AppColors.white, fontSize: 14),
    ),

    // ═══════════════════════════════
    // CHECKBOX
    // ═══════════════════════════════
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

      side: const BorderSide(color: AppColors.grey),

      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }

        return Colors.transparent;
      }),

      checkColor: WidgetStateProperty.all(AppColors.white),
    ),

    // ═══════════════════════════════
    // SWITCH
    // ═══════════════════════════════
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.white;
        }

        return AppColors.grey;
      }),

      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }

        return AppColors.inputBackground;
      }),
    ),
  );
}
