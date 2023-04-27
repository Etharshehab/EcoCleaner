import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(237, 237, 237, 1),
      elevation: 0.0,
      titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(49, 204, 149, 1)),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(49, 204, 149, 1)),
      displayMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 88, 87, 87)),
    ),
  );
}
