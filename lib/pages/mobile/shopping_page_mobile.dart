import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/models/item.dart';
import 'package:ikigai/models/itemData.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';
import 'package:ikigai/widgets/itemsGrid.dart';

class ShoppingPageMobile extends StatefulWidget {
  const ShoppingPageMobile({Key? key}) : super(key: key);

  @override
  State<ShoppingPageMobile> createState() => _ShoppingPageMobileState();
}

class _ShoppingPageMobileState extends State<ShoppingPageMobile> {
  List<Item> itemList = List.empty(growable: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ItemData data = ItemData();
    itemList = data.itemList;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
        drawer: Drawer(
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
                leading: const Icon(CupertinoIcons.book_fill),
                title: const Text("Our Story"),
                onTap: () {
                  Navigator.pushNamed(context, "/ourstorypage");
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.money_dollar_circle),
                title: const Text("Sale"),
                onTap: () {
                  Navigator.pushNamed(context, "/shoppingpage");
                },
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.heart_circle_fill),
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
        ),
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 70),
          child: Container(
            color: Theme.of(context).backgroundColor.withOpacity(0.7),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.list_dash,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: (() {
                          Navigator.popAndPushNamed(context, "/home");
                        }),
                        child: ikigaiLogo(size: 16)),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
          child: ItemsGrid(itemList,
              (((screenSize.width / 6) * 5 - 60) / 280).floor(), 400, 280),
        ));
  }
}