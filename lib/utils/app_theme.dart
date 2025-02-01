import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      //fontFamily: GoogleFonts.lato().fontFamily,

      //theme for appbar for app pages in app
      appBarTheme: AppBarTheme(
        elevation: 8,

        color: Colors.transparent, //color of app bar

        iconTheme:
            IconThemeData(color: Colors.black), //style to icons on appbar
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 23), //style to title on appbar
      ),
    );
  }

    static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      //fontFamily: GoogleFonts.lato().fontFamily,

      //theme for appbar for app pages in app
      appBarTheme: AppBarTheme(
        elevation: 8,

        color: Colors.black, //color of app bar

        iconTheme:
            IconThemeData(color: Colors.white), //style to icons on appbar
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 23), //style to title on appbar
      ),
    );
  }
}
