import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../APPLICATION/CORE/COLORS.dart';
import '../../APPLICATION/CORE/constants.dart';
import '../appbar/my_list_button.dart';
import '../search/widgets__/videowidgets.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 18,
                  color: kgreycolor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidgets(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: -4,
                        fontSize: 35),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      My_List_Button(
                        icon: CupertinoIcons.bell,
                        title: 'Remind Me',
                        IconSize: 20,
                        textSize: 12,
                      ),
                      kwidth,
                      My_List_Button(
                        icon: CupertinoIcons.info,
                        title: 'Info',
                        IconSize: 20,
                        textSize: 12,
                      ),
                      kwidth,
                    ],
                  )
                ],
              ),
              kheight,
              Text("Coming on Friday"),
              kheight,
              Text(
                "tall Girl 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              Text(
                "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence - and her relationship - into a tailspain.",
                style: TextStyle(
                  color: kgreycolor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
