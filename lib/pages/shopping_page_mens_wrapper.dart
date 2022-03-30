import 'package:flutter/material.dart';
import 'package:ikigai/pages/desktop/shopping_page.dart';
import 'package:ikigai/pages/desktop/shopping_page_mens.dart';
import 'package:ikigai/pages/mobile/shopping_page_mens_mobile.dart';

class ShoppingPageMensWrapper extends StatefulWidget {
  const ShoppingPageMensWrapper({Key? key}) : super(key: key);

  @override
  State<ShoppingPageMensWrapper> createState() =>
      _ShoppingPageMensWrapperState();
}

class _ShoppingPageMensWrapperState extends State<ShoppingPageMensWrapper> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 720.0
        ? const ShoppingPageMensMobile()
        : const ShoppingPageMens();
  }
}
