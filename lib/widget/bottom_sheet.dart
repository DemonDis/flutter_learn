import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:glassmorphism/glassmorphism.dart';

class BottomSheetModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.8,
      builder: (context, scrollController) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
              ),
            ),
            GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              borderRadius: 1,
              blur: 10,
              alignment: Alignment.bottomCenter,
              border: 1,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF75035).withAlpha(55),
                    Color(0xFFffffff).withAlpha(45),
                  ],
                  stops: [
                    0.3,
                    1,
                  ]),
              borderGradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFF4579C5).withAlpha(100),
                    Color(0xFFFFFFF).withAlpha(55),
                    Color(0xFFF75035).withAlpha(10),
                  ],
                  stops: [
                    0.06,
                    0.95,
                    1
                  ]),
            ),
            ListaItems(scrollController),
          ],
        );
      },
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
