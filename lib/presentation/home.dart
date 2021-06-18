import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
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
      // body: UpPanel(),
      body: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                      title: Text('Start'),
                      onTap: () => showBarModalBottomSheet(
                            context: context,
                            builder: (context) => ModalInsideModal(),
                          )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
