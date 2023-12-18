import 'package:flutter/cupertino.dart';

import '../../APPLICATION/CORE/constants.dart';

class maincard extends StatelessWidget {
  const maincard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 150,
      decoration: BoxDecoration(borderRadius: kradius,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://th.bing.com/th/id/OIP.UQfIwBzGip5mAd_7dQg5TgHaK0?w=182&h=267&c=7&r=0&o=5&dpr=1.3&pid=1.7"))
      ),
    );
  }
}
