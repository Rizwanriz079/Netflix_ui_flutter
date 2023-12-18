import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/COLORS.dart';
import 'package:untitled/APPLICATION/CORE/constants.dart';
import 'package:untitled/APPLICATION/CORE/downloadsimage.dart';

import '../appbar/appbar.dart';

class screendownloads extends StatelessWidget {
  screendownloads({Key? key}) : super(key: key);
  final widgetList = [
    const section1(),
    section2(),
    const section3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: appbarwidget(title: 'Downloads')),
        body: ListView.separated(
          padding: EdgeInsets.all(12),
            itemBuilder: (context, index) => widgetList[index],
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemCount: widgetList.length));
  }
}

class section1 extends StatelessWidget {
  const section1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            kwidth,
            Icon(Icons.settings, color: kwhitecolor),
            kwidth,
            Text("Smart Downloads",style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ],
    );
  }
}

class section2 extends StatelessWidget {
  section2({Key? key}) : super(key: key);
  final imagesList = [
   "https://th.bing.com/th/id/OIP.kPXe-mDEdRAEL6G4TcwjYAHaLK?w=182&h=274&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.wuYyIQRl3te02XUdWScSDwHaKr?w=182&h=262&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP._kJGYMbxGnBj4kJ-X40-TgHaLH?w=182&h=273&c=7&r=0&o=5&dpr=1.3&pid=1.7",

  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kwhitecolor,
            fontSize: 27,
          ),
        ),
        kheight,
        Text(
          "we will download a personlised selection of\nmovies and shows for you, so there is\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade700,
                radius: size.width * 0.38,
              ),
              DownloadsImage(
                imageList: imagesList[0],
                margin: EdgeInsets.only(left: 170,top: 40),
                angle: 23,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImage(
                imageList: imagesList[1],
                margin: EdgeInsets.only(right: 170,top: 40),
                angle: -23,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImage(
                imageList: imagesList[2],
                radius: 10,
                margin: EdgeInsets.only(top: 40, bottom: 30),
                size: Size(size.width * 0.4, size.width * 0.6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class section3 extends StatelessWidget {
  const section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kbuttonblue,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kwhitecolor),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kbuttonwhite,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kblackcolor),
            ),
          ),
        ),
      ],
    );
  }
}
