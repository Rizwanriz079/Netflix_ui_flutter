import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/COLORS.dart';
import 'package:untitled/PRESENTATION/search/widgets__/search_titles.dart';

import '../../../APPLICATION/CORE/constants.dart';

const imageurls =
    "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/vvObT0eIWGlArLQx3K5wZ0uT812.jpg";

class searchidle extends StatelessWidget {
  const searchidle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        search_titles(titles: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Topsearchtitle(),
              separatorBuilder: (context, index) => kheight20,
              itemCount: 10),
        )
      ],
    );
  }
}

class Topsearchtitle extends StatelessWidget {
  const Topsearchtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: Screenwidth * 0.35,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurls))),
        ),
        Expanded(
            child: Text(
          "MOvies",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: kwhitecolor),
        )),
        CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 20,
          child: CircleAvatar(
            backgroundColor: kblackcolor,
            radius: 18,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: kwhitecolor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
