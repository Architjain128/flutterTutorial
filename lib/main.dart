import 'package:flutter/material.dart';
import "./constant.dart";
import "./pages/homePage.dart";
import "./pages/statelessExample.dart";
import "./pages/statefullExample.dart";
import "./pages/navigation.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APPNAME,
      theme: ThemeData(
        primarySwatch: PRIMARY_THEME,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/navigation': (context) => NavigationPage(),
        '/stateless': (context) => StatelessPage(textFromProp: "Main Page"),
        '/statefull': (context) => StatefullPage(textFromProp: "Main Page"),
      },
      initialRoute: '/',
    );
  }
}
