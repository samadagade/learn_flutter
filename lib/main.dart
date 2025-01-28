import 'package:flutter/material.dart';
import 'package:flutter_catelog/presentation/pages/home_page.dart';
import 'package:flutter_catelog/presentation/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //The runApp() function takes the given Widget and makes it the root of the widget tree
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //materialApp() / widgetApp() / cupertinoApp()

    // Flutter provides a number of widgets that help you build apps that follow Material Design.
    // A Material app starts with the MaterialApp widget, which builds a number of useful widgets at the root of your app.
    return MaterialApp(
        //theme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(
          brightness: Brightness.light,
          //fontFamily: GoogleFonts.lato().fontFamily,
        ),

        //home: LoginPage(),
        initialRoute: '/', //The initialRoute property defines which route the app should start with.

        routes: {
          "/": (context) => new LoginPage(),
          '/home': (context) => HomePage(),
        }
        
        //Scaffold widget also provide by material app
      );
  }
}
