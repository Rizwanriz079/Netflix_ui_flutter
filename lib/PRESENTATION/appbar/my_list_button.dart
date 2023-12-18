import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../APPLICATION/CORE/COLORS.dart';

class My_List_Button extends StatelessWidget {
  const My_List_Button({Key? key, required this.icon, required this.title, this.IconSize=30, this.textSize=18})
      : super(key: key);
  final IconData icon;
  final String title;
  final double IconSize;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
            color: kwhitecolor,
            size: IconSize),
        Text(
          title,
          style: TextStyle(
              fontSize: textSize,),
        ),
      ],
    );
  }
}
