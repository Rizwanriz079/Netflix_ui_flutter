import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/constants.dart';
import 'package:untitled/PRESENTATION/search/widgets__/search_titles.dart';

const Imageurl ="https://th.bing.com/th/id/OIP.xi6JCjV8lRzq4_FX6z5McwHaK-?w=182&h=270&c=7&r=0&o=5&dpr=1.3&pid=1.7";
class search_results extends StatelessWidget {
  const search_results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        search_titles(titles: "MOvies & TV"),
        kheight,
        Expanded(
          child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1/1.3,
              children: List.generate(20, (index) {
            return MainCard();
          })),
        ),
      ],
    );
  }
}
class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(Imageurl),fit:BoxFit.cover ),
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}

