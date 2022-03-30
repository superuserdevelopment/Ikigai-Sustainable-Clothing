import 'package:flutter/material.dart';
import 'package:ikigai/pages/desktop/shopping_page.dart';
import 'package:ikigai/pages/desktop/shopping_page_children.dart';
import 'package:ikigai/pages/mobile/shopping_page_childrens_mobile.dart';

class ShoppingPageChildrenWrapper extends StatefulWidget {
  const ShoppingPageChildrenWrapper({Key? key}) : super(key: key);

  @override
  State<ShoppingPageChildrenWrapper> createState() =>
      _ShoppingPageChildrenWrapperState();
}

class _ShoppingPageChildrenWrapperState
    extends State<ShoppingPageChildrenWrapper> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 720.0
        ? const ShoppingPageChidlrensMobile()
        : const ShoppingPageChildren();
  }
}
