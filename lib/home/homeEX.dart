import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Что-нибудь выведем?',
            ),
            Text(
              'Текст',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Еще текст',
              style: Theme.of(context).textTheme.headline4,
            ),
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              // width: 200,
              // height: 200,
              fit: BoxFit.contain,
              color: Colors.blue,
              colorBlendMode: BlendMode.darken,
              semanticLabel: 'Foto test',
            ),
          ],
        ),
      ),
    );
  }
}
