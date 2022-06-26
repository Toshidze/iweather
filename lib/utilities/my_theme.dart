import 'package:flutter/material.dart';

//custom Theme of app
class MyTheme {
  ThemeData theme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch(),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 60,
        color: Colors.black26,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(color: Colors.white60),
      headline2: TextStyle(
        fontSize: 30,
        color: Colors.white60,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 16,
        color: Colors.white60,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        fontSize: 14,
        color: Colors.white60,
        fontWeight: FontWeight.w400,
      ),
      caption: TextStyle(
        fontSize: 12,
        color: Colors.white60,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
