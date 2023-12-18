import 'dart:math';
import 'package:flutter/material.dart';

class DownloadsImage extends StatelessWidget {
  DownloadsImage(
      {required this.imageList, this.angle = 0, required this.margin, required this.size, this.radius= 15});
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          height: size.height, // Use size.height
          width: size.width, // Use size.width
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList),
            ),
          ),
        ),
      ),
    );
  }
}
