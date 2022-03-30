import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/models/item.dart';
import 'package:ikigai/models/itemData.dart';
import 'package:ikigai/pages/desktop/desktopHome.dart';
import 'package:ikigai/widgets/hamburger.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';
import 'package:ikigai/widgets/itemsCarousel.dart';
import 'package:video_player/video_player.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  List<Item> itemList = List.empty(growable: true);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ItemData data = ItemData();
    itemList = data.itemList;

    itemList.shuffle();
    itemList = itemList.sublist(0, 9);
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
      body: ListView(children: [
        Stack(
          children: [
            SizedBox(
              width: screenSize.width,
              height: 200.0,
              child:
                  const AspectRatio(aspectRatio: 0.5, child: BackgroundVideo()),
            ),
            Center(
                heightFactor: 1,
                child: Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.30,
                    ),
                    child: Card(
                      elevation: 10.0,
                      color: Colors.white,
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/shoppingpagemens");
                                  },
                                  child: const Text(
                                    "Men",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "NotoSerif"),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/shoppingpagewomens");
                                  },
                                  child: const Text(
                                    "Women",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "NotoSerif"),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/shoppingpagechildren");
                                  },
                                  child: const Text(
                                    "Kids",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "NotoSerif"),
                                  ),
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
                style: TextStyle(fontFamily: "NotoSerif", fontSize: 36.0),
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
