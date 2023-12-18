import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../APPLICATION/CORE/COLORS.dart';
import '../../APPLICATION/CORE/constants.dart';
import '../appbar/my_list_button.dart';
import '../search/widgets__/videowidgets.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work.",
          style: TextStyle(
            color: kgreycolor,
          ),
        ),
        kheight50,
        VideoWidgets(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            My_List_Button(
              icon: Icons.share,
              title: 'Share',
              IconSize: 25,
              textSize: 16,
            ),
            kwidth,
            My_List_Button(
              icon: CupertinoIcons.add,
              title: 'My List',
              IconSize: 25,
              textSize: 16,
            ),
            kwidth,
            My_List_Button(
              icon: CupertinoIcons.play_arrow_solid,
              title: 'Play',
              IconSize: 25,
              textSize: 16,
            ),
            kwidth,
          ],
        ),
      ],
    );
  }
}
