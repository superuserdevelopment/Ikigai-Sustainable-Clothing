import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';

class OurStoryPage extends StatefulWidget {
  const OurStoryPage({Key? key}) : super(key: key);

  @override
  State<OurStoryPage> createState() => _OurStoryPageState();
}

class _OurStoryPageState extends State<OurStoryPage> {
  final List _isHovering = [false, false, false, false, false, false];

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
                          onTap: () {},
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
    );
  }
}
