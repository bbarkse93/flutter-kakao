import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 24, color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
