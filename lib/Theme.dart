import 'package:flutter/material.dart';

class AppTheme {
  static const colors = const _ThemeColors();
  static const dimens = const _Dimens();
  static const textStyles = const _TextStyles();
}

class _ThemeColors {

  const _ThemeColors();

  final Color appBarTitle = const Color(0xFFFFFFFF);
  final Color appBarStart = const Color(0xFF3383FC);
  final Color appBarEnd = const Color(0xFF00C6FF);
  final Color planetCard = const Color(0xFF434273);
  final Color planetListBackground = const Color(0xFF3E3963);
}

class _Dimens {
  const _Dimens();

  final planetWidth = 100.0;
  final planetHeight = 100.0;
}

class _TextStyles {
  const _TextStyles();

  final TextStyle appBarTitle = const TextStyle(
    color: Colors.white,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 36.0
  );
}
