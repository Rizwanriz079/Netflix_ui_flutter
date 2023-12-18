import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/COLORS.dart';

import '../../APPLICATION/CORE/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 200,
              width: 40,
            ),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: kradius,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.UQfIwBzGip5mAd_7dQg5TgHaK0?w=182&h=267&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: -24,
            left: 13,
            child: BorderedText(
                strokeWidth: 10.0,
                strokeColor: kwhitecolor,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 150,
                      decoration: TextDecoration.none,
                      decorationColor: Colors.black,
                      color: Colors.black),
                ),),),
      ],
    );
  }
}
