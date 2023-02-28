import 'package:flutter/material.dart';
import 'package:solid_task/src/app/theme/color_generator.dart';

/// AppTheme class containing all necessaries theme data of the application
class AppTheme {
  /// ThemeData of the aplication
  static final theme = ThemeData(
    scaffoldBackgroundColor: ColorGenerator.get(),
  );
}
