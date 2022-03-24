import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';
import 'package:ikigai/widgets/itemCard.dart';
import 'package:ikigai/widgets/itemsCarousel.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:ikigai/models/item.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  final List _isHovering = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    Item itemTest = Item(
        "MXXX123563",
        "Oversized Fit Cotton T-shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/fa/c2/fac298b18bb28d11153894a6b812d9b1c3f378b8.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        20.99);
    Item itemTest1 = Item(
        "MXXX123563",
        "Oversized Fit Corduroy Overshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/09/70/0970adfc1f6d2efcf0d47366168c3eab144f5bdf.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        34.99);
    Item itemTest2 = Item(
        "MXXX123563",
        "Relaxed Fit Fleece Jacket",
        "https://lp2.hm.com/hmgoepprod?set=source[/75/24/75242b2557770b08724842c74192939825daae65.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        49.99);
    Item itemTest3 = Item(
        "MXXX123563",
        "2-pack Regular Fit Cotton Chino Shorts",
        "https://lp2.hm.com/hmgoepprod?set=source[/ef/49/ef4905a0d1417a14758020ca1159b0d3a7288e6e.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        49.99);
    Item itemTest4 = Item(
        "MXXX123563",
        "Regular Fit Cotton Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/69/df/69df76e908063b6b8aeaf70bad6c295c680a0cf7.jpg],origin[dam],category[men_shirts_casual],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        17.99);
    Item itemTest5 = Item(
        "MXXX123563",
        "Regular Fit Twill Cargo Pants",
        "https://lp2.hm.com/hmgoepprod?set=source[/e1/c1/e1c16fa71c3dfa3bd3e029a820a25ce0b483fb43.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        34.99);
    Item itemTest6 = Item(
        "MXXX123563",
        "Muscle Fit Piqué Polo Shirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/7f/78/7f78748ac9d5631b1e7b0079fe063010aa745db9.jpg],origin[dam],category[MEN_TSHIRTSTANKS_POLO],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        14.99);
    Item itemTest7 = Item(
        "MXXX123563",
        "Relaxed Fit Printed Hoodie",
        "https://lp2.hm.com/hmgoepprod?set=source[/b3/6c/b36c74120838934479ac5450e952be23fa59c6b3.jpg],origin[dam],category[],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        39.99);
    Item itemTest8 = Item(
        "MXXX123563",
        "Regular Fit Overshirt",
        "https://lp2.hm.com/hmgoepprod?set=source[/0d/0a/0d0a35af652d00bf06d93fe32de3f7044e477983.jpg],origin[dam],category[men_jacketscoats_shirtjackets],type[DESCRIPTIVESTILLLIFE],res[y],hmver[2]&call=url[file:/product/main]",
        0,
        24.99);
    List<Item> itemList = List.empty(growable: true);
    itemList.add(itemTest);
    itemList.add(itemTest1);
    itemList.add(itemTest2);
    itemList.add(itemTest3);
    itemList.add(itemTest4);
    itemList.add(itemTest5);
    itemList.add(itemTest6);
    itemList.add(itemTest7);
    itemList.add(itemTest8);
    itemList.shuffle();
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
                ikigaiLogo(size: 16),
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
      body: ListView(children: [
        Stack(
          children: [
            SizedBox(
              width: screenSize.width,
              height: 500.0,
              child:
                  const AspectRatio(aspectRatio: 0.5, child: BackgroundVideo()),
            ),
            Center(
                heightFactor: 1,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.60,
                      left: screenSize.width / 5,
                      right: screenSize.width / 5,
                    ),
                    child: Card(
                      elevation: 10.0,
                      color: Colors.white,
                      child: Container(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Men",
                                  style: TextStyle(
                                      fontSize: 36.0, fontFamily: "NotoSerif"),
                                ),
                                Text(
                                  "Women",
                                  style: TextStyle(
                                      fontSize: 36.0, fontFamily: "NotoSerif"),
                                ),
                                Text(
                                  "Kids",
                                  style: TextStyle(
                                      fontSize: 36.0, fontFamily: "NotoSerif"),
                                )
                              ]),
                        ),
                      ),
                    ))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Column(
            children: [
              const Text(
                "Our Picks",
                style: TextStyle(fontFamily: "NotoSerif", fontSize: 48.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ItemsCarousel(itemList, 400, 280),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Center(
            child: Text(
              "\"Our products are 100% sustainably sourced from recycled or re-purposed clothing\"",
              style: TextStyle(
                  fontFamily: "NotoSerif",
                  fontSize: 28.0,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "2,000",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 200.0,
                        letterSpacing: 10.0,
                        fontFamily: "NotoSerif"),
                  ),
                  const Text(
                    "gallons of water is required to produce a single pair of jeans",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0, fontFamily: "Circular"),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    "to put it in perspective, that is equal to",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
                  ),
                  // Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //         vertical: 20.0, horizontal: 30.0),
                  //     child: SizedBox(
                  //       width: 1000.0,
                  //       child: Image.asset(
                  //           "assets/images/raster/plastic-bottle-grid.png"),
                  //     )),
                  const Text(
                    "7,500",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 200.0,
                      fontFamily: "NotoSerif",
                      letterSpacing: 10.0,
                    ),
                  ),
                  const Text(
                    "bottles of drinking water",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0, fontFamily: "Circular"),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text(
                    "or",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    "5 years",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 200.0,
                      fontFamily: "NotoSerif",
                      letterSpacing: 10.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "worth of drinking water for an average person",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24.0, fontFamily: "Circular"),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  LoadingAnimationWidget.waveDots(
                      color: Colors.black, size: 200.0),
                  const Text(
                    "let that sink in...",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text(
                    "What can you do about it?",
                    style: TextStyle(
                      fontSize: 100.0,
                      fontFamily: "NotoSerif",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}

class BackgroundVideo extends StatefulWidget {
  const BackgroundVideo({Key? key}) : super(key: key);

  @override
  State<BackgroundVideo> createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  VideoPlayerController _controller =
      VideoPlayerController.asset("assets/videos/background.mp4");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ignore: avoid_single_cascade_in_expression_statements
    _controller = VideoPlayerController.asset("assets/videos/background.mp4")
      ..initialize().then((value) => {setState(() {})});
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}
