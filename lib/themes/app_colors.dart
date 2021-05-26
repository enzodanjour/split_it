import 'package:flutter/material.dart';

/// whitelabel fácil modificação
abstract class AppColors {
  Color get background;
}
/// fácil alteração
class AppColorsDefaut implements AppColors {
  @override
  Color get background => Color(0xFF40B38C);

}
