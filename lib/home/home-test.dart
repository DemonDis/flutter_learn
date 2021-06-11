import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_view_widgets/flutter_view_widgets.dart';

Scaffold Home() {
  return Scaffold(
    // project://lib\home\home.pug#4,2
    appBar: AppBar(
      // project://lib\home\home.pug#5,3
      title:
          //-- TITLE ----------------------------------------------------------
          Container(
        // project://lib\home\home.pug#6,4
        child: Text(
          'Alligator.io',
        ),
      ),
    ),
  );
}
