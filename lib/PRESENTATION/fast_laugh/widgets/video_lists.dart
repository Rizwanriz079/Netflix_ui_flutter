import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/COLORS.dart';

class video_lists extends StatelessWidget {
  final int index;
  const video_lists({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: kwhitecolor,
                      size: 30,
                    ),
                  ),
                ),
                //right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.kPXe-mDEdRAEL6G4TcwjYAHaLK?w=182&h=274&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                      radius: 30),
                    ),
                    videoActions(Icons: Icons.emoji_emotions, title: "LOL"),
                    videoActions(Icons: Icons.add, title: "My List"),
                    videoActions(Icons: Icons.share, title: "Share"),
                    videoActions(Icons: Icons.play_arrow, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class videoActions extends StatelessWidget {
  final IconData Icons;
  final String title;
  const videoActions({Key? key, required this.Icons, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(
            Icons,
            color: kwhitecolor,
            size: 30,
          ),
          Text(title,
              style: TextStyle(
                color: kwhitecolor,
                fontSize: 16,
              )),
        ],
      ),
    );
  }
}
