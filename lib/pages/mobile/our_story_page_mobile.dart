import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikigai/pages/desktop/desktopHome.dart';
import 'package:ikigai/widgets/ikigaiLogo.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OurStoryMobile extends StatefulWidget {
  const OurStoryMobile({Key? key}) : super(key: key);

  @override
  State<OurStoryMobile> createState() => _OurStoryMobileState();
}

class _OurStoryMobileState extends State<OurStoryMobile> {
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
      body: ListView(
        children: [
          SizedBox(
            width: screenSize.width,
            height: 200.0,
            child:
                const AspectRatio(aspectRatio: 0.5, child: BackgroundVideo()),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Text(
                "Our Story",
                style: TextStyle(fontFamily: "NotoSerif", fontSize: 48.0),
              ),
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
                          fontSize: 100.0,
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
                      style: TextStyle(
                          fontSize: 24.0, fontStyle: FontStyle.italic),
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
                        fontSize: 100.0,
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
                      style: TextStyle(
                          fontSize: 24.0, fontStyle: FontStyle.italic),
                    ),
                    const Text(
                      "5 years",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 100.0,
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
                      style: TextStyle(
                          fontSize: 24.0, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text(
                      "What can you do about it?",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontFamily: "NotoSerif",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
