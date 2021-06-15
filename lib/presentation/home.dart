import 'package:flutter/material.dart';
import './swipe.dart';
import './drawer.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SwipePanel(),
      drawer: SideDrawer(),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: const <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 45,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.message),
      //         title: Text('Messages'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
