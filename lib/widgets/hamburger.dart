// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        DrawerHeader(
          child: InkWell(
              onTap: (() {
                Navigator.popAndPushNamed(context, "/home");
              }),
              child: ikigaiLogo()),
        ),
        ListTile(
          leading: const Icon(CupertinoIcons.bag_fill),
          title: const Text("Shop"),
          onTap: () {
            Navigator.pushNamed(context, "/shoppingpage");
          },
        ),
        ListTile(
          leading: const Icon(CupertinoIcons.bag_fill),
          title: const Text("Shop"),
          onTap: () {
            Navigator.pushNamed(context, "/shoppingpage");
          },
        ),
        ListTile(
          leading: const Icon(CupertinoIcons.bag_fill),
          title: const Text("Our Story"),
          onTap: () {
            Navigator.pushNamed(context, "/ourstorypage");
          },
        ),
        ListTile(
          leading: const Icon(CupertinoIcons.bag_fill),
          title: const Text("Sale"),
          onTap: () {
            Navigator.pushNamed(context, "/shoppingpage");
          },
        ),
        ListTile(
          leading: const Icon(CupertinoIcons.bag_fill),
          title: const Text("Favorites"),
          onTap: () {
            Navigator.pushNamed(context, "/shoppingpage");
          },
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 0.1,
        ),
        const SizedBox(
          height: 100,
          child: Text('ikigai - v1.0.0'),
        ),
      ],
    ),
  );
}
