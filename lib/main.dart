import 'package:flutter/material.dart';
import './presentation/home.dart';
import './resources/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Startup Name Generator';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: MyHomePage(
          title: 'Flutter',
        ));
  }
}
