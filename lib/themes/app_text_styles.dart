import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/themes/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get name;
}

class AppTextStylesDefaut implements AppTextStyles {
  TextStyle get button => GoogleFonts.inter(
      color: AppTheme.colors.button, fontSize: 16, fontWeight: FontWeight.w400);

  TextStyle get title => GoogleFonts.montserrat(
      color: AppTheme.colors.title, fontSize: 40, fontWeight: FontWeight.w700);

  TextStyle get name => GoogleFonts.montserrat(
      color: AppTheme.colors.backgroundPrimary,
      fontSize: 24,
      fontWeight: FontWeight.w700);
}
