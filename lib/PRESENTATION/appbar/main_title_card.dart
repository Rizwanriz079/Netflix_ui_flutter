import 'package:flutter/cupertino.dart';

import 'main_card.dart';
import 'main_title.dart';

class main_title_card extends StatelessWidget {
  final String title;
  const main_title_card({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        main_title(titles: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:
            List.generate(10, (index) => maincard()),

          ),
        ),
      ],
    );
  }
}
