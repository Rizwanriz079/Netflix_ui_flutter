import 'package:flutter/material.dart';
import 'package:untitled/PRESENTATION/fast_laugh/widgets/video_lists.dart';

class screenfast_laugh extends StatelessWidget {
  const screenfast_laugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
            return video_lists(index: index,);
          })

      )),
    );
  }
}
