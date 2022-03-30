import 'package:flutter/material.dart';
import 'package:ikigai/pages/desktop/shopping_page.dart';
import 'package:ikigai/pages/desktop/shopping_page_womens.dart';
import 'package:ikigai/pages/mobile/shopping_page_womens_mobile.dart';

class ShoppingPageWomensWrapper extends StatefulWidget {
  const ShoppingPageWomensWrapper({Key? key}) : super(key: key);

  @override
  State<ShoppingPageWomensWrapper> createState() =>
      _ShoppingPageWomensWrapperState();
}

class _ShoppingPageWomensWrapperState extends State<ShoppingPageWomensWrapper> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 720.0
        ? const ShoppingPageWomensMobile()
        : const ShoppingPageWomens();
  }
}
