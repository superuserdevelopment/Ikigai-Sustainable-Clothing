import 'package:flutter/cupertino.dart';
import 'package:ikigai/pages/desktop/our_story_page.dart';
import 'package:ikigai/pages/mobile/our_story_page_mobile.dart';

class OurStoryPageWrapper extends StatefulWidget {
  const OurStoryPageWrapper({Key? key}) : super(key: key);

  @override
  State<OurStoryPageWrapper> createState() => _OurStoryPageWrapperState();
}

class _OurStoryPageWrapperState extends State<OurStoryPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 720.0
        ? const OurStoryMobile()
        : const OurStoryPage();
  }
}
