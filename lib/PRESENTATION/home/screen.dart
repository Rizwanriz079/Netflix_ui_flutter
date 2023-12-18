import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/APPLICATION/CORE/constants.dart';
import 'package:untitled/PRESENTATION/appbar/main_card.dart';
import 'package:untitled/PRESENTATION/appbar/main_title.dart';
import 'package:untitled/PRESENTATION/appbar/main_title_card.dart';
import 'package:untitled/PRESENTATION/appbar/my_list_button.dart';
import 'package:untitled/PRESENTATION/home/number_card.dart';
import 'package:untitled/PRESENTATION/home/number_title_card.dart';

import '../../APPLICATION/CORE/COLORS.dart';
import '../appbar/backgroundmaincard.dart';
import '../appbar/playbutton.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
class screen extends StatelessWidget {
  const screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, bool value, Widget? child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction!;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    Background_MainCard(),
                    main_title_card(title: "Released in the past year"),
                    kheight,
                    main_title_card(title: "Trending Now"),
                    kheight,
                    NumberTitleCard(),
                    kheight,
                    main_title_card(title: "Tense Dramas"),
                    kheight,
                    main_title_card(title: "South Indian Cinema"),
                    kheight,
                  ],
                ),
                scrollNotifier.value== true?
                AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  width: double.infinity,
                  height: 90,
                  color: Colors.black.withOpacity(0.4),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.network("https://th.bing.com/th/id/OIP.uAlGk9taEx7DysKT3fLtSwHaEK?w=319&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",height: 60,width: 60,),
                          Spacer(),
                          Icon(Icons.cast,color: Colors.white,size: 30,),
                          kwidth,
                          Container(color: Colors.blue,height: 25,width: 25,),
                          kwidth,
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("TV Shows",style: kHometext,),
                          Text("Movies",style: kHometext,),
                          Text("Categories",style: kHometext,),

                        ],
                      ),
                    ],
                  ),
                ):kheight,
              ],
            ),
          );
        },
      ),
    );
  }
}