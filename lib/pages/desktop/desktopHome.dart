import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:video_player/video_player.dart';

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
                            'Collaboration',
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
