import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color scaffoldBackgroundColor = Color(0xFFF2F2F2);
  static Color primaryColor = Color(0xFF6CB0D5);
  static Color secondaryHeaderColor = Color(0xFF37464D);
  static Color secondaryColor = Color(0xFF72D3A3F);
  static Color accentColor = Color(0xFFf5836d);
  static Color textButtonColor = Color(0xFFF2F2F2);
  static Color textButtonMenuColor = Color(0xFF4A4D4D);
  static Color textButtonExpandedColor = Color(0xFFA7A5AD);
  static Color bgButtonColor = Color(0xFFEBEBEB);

  static ThemeData geTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      primaryColor: primaryColor,
      secondaryHeaderColor: secondaryHeaderColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      // textTheme: GoogleFonts.robotoTextTheme(),
      textTheme: GoogleFonts.robotoMonoTextTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static List<BoxShadow> getShadow(
          {Color color = Colors.transparent,
          double blurRadius = 0.0,
          double dx = 0.0,
          double dy = 0.0}) =>
      [BoxShadow(color: color, blurRadius: blurRadius, offset: Offset(dx, dy))];
}
