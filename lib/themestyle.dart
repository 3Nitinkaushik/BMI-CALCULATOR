import 'package:flutter/material.dart';
import 'constants.dart';
TextStyle textstyle(Color gendercolor) {
  return TextStyle(
      color: gendercolor, fontSize: 25, fontWeight: FontWeight.bold);
}
ThemeData buildThemeData() {
  return ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      color: KThemecolor,
    ),
    scaffoldBackgroundColor: KThemecolor,
  );
}

TextStyle nuberstyle() {
  return TextStyle(
      fontWeight: FontWeight.bold, fontSize: 60, color: Colors.white);
}