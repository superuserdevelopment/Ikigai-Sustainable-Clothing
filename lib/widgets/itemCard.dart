import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ikigai/models/item.dart';

Widget itemCard(Item item, double height, double width) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Card(
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.black,
          child: SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: SizedBox(
                    child: Image.network(
                      item.getItemImageURL(),
                      height: height - 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          item.getName(),
                          style: const TextStyle(
                              fontSize: 14.0, fontFamily: "NotoSansJP"),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      SizedBox(
                        width: width / 4,
                        child: Text("\$" + item.getItemPrice().toString(),
                            style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: "NotoSansJP",
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        )),
  );
}
