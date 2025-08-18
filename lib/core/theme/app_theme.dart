import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E6C3B)),
    useMaterial3: true,
  );
  static ThemeData get dark => ThemeData.dark(useMaterial3: true);
}
