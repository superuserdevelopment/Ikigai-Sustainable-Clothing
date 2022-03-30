import 'package:flutter/material.dart';
import 'package:ikigai/pages/desktop/shopping_page.dart';
import 'package:ikigai/pages/mobile/shopping_page_mobile.dart';

class ShoppingPageWrapper extends StatefulWidget {
  const ShoppingPageWrapper({Key? key}) : super(key: key);

  @override
  State<ShoppingPageWrapper> createState() => _ShoppingPageWrapperState();
}

class _ShoppingPageWrapperState extends State<ShoppingPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 720.0
        ? const ShoppingPageMobile()
        : const ShoppingPage();
  }
}
