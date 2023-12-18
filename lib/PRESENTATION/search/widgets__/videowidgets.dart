import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../APPLICATION/CORE/COLORS.dart';
import '../../../APPLICATION/CORE/constants.dart';

class VideoWidgets extends StatelessWidget {
  const VideoWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            kNewHotImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_off,
                color: kwhitecolor,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
