import 'package:flutter/cupertino.dart';
import 'package:ikigai/models/item.dart';
import 'package:ikigai/widgets/itemCard.dart';

Widget ItemsCarousel(List<Item> items, double height, double width) {
  List<Widget> itemCardsList = List.empty(growable: true);
  for (var item in items) {
    itemCardsList.add(itemCard(item, height, width));
  }
  return SizedBox(
    height: 470,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        children: itemCardsList,
      ),
    ),
  );
}
