import 'package:flutter/material.dart';
import 'package:untitled/PRESENTATION/downloads/screen_downloads.dart';
import 'package:untitled/PRESENTATION/home/screen.dart';
import 'package:untitled/PRESENTATION/new&hot/screen_new&hot.dart';
import 'package:untitled/PRESENTATION/search/screen_search.dart';

import 'PRESENTATION/fast_laugh/screen_fast_laugh.dart';
import 'bottom_navi.dart';

class first extends StatelessWidget {
   first({Key? key}) : super(key: key);

  final pages= [
    screen(),
    screen_newhot(),
    screenfast_laugh(),
    screen_search(),
    screendownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangenotifier, builder: (context,int index, _) {
        return pages[index];
        },),
      ),
      bottomNavigationBar: bottom_navi(),

    );
  }
}
