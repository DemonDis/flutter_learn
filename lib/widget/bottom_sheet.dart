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
          maxChildSize: 0.7,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 24,
                  spreadRadius: 16,
                  color: Colors.red.withOpacity(0.2),
                )
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: ListaItems(scrollController),
                ),
              ),
            );
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
      padding: const EdgeInsets.all(11),
      controller: this.scrollController,
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) => Container(
        height: 50,
        color: Colors.blue[colorCodes[index]],
        child: Center(child: Text('Entry ${entries[index]}')),
      ),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
