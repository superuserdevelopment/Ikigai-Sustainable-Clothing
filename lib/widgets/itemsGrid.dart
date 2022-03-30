import 'package:flutter/cupertino.dart';
import 'package:ikigai/models/item.dart';
import 'package:ikigai/widgets/itemCard.dart';

Widget ItemsGrid(List<Item> items, int rows, double height, double width) {
  List<Widget> itemCardsList = List.empty(growable: true);
  for (var item in items) {
    itemCardsList.add(itemCard(item, height, width));
  }
  return GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: rows,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: width / (height + 50)),
    scrollDirection: Axis.vertical,
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    children: itemCardsList,
  );
}
