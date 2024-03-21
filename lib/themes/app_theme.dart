import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color appWhiteColor = Color(0xFFFFFFFF);
const Color appRedColor = Color(0xFFC6302C);
const Color appBackgroundColor = Color(0xFFE5E5E5);
const Color appBrownColor = Color(0xFF5B3423);
class AppTheme {
  AppTheme();

  ThemeData getTheme() =>
      ThemeData(
          useMaterial3: true,
          colorSchemeSeed: appBrownColor,
        scaffoldBackgroundColor: appBackgroundColor,
        textTheme: GoogleFonts.montserratTextTheme(),

      );

  final BoxDecoration appBoxDecoration = BoxDecoration(
    color: appWhiteColor,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: appRedColor,
      width: 1,
    ),
  );
}