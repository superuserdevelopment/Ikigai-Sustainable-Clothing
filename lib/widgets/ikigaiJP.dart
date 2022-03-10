import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ikigaiJP(
    {double size = 40.0,
    String font = "NotoSansJP",
    double letterSpacing = 7.0,
    Color color = Colors.black}) {
  return Text(
    '生き甲斐',
    style: TextStyle(
        fontFamily: font,
        fontSize: size,
        letterSpacing: letterSpacing,
        color: color),
  );
}
