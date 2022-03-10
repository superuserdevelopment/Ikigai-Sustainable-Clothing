import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/pages/desktop/desktopHome.dart';
import 'package:ikigai/widgets/ikigaiEN.dart';
import 'package:ikigai/widgets/ikigaiJP.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePage_State();
}

class HomePage_State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return HomePageDesktop();
  }
}
