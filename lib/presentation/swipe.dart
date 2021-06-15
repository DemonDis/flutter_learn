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
        body: Stack(
      children: <Widget>[
        SlidingUpPanel(
          backdropEnabled: true,
          borderRadius: radius,
          panel: Center(
            child: Text("This is the sliding Widget"),
          ),
        )
      ],
    ));
  }
}
