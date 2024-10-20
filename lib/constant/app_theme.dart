import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static var _lightFillColor = Colors.black;
  static const _darkFillColor = Color(0xFF1E2E3B);

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
  themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      textTheme: _textTheme ,
      // checkboxTheme: CheckboxThemeData(
      //   shape: BeveledRectangleBorder(),
      //   checkColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      //     if (states.contains(MaterialState.selected)) {
      //       // Color when the checkbox is checked
      //       return Colors.white;  // Replace with your desired color
      //     }
      //     // Color when the checkbox is unchecked
      //     return null; // You can return null for the default color
      //   }),
      // ),

      primaryColor: colorScheme.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.inversePrimary,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFFFAFBFB)),
      ),
      // badgeTheme: colorScheme.secondaryContainer,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor:colorScheme.primaryContainer,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      dividerColor: Color.fromRGBO(147, 147, 147, 1),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.titleMedium!.apply(color: _darkFillColor),
      ), colorScheme: colorScheme.copyWith(background: colorScheme.secondaryContainer),
    );
  }

  static ColorScheme lightColorScheme = ColorScheme(
    primary: const Color(0xFFFAFBFB),
    primaryContainer: const Color.fromRGBO(15, 25, 34, 1),
    // secondary: Color.fromRGBO(19, 196, 159, 1),
    secondary: const Color.fromRGBO(61, 61, 61, 1),
    secondaryContainer: const Color.fromRGBO(19, 196, 159, 1),
    onSurface: const Color.fromRGBO(15, 25, 34, 1),
    surface: const Color(0xFFFAFBFB),
    onBackground: const Color.fromRGBO(221, 221, 221, 1),
    inversePrimary: const Color.fromRGBO(30, 46, 59, 1),
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: const Color.fromRGBO(217, 217, 217, 1),
    onSecondary: const Color.fromRGBO(9, 53, 44, 1),

    brightness: Brightness.light,
    onErrorContainer: const Color.fromRGBO(217, 21, 21, 1),
    outline: const Color.fromRGBO(116, 125, 128, 0.50),
    onPrimaryContainer: const Color.fromRGBO(156, 156, 156, 1),
    onSecondaryContainer:const Color.fromRGBO(53, 78, 99, 1),
    inverseSurface: const Color.fromRGBO(68, 67, 67, 1),
    onInverseSurface: const Color.fromRGBO(142, 142, 142, 1),



  );

  static const ColorScheme darkColorScheme = ColorScheme(


    primary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF102C57),
    secondary: Colors.red,
    secondaryContainer: Color(0xFF451B6F),

    onSurface: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0DFFFFFF),
    onPrimaryContainer: Color(0xFFF8F0E5),
    surfaceContainer: Color(0xFFDAC0A3),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    brightness: Brightness.dark,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static final TextTheme _textTheme = TextTheme(
    headlineMedium: GoogleFonts.nunito(fontWeight: _bold, fontSize: 40.0),
    bodySmall: GoogleFonts.nunito(fontWeight: _semiBold, fontSize: 16.0),
    headlineSmall: GoogleFonts.nunito(fontWeight: _medium, fontSize: 16.0),
    titleMedium: GoogleFonts.nunito(fontWeight: _medium, fontSize: 16.0),
    labelSmall: GoogleFonts.nunito(fontWeight: _medium, fontSize: 10.0),
    bodyLarge: GoogleFonts.nunito(fontWeight: _regular, fontSize: 14.0),
    titleSmall: GoogleFonts.nunito(fontWeight: _medium, fontSize: 14.0),
    bodyMedium: GoogleFonts.nunito(fontWeight: _regular, fontSize: 16.0),
    titleLarge: GoogleFonts.nunito(fontWeight: _regular, fontSize: 24.0),
    labelLarge: GoogleFonts.nunito(fontWeight: _semiBold, fontSize: 13.0),
    labelMedium: GoogleFonts.nunito(fontWeight: _regular, fontSize: 12.0),
  );
}
