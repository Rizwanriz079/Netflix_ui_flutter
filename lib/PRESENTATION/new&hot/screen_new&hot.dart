import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/COLORS.dart';
import 'package:untitled/PRESENTATION/new&hot/ComingSoon.dart';
import 'package:untitled/PRESENTATION/search/widgets__/videowidgets.dart';

import '../../APPLICATION/CORE/constants.dart';
import '../appbar/appbar.dart';
import '../appbar/my_list_button.dart';
import 'EveryonesWatching.dart';

class screen_newhot extends StatelessWidget {
  const screen_newhot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
            actions: [
              Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Container(
                color: Colors.blue,
                height: 25,
                width: 25,
              ),
              kwidth,
            ],
            bottom: TabBar(
              labelColor: kblackcolor,
              unselectedLabelColor: kwhitecolor,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator:
                  BoxDecoration(color: kwhitecolor, borderRadius: kradius30),
              tabs: [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => ComingSoon());
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (BuildContext context, index) => EveryonesWatching());
  }
}
