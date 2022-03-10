import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ikigaiEN({
  double size = 40.0,
  String font = "NotoSerif",
  double letterSpacing = 7.0,
  Color color = Colors.black,
}) {
  return Text(
    'IKIGAI',
    style: TextStyle(
      fontFamily: font,
      fontSize: size,
      letterSpacing: letterSpacing,
      color: color,
    ),
  );
}
