import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/widgets/ikigaiEN.dart';
import 'package:ikigai/widgets/ikigaiJP.dart';

Widget ikigaiLogo({double size = 18.0, Color color = Colors.black}) {
  return Container(
    child: Column(children: [
      ikigaiJP(size: size, color: color),
      ikigaiEN(size: size, color: color),
    ]),
  );
}
