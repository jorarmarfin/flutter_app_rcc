import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color appWhiteColor = Color(0xFFFFFFFF);
const Color appRedColor = Color(0xFFfb0a30);
const Color appBackgroundColor = Color(0xFFE5E5E5);
const Color appBrownColor = Color(0xFF5B3423);
const Color appBlueColor = Color(0xFF2B93FB);
const Color appGreenColor = Color(0xFF398c0e);
const iconDove = 'assets/icons/dove.png';
const logoRcc = 'assets/images/logo.png';
const logo50 = 'assets/images/50_years.png';

class AppTheme {
  AppTheme();

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: appBrownColor,
      scaffoldBackgroundColor: appBackgroundColor,
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: appWhiteColor,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.aboreto(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: appBrownColor,
        ),
        titleMedium: GoogleFonts.aboreto(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: appBrownColor,
        ),
        bodyLarge: GoogleFonts.montserrat(fontSize: 20, color: appBrownColor,),

      ));
}
final BoxDecoration appBoxDecoration = BoxDecoration(
  color: appWhiteColor,
  borderRadius: BorderRadius.circular(20),
  border: Border.all(
    color: appRedColor,
    width: 1,
  ),
);