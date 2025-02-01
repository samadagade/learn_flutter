import 'package:flutter/material.dart';
import 'package:flutter_catelog/utils/app_theme.dart';
import 'package:flutter_catelog/presentation/pages/home_page.dart';
import 'package:flutter_catelog/presentation/pages/login_page.dart';
import 'package:flutter_catelog/utils/my_navigations.dart';
import 'package:flutter_catelog/utils/my_routes.dart';

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
        
        //to set navigator observer of app
        navigatorObservers: [MyNavigatorObserver()], // Adding the custom observer
       
       //to set theme of app
        // themeMode: ThemeMode.system,  //checks theme of device and apply it
       // themeMode: ThemeMode.dark,   //applys dark theme below
        themeMode: ThemeMode.light,    //apply light theme below
        theme: MyTheme.lightTheme(),
        darkTheme: MyTheme.darkTheme(),
        //home: LoginPage(),

        //to set routes of app
        initialRoute: "/", //The initialRoute property defines which route the app should start with.

        routes: {
          "/": (context) => new LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        }

        //Scaffold widget also provide by material app
        );
  }
}
