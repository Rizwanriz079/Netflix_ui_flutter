import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/PRESENTATION/appbar/playbutton.dart';

import '../../APPLICATION/CORE/constants.dart';
import 'my_list_button.dart';

class Background_MainCard extends StatelessWidget {
  const Background_MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                My_List_Button(
                  title: "My List",
                  icon: Icons.add,),
                PlayButton(),
                My_List_Button(icon: Icons.info_outline, title: "Info"),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
