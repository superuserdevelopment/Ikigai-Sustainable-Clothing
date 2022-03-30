import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/models/item.dart';
import 'package:ikigai/models/itemData.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';
import 'package:ikigai/widgets/itemsCarousel.dart';
import 'package:ikigai/widgets/itemsGrid.dart';

class ShoppingPageMens extends StatefulWidget {
  const ShoppingPageMens({Key? key}) : super(key: key);

  @override
  State<ShoppingPageMens> createState() => _ShoppingPageStateMens();
}

class _ShoppingPageStateMens extends State<ShoppingPageMens> {
  final List _isHovering = [false, false, false, false, false, false];
  List _categoryCheck = [true, false, false];
  List _categoryCheckAdded = [false, false, false];
  List<Item> itemListMen = List.empty(growable: true);
  List<Item> itemListWomen = List.empty(growable: true);
  List<Item> itemListChildren = List.empty(growable: true);
  List<Item> itemList = List.empty(growable: true);
  String dropdownValue = "Relevance";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ItemData data = ItemData();
    itemListMen = data.itemListMen;
    itemListWomen = data.itemListWomen;
    itemListChildren = data.itemListChildren;
    itemList = itemListMen;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: Container(
          color: Theme.of(context).backgroundColor.withOpacity(0.7),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          hoverColor: Colors.white.withOpacity(0.0),
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              _isHovering[0] = value;
                            });
                          },
                          child: Text(
                            'Shop',
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? theme.primaryColor
                                    : Colors.black),
                          ),
                        ),
                        const SizedBox(height: 1),
                        // For showing an underline on hover
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 30,
                            color: theme.primaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          hoverColor: Colors.white.withOpacity(0.0),
                          onTap: () {
                            Navigator.pushNamed(context, "/ourstorypage");
                          },
                          onHover: (value) {
                            setState(() {
                              _isHovering[1] = value;
                            });
                          },
                          child: Text(
                            'Our Story',
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? theme.primaryColor
                                    : Colors.black),
                          ),
                        ),
                        const SizedBox(height: 1),
                        // For showing an underline on hover
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 30,
                            color: theme.primaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          hoverColor: Colors.white.withOpacity(0.0),
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              _isHovering[2] = value;
                            });
                          },
                          child: Text(
                            'Sale',
                            style: TextStyle(
                                color: _isHovering[2]
                                    ? theme.primaryColor
                                    : theme.highlightColor),
                          ),
                        ),
                        const SizedBox(height: 1),
                        // For showing an underline on hover
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 30,
                            color: theme.primaryColor,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
                InkWell(
                    onTap: (() {
                      Navigator.popAndPushNamed(context, "/home");
                    }),
                    child: ikigaiLogo(size: 16)),
                Expanded(
                    child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          size: 16.0,
                          color: _isHovering[3]
                              ? theme.primaryColor
                              : theme.highlightColor,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              hoverColor: Colors.white.withOpacity(0.0),
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  _isHovering[3] = value;
                                });
                              },
                              child: Text(
                                'Search',
                                style: TextStyle(
                                    color: _isHovering[3]
                                        ? theme.primaryColor
                                        : theme.highlightColor),
                              ),
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 2,
                                width: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          size: 16.0,
                          color: _isHovering[4]
                              ? theme.primaryColor
                              : Colors.black,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              hoverColor: Colors.white.withOpacity(0.0),
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  _isHovering[4] = value;
                                });
                              },
                              child: Text(
                                'Favorites',
                                style: TextStyle(
                                    color: _isHovering[4]
                                        ? theme.primaryColor
                                        : Colors.black),
                              ),
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[4],
                              child: Container(
                                height: 2,
                                width: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.profile_circled,
                          size: 16.0,
                          color: _isHovering[5]
                              ? theme.primaryColor
                              : Colors.black,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              hoverColor: Colors.white.withOpacity(0.0),
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  _isHovering[5] = value;
                                });
                              },
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                    color: _isHovering[5]
                                        ? theme.primaryColor
                                        : Colors.black),
                              ),
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[5],
                              child: Container(
                                height: 2,
                                width: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                )),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            width: screenSize.width / 6,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        value: _categoryCheck[0],
                        onChanged: (value) {
                          if (value == true) {
                            setState(() {
                              dropdownValue = "Relevance";
                              itemList.addAll(itemListMen);
                              itemList.shuffle();
                              _categoryCheck[0] = value;
                            });
                          } else {
                            setState(() {
                              dropdownValue = "Relevance";
                              itemList.removeWhere(
                                  (item) => item.getItemCategory() == 0);
                              _categoryCheck[0] = value;
                              itemList.shuffle();
                            });
                          }
                        },
                      ),
                      const Text(
                        "Men",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        value: _categoryCheck[1],
                        onChanged: (value) {
                          if (value == true) {
                            setState(() {
                              dropdownValue = "Relevance";
                              itemList.addAll(itemListWomen);
                              _categoryCheck[1] = value;
                              itemList.shuffle();
                            });
                          } else {
                            setState(() {
                              dropdownValue = "Relevance";
                              itemList.removeWhere(
                                  (item) => item.getItemCategory() == 1);
                              _categoryCheck[1] = value;
                              itemList.shuffle();
                            });
                          }
                        },
                      ),
                      const Text(
                        "Women",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        value: _categoryCheck[2],
                        onChanged: (value) {
                          if (value == true) {
                            setState(() {
                              dropdownValue = "Relevance";
                              itemList.addAll(itemListChildren);
                              _categoryCheck[2] = value;
                              itemList.shuffle();
                            });
                          } else {
                            setState(() {
                              dropdownValue = "Relevance";
                              itemList.removeWhere(
                                  (item) => item.getItemCategory() == 2);
                              _categoryCheck[2] = value;
                              itemList.shuffle();
                            });
                          }
                        },
                      ),
                      const Text(
                        "Children",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                        switch (newValue) {
                          case 'Relevance':
                            itemList.shuffle();
                            break;
                          case 'Price: Low to High':
                            itemList.sort((item1, item2) {
                              if (item1.getItemPrice() > item2.getItemPrice()) {
                                return 1;
                              } else {
                                return 0;
                              }
                            });
                            break;
                          case 'Price: High to Low':
                            itemList.sort((item1, item2) {
                              if (item1.getItemPrice() < item2.getItemPrice()) {
                                return 1;
                              } else {
                                return 0;
                              }
                            });
                            break;
                          case "Popularity":
                            itemList.shuffle();
                            break;
                        }
                      });
                    },
                    items: <String>[
                      'Relevance',
                      'Price: Low to High',
                      'Price: High to Low',
                      'Popularity'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
            child: ItemsGrid(itemList,
                (((screenSize.width / 6) * 5 - 60) / 280).floor(), 400, 280),
          )),
        ],
      ),
    );
  }
}
