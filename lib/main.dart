import 'package:flutter/material.dart';
// import './part/RandomWords.dart';
import './presentation/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Startup Name Generator',
        theme: ThemeData(
          primaryColor: Colors.grey,
        ),
        home: MyHomePage(
          title: 'Flutter',
        ));
  }
}
