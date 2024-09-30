import 'package:flutter/material.dart';

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    backgroundColor: MaterialStateProperty.all<Color>(
      const Color(0xff4C0099),
    ),
  ),
);
final textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(
      const Color(0xff4C0099),
    ),
  ),
);
final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
  elevatedButtonTheme: elevatedButtonTheme,
  textButtonTheme: textButtonTheme,
);
