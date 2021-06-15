import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SwipePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight: Radius.circular(20.0),
    );
    return Scaffold(
      body: SlidingUpPanel(
        backdropEnabled: true,
        borderRadius: radius,
        panelBuilder: (ScrollController sc) => _scrollingList(sc),
        body: Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
      ),
    );
  }

  Widget _scrollingList(ScrollController sc) {
    return ListView.builder(
      controller: sc,
      itemCount: 50,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          padding: const EdgeInsets.all(12.0),
          child: Text("$i"),
        );
      },
    );
  }
}
