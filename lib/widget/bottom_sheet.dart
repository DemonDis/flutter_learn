import 'package:flutter/material.dart';
import 'dart:ui';

class BottomSheetModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.1,
          minChildSize: 0.1,
          maxChildSize: 1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.blue.withOpacity(0.8),
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 40.0,
                      sigmaY: 40.0,
                    ),
                    child: ListaItems(scrollController),
                  ),
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}

final List<String> entries = <String>[
  'House',
  'Fish',
  'Chicken',
  'Cow',
  'Bird',
  'Bear',
  'Bee',
  'Swift',
  'Pig'
];
final List<int> colorCodes = <int>[900, 800, 700, 600, 500, 400, 300, 200, 100];

class ListaItems extends StatelessWidget {
  final ScrollController scrollController;
  ListaItems(this.scrollController);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      controller: this.scrollController,
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('${entries[index]}')),
      ),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
