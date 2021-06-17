import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _theme = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _theme,
      onChanged: (bool value) {
        setState(() {
          _theme = value;
        });
      },
    );
  }
}
