import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../APPLICATION/CORE/COLORS.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor:
        MaterialStatePropertyAll(kwhitecolor),
      ),
      icon: Icon(Icons.play_arrow,
          size: 25, color: kblackcolor),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kblackcolor),
        ),
      ),
    );
  }
}
