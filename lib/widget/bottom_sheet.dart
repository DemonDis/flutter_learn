import 'package:flutter/material.dart';
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
              child: GlassmorphicContainer(
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
            ),
            Container(
              child: ListaItems(scrollController),
            ),
            Container()
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
final List<int> colorCodes = <int>[50, 100, 200, 300, 400, 500, 600, 700, 800];

class ListaItems extends StatelessWidget {
  final ScrollController scrollController;
  ListaItems(this.scrollController);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      controller: this.scrollController,
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 40,
          margin: EdgeInsets.only(left: 0, top: 0, right: 5, bottom: 5),
          decoration: BoxDecoration(
            color: Colors.blue[colorCodes[index]],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Stack(children: [
            Container(
              child: Center(child: Text('${entries[index]}')),
            ),
          ]),
        ),
      ),
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 15),
    );
  }
}

class HeadSheetModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
    );
  }
}
