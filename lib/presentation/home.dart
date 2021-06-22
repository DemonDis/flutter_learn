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
          children: [
            Center(
              child: Positioned(
                bottom: MediaQuery.of(context).size.height * 0.3 - 70,
                left: 40,
                child: Container(
                  width: 100,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xFFBC1642),
                      Color(0xFFCB5AC6),
                    ]),
                  ),
                ),
              ),
            ),
            // BottomSheetModal()
            BottomSheetModal2()
          ],
        ));
  }
}
