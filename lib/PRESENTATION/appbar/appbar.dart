import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/APPLICATION/CORE/constants.dart';

class appbarwidget extends StatelessWidget {
  const appbarwidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(title,
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
        Spacer(),
        Icon(Icons.cast,color: Colors.white,size: 30,),
        kwidth,
        Container(color: Colors.blue,height: 25,width: 25,),
        kwidth,
      ],
    );
  }
}
