import 'package:flutter/material.dart';

/// whitelabel fácil modificação
abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get button;
  Color get border;
}

/// fácil alteração
class AppColorsDefaut implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get border => Color(0xFFDCE0E5);
}
