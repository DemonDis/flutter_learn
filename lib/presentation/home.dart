import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/widget.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            ChangeThemeButtonWidget(),
          ],
        ),
        drawer: SideDrawer(),
        body: Stack(
          children: [BottomSheetModal()],
        ));
  }
}
