import 'package:flutter/cupertino.dart';
import 'package:ikigai/pages/desktop/our_story_page.dart';

class OurStoryPageWrapper extends StatefulWidget {
  const OurStoryPageWrapper({Key? key}) : super(key: key);

  @override
  State<OurStoryPageWrapper> createState() => _OurStoryPageWrapperState();
}

class _OurStoryPageWrapperState extends State<OurStoryPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return OurStoryPage();
  }
}
